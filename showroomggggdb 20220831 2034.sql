-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gfgc_shorooms
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_shorooms;
USE gfgc_shorooms;

--
-- Table structure for table `gfgc_shorooms`.`adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`adminuser`
--

/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`buyer`
--

/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` (`name`,`phone`,`email`,`password`) VALUES 
 ('ravi','9999999999','ravi@gmail.com','ravi123'),
 ('harsha','9965255852','harsha@gmail.com','harsha123');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`categoryname`) VALUES 
 ('scooter'),
 ('Two wheeler');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`place`,`feedback`) VALUES 
 ('ravi@gmail.com',NULL,'the college is good'),
 ('ravi','shimoga','nice shop to buy'),
 ('ravish','shimoga','sdjkfgs');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `productname` varchar(50) DEFAULT NULL,
  `productCast` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `totalAmount` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cardHolderName` varchar(50) DEFAULT NULL,
  `cardtype` varchar(50) DEFAULT NULL,
  `cardNum` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `orderid` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`orderlist`
--

/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`discount`,`orderid`) VALUES 
 ('hp','30000','1','30000.0','sfgsdfgdg','ravi','credit card','534534534534534','566','60.000003999999997',1),
 ('maruthi','500000','1','500000.0','shimoga','ragvasjgfjg','credit card','38573953758357385','343','1000.00006',2),
 ('maruthi','500000','1','500000.0','','','credit card','','','1000.00006',3),
 ('samsung','40000.0','1','40000.0','jdskdjfksjd','fvjdfjdjf','credit card','35354354354354','123','40.0',4),
 ('samsung','40000.0','1','40000.0','jdskdjfksjd','fvjdfjdjf','credit card','35354354354354','123','40.0',5),
 ('hp','30000.0','1','30000.0','dfgsdfgsdfg','sdfgdsf','credit card','34523452345234','123','60.000004',6),
 ('hp','30000.0','1','30000.0','dfgsdfgsdfg','sdfgdsf','credit card','34523452345234','123','60.000004',7),
 ('hp','30000.0','1','30000.0','cxvbxcvbxcvb','ravi','debit card','23423423423','232','60.000004',8),
 ('hp','30000.0','1','30000.0','jayanagara shimoga','ravisjh','debit card','124578965214785','554','60.000004',9);
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`discount`,`orderid`) VALUES 
 ('Nail Shampoo','3000','1','3000.0','shimoga','ravishkumar','debit card','1234567890123456','412','9.0',10),
 ('Nail Shampoo','3000','1','3000.0','shimoga','ravishkumar','debit card','1234567890123456','412','9.0',11),
 ('Nail Shampoo','3000','1','3000.0','shimoga','savi@gmail.com','debit card','1234567890123456','123','9.0',12),
 ('pulser','120000','1','120000.0','','ravi@gmail.com','credit card','12345678901234','123',NULL,13),
 ('pulser','120000','1','120000.0','shimoga','harsha@gmail.com','credit card','1234567890123345','123',NULL,14),
 ('pulser','120000','1','120000.0','shimoga','harsha@gmail.com','credit card','123456789089','789',NULL,15);
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`preowned`
--

DROP TABLE IF EXISTS `preowned`;
CREATE TABLE `preowned` (
  `vehiclename` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cphone` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`preowned`
--

/*!40000 ALTER TABLE `preowned` DISABLE KEYS */;
INSERT INTO `preowned` (`vehiclename`,`price`,`model`,`image`,`description`,`id`,`cphone`) VALUES 
 ('passion','20000','2020','about.jpg','nice vehilce',3,'9999999999');
/*!40000 ALTER TABLE `preowned` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `productprice` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `showroomname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`productid`,`showroomname`) VALUES 
 ('Two wheeler','pulser','120000','47','about.jpg','150 cc bike',8,'shiva'),
 ('Two wheeler','twister 100cc','90000','30','mybike.jpg','nice bike to ride',9,'shiva');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`showroom`
--

DROP TABLE IF EXISTS `showroom`;
CREATE TABLE `showroom` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `storemobileno` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`storeid`),
  UNIQUE KEY `storemobileno` (`storemobileno`),
  UNIQUE KEY `storename` (`storename`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`showroom`
--

/*!40000 ALTER TABLE `showroom` DISABLE KEYS */;
INSERT INTO `showroom` (`storeid`,`storename`,`address`,`storemobileno`,`password`,`email`,`status`) VALUES 
 (8,'shiva','shimoga','99858511100','Shiva@123','shiva@gmail.com','Accept');
/*!40000 ALTER TABLE `showroom` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
