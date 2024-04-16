-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


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
 ('ravi','9986456694','ravi@gmail.com','ravi123'),
 ('harsha','9965255852','harsha@gmail.com','Harsha@123'),
 ('Shaid ','  7896427548','Shaid@gmail.com','Shaid@124'),
 ('brunda','9741834583','brunbhk@gmail.com','2317');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`carowners`
--

DROP TABLE IF EXISTS `carowners`;
CREATE TABLE `carowners` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `storemobileno` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`carowners`
--

/*!40000 ALTER TABLE `carowners` DISABLE KEYS */;
INSERT INTO `carowners` (`storeid`,`storename`,`address`,`storemobileno`,`password`,`email`,`status`) VALUES 
 (1,'kea motors ','bypass road shimoga','9538416666','Keamotors@123','Keamotors@gmail.com','Accept');
/*!40000 ALTER TABLE `carowners` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `productprice` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `showroomname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`cars`
--

/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`productid`,`showroomname`) VALUES 
 ('null','TVS Victor','79000','25','3.jpg','good vehicle',1,'kea motors ');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;


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
 ('Electric'),
 ('Motor Bike'),
 ('Scooter');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`categoryy`
--

DROP TABLE IF EXISTS `categoryy`;
CREATE TABLE `categoryy` (
  `categotyname` varchar(50) NOT NULL,
  PRIMARY KEY (`categotyname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`categoryy`
--

/*!40000 ALTER TABLE `categoryy` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoryy` ENABLE KEYS */;


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
 ('ravi','shimoga','nice shop to buy');
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
  `showroom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`orderlist`
--

/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`discount`,`orderid`,`showroom`) VALUES 
 ('Splender plus','83000','1','83000.0','harsha@gmail.com','harsha@gmail.com','credit card','960831708428063','752',NULL,21,'Mythri Hero'),
 ('TVS Victor','95000','1','95000.0','ravi@gmail.com','ravi@gmail.com','credit card','60720064438','041',NULL,22,'TVS Sandesh motors'),
 ('Passion pro ','79000','1','79000.0','gandhi nagar shimoga','harsha@gmail.com','credit card','365798663457','097',NULL,24,'Mythri Hero');
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;


--
-- Table structure for table `gfgc_shorooms`.`orderlistcar`
--

DROP TABLE IF EXISTS `orderlistcar`;
CREATE TABLE `orderlistcar` (
  `productname` varchar(50) DEFAULT NULL,
  `productcast` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `totalamount` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cardholdername` varchar(50) DEFAULT NULL,
  `cardtype` varchar(50) DEFAULT NULL,
  `cardnum` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `showroom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`orderlistcar`
--

/*!40000 ALTER TABLE `orderlistcar` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderlistcar` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_shorooms`.`preowned`
--

/*!40000 ALTER TABLE `preowned` DISABLE KEYS */;
INSERT INTO `preowned` (`vehiclename`,`price`,`model`,`image`,`description`,`id`,`cphone`) VALUES 
 ('rx bike','50000','2000','yamaha-RX100-1-1-1068x629.jpg','nice bike good condition',4,'9965255852'),
 ('splender plus','38000','2014','splender.jpeg','nice bike good condition',6,'9965255852'),
 ('pulser 220','71000','2019','2021-Bajaj-Pulsar-220F-Matte-Black.jpg','fast and furious ',7,'  7896427548'),
 ('Mythri Hero','50000','50000','1597218244_tvs-ntorq-125-race-edition.jpg','good vehicle',8,'9965255852');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`productid`,`showroomname`) VALUES 
 ('Motor Bike','TVSVictor','95000','22','Victor.jpg','Nice Bike New Model',10,'TVS Sandesh motors'),
 ('Motor Bike','Splender plus','83000','10','profile1629641135.png','New model nice colors',11,'Mythri Hero'),
 ('Motor Bike','TVS Star city plus','85000','23','TVS-Star-City-Plus-Special-Edition-1200x900.jpg','nice bike new updated model',12,'TVS Sandesh motors'),
 ('Scooter','TVS Jupiter','95000','25','tvs-jupiter-classic-500x500.jpg','new look heavy mileage bike',13,'TVS Sandesh motors'),
 ('Scooter','TVS NTorq','125000','25','1597218244_tvs-ntorq-125-race-edition.jpg','new design and decent quality',14,'TVS Sandesh motors'),
 ('Motor Bike','TVS Radeon','79000','14','radion.jpg','newly launched bike',15,'TVS Sandesh motors'),
 ('Scooter','burgman street bike','130000','6','burgman-street-125-right-front-three-quarter.jpeg','designed for updated riders ',16,'Mythri Hero'),
 ('Motor Bike','HF Deluxe bike','83000','30','hero-hf-deluxe-kick-spoke-bsvi20200602163327.jpg','good mileage and new design',17,'Mythri Hero');
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`productid`,`showroomname`) VALUES 
 ('Motor Bike','Passion pro ','79000','22','hero-passion-pro-front12.jpeg','well designed updated bike',19,'Mythri Hero'),
 ('Motor Bike','Pulser RS 200','200000','4','bajaj-pulsar-rs200-bike-500x500.png','heavy bike for long drivers',20,'Supreme Bajaj'),
 ('Motor Bike','Platina','70000','28','bajaj platina.jpg','heavy mileage bike',21,'Supreme Bajaj'),
 ('Motor Bike','Himalayan','100000','27','himalayan.jpg','hard riding bike ',22,'Royal Enfield Appolo'),
 ('Motor Bike','Thunderbird','130000','23','royalenfield-thunderbird.jpg','well optional bike',23,'Royal Enfield Appolo'),
 ('Scooter','Access 125','80000','30','new-acess-125-500x500.jpg','heavy mileage bike to ride',24,'Shruthi motors(suzuki)');
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_shorooms`.`showroom`
--

/*!40000 ALTER TABLE `showroom` DISABLE KEYS */;
INSERT INTO `showroom` (`storeid`,`storename`,`address`,`storemobileno`,`password`,`email`,`status`) VALUES 
 (9,'TVS Sandesh motors','NT Road Milaghatta shimoga','8182260437','Sandesh@123','Sandeshmotors@gmail.com','Accept'),
 (13,'Supreme Bajaj','Sheshadripuram shimoga','8105000999','Supreme@123','supremebajaj@gmail.com','Accept'),
 (12,'Mythri Hero','Shankarmutt road Shimoga','9289922635','Mythri@123','mythrihero@gmail.com','Accept'),
 (14,'Royal Enfield Appolo','Near Hole busstop shimoga','8879451364','Royal@123','royalappolo@gmail.com','Accept'),
 (15,'Shruthi motors(suzuki)','Honnalli Road shimoga','8047486085','Shruthi@123','shruthimotors@gmail.com','Accept');
/*!40000 ALTER TABLE `showroom` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
