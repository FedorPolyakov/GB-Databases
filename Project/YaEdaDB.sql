-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: yandex_eda
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'burgers','2020-05-03 14:46:02'),(2,'Japan food','2020-05-03 14:46:02'),(3,'American Food','2020-05-03 14:46:02');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier`
--

DROP TABLE IF EXISTS `courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `rating_courier` enum('1','2','3','4','5') DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier`
--

LOCK TABLES `courier` WRITE;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` VALUES (1,'Ivan','4','+79990001115','2020-05-03 14:46:03','2020-05-03 14:46:03'),(2,'Kirill','3','+79880201115','2020-05-03 14:46:03','2020-05-03 14:46:03');
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_orders` AS SELECT 
 1 AS `name`,
 1 AS `restaurant`,
 1 AS `amount_orders_from_customer_in_restaurant`,
 1 AS `amount_orders_in_resraurant`,
 1 AS `percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthday_at` date DEFAULT NULL,
  `ad_email` tinyint(1) DEFAULT NULL,
  `ad_sms` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `customers_email_uq` (`email`),
  UNIQUE KEY `customers_phone_uq` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Fedor','fpolyakov@mail.ru','+79851488491','male','1995-01-24',1,1,'2020-05-03 14:46:00','2020-05-03 14:46:00'),(2,'Alena','akluchnikova@yandex.ru','+79851110021','female','1997-07-21',0,1,'2020-05-03 14:46:00','2020-05-03 14:46:00'),(3,'Max','mpokrov@yandex.ru','+79659210281','male','1991-03-11',0,1,'2020-05-03 14:46:00','2020-05-03 14:46:00'),(4,'Egor','e123@gmail.com','+79122011355','male','1989-05-07',1,0,'2020-05-03 14:46:00','2020-05-03 14:46:00'),(5,'Maria','marlalala@mail.com','+79292456355','female','2000-08-19',0,0,'2020-05-03 14:46:00','2020-05-03 14:46:00');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_addresses`
--

DROP TABLE IF EXISTS `customers_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_addresses`
--

LOCK TABLES `customers_addresses` WRITE;
/*!40000 ALTER TABLE `customers_addresses` DISABLE KEYS */;
INSERT INTO `customers_addresses` VALUES (1,'Fryazino'),(2,'St.Sloboda'),(3,'Moscow'),(4,'Minsk'),(5,'Moscow'),(6,'Tver'),(7,'St.Peterutg'),(8,'Moscow'),(9,'Fryazino');
/*!40000 ALTER TABLE `customers_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dishes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `rest_id` int unsigned NOT NULL,
  `description` text,
  `recipe` text,
  `price` int unsigned NOT NULL,
  `weight` int unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` VALUES (1,'gamburger',1,'tasty','bread, catlet',40,80,'2020-05-03 14:46:02','2020-05-03 14:46:02'),(2,'cheeseburger',1,'very tasty','bread, catlet, chees',50,85,'2020-05-03 14:46:02','2020-05-03 14:46:02'),(3,'filadelfia roll',2,'mmmm','rice, fish',300,200,'2020-05-03 14:46:02','2020-05-03 14:46:02');
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishes_category`
--

DROP TABLE IF EXISTS `dishes_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dishes_category` (
  `dish_id` int unsigned NOT NULL,
  `cat_id` int unsigned NOT NULL,
  PRIMARY KEY (`dish_id`,`cat_id`),
  KEY `dishes_category_cat_id_fk` (`cat_id`),
  CONSTRAINT `dishes_category_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  CONSTRAINT `dishes_category_dish_id_fk` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes_category`
--

LOCK TABLES `dishes_category` WRITE;
/*!40000 ALTER TABLE `dishes_category` DISABLE KEYS */;
INSERT INTO `dishes_category` VALUES (1,1),(2,1),(3,2),(1,3),(2,3);
/*!40000 ALTER TABLE `dishes_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `in_order`
--

DROP TABLE IF EXISTS `in_order`;
/*!50001 DROP VIEW IF EXISTS `in_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `in_order` AS SELECT 
 1 AS `id_order`,
 1 AS `order_date`,
 1 AS `customer_name`,
 1 AS `restaurant_name`,
 1 AS `dish_name`,
 1 AS `dish_quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cost` float unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `customer_address_id` int unsigned NOT NULL,
  `rest_id` int unsigned NOT NULL,
  `courier_id` int unsigned NOT NULL,
  `payment_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `delivery_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_fk` (`customer_id`),
  KEY `orders_rest_id_fk` (`rest_id`),
  KEY `orders_customer_address_id_fk` (`customer_address_id`),
  KEY `orders_courier_id_fk` (`courier_id`),
  KEY `orders_payment_id_fk` (`payment_id`),
  CONSTRAINT `orders_courier_id_fk` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`id`),
  CONSTRAINT `orders_customer_address_id_fk` FOREIGN KEY (`customer_address_id`) REFERENCES `customers_addresses` (`id`),
  CONSTRAINT `orders_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `orders_payment_id_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  CONSTRAINT `orders_rest_id_fk` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,750,500,1,1,1,2,3,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(2,1000,1200,1,2,2,1,2,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(3,100,220,2,5,2,1,4,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(4,200,420,3,7,1,1,1,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(5,1400,2000,4,1,2,1,3,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(6,700,600,4,7,1,2,2,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(7,350,100,5,2,2,2,4,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(8,2240,1700,4,9,2,2,1,'2020-05-03 14:46:04','2020-05-03 14:46:04'),(9,670,2200,5,1,2,2,4,'2020-05-03 14:46:04','2020-05-03 14:46:04');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_not_null_orders_insert` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
IF ( 
NEW.customer_id IS NULL
OR NEW.rest_id IS NULL
OR NEW.cost IS NULL
OR NEW.weight IS NULL
OR NEW.created_at IS NULL
OR NEW.customer_address_id IS NULL
OR NEW.payment_id IS NULL
OR NEW.courier_id IS NULL
) THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT canceled';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `orders_customers_addresses_insert` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
INSERT INTO orders_customers_addresses SET order_id = NEW.id
 , customer_id = New.customer_id
 , customer_address_id = NEW.customer_address_id
 , created_at = New.created_at;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders_customers_addresses`
--

DROP TABLE IF EXISTS `orders_customers_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_customers_addresses` (
  `order_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `customer_address_id` int unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`order_id`,`customer_id`,`customer_address_id`,`created_at`),
  CONSTRAINT `orders_customers_addresses_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_customers_addresses`
--

LOCK TABLES `orders_customers_addresses` WRITE;
/*!40000 ALTER TABLE `orders_customers_addresses` DISABLE KEYS */;
INSERT INTO `orders_customers_addresses` VALUES (1,1,1,'2020-05-03 14:46:04'),(2,1,2,'2020-05-03 14:46:04'),(3,2,5,'2020-05-03 14:46:04'),(4,3,7,'2020-05-03 14:46:04'),(5,4,1,'2020-05-03 14:46:04'),(6,4,7,'2020-05-03 14:46:04'),(7,5,2,'2020-05-03 14:46:04'),(8,4,9,'2020-05-03 14:46:04'),(9,5,1,'2020-05-03 14:46:04');
/*!40000 ALTER TABLE `orders_customers_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_dishes`
--

DROP TABLE IF EXISTS `orders_dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_dishes` (
  `order_id` int unsigned NOT NULL,
  `dish_id` int unsigned NOT NULL,
  `quantity_dish` int unsigned NOT NULL,
  PRIMARY KEY (`order_id`,`dish_id`),
  KEY `orders_dishes_dish_id_fk` (`dish_id`),
  CONSTRAINT `orders_dishes_dish_id_fk` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`),
  CONSTRAINT `orders_dishes_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_dishes`
--

LOCK TABLES `orders_dishes` WRITE;
/*!40000 ALTER TABLE `orders_dishes` DISABLE KEYS */;
INSERT INTO `orders_dishes` VALUES (1,1,4),(1,2,2),(2,1,1),(3,3,10),(4,1,1),(4,2,5),(5,1,8),(5,2,5),(6,3,2),(7,3,7),(8,1,5),(8,2,1),(9,3,5);
/*!40000 ALTER TABLE `orders_dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_name` enum('cash and cary','online by card','courier and cash','courier and card') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'cash and cary'),(2,'online by card'),(3,'courier and cash'),(4,'courier and card');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remoutless`
--

DROP TABLE IF EXISTS `remoutless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remoutless` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `remoutless_name` enum('very hot','hot','warm','cold','very cold') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remoutless`
--

LOCK TABLES `remoutless` WRITE;
/*!40000 ALTER TABLE `remoutless` DISABLE KEYS */;
INSERT INTO `remoutless` VALUES (1,'very hot'),(2,'hot'),(3,'warm'),(4,'cold'),(5,'very cold');
/*!40000 ALTER TABLE `remoutless` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_addresses`
--

DROP TABLE IF EXISTS `rest_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rest_id` int unsigned NOT NULL,
  `adress` text NOT NULL,
  `longitude` decimal(4,2) NOT NULL,
  `latitude` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rest_addresses_rest_id_fk` (`rest_id`),
  CONSTRAINT `rest_addresses_rest_id_fk` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_addresses`
--

LOCK TABLES `rest_addresses` WRITE;
/*!40000 ALTER TABLE `rest_addresses` DISABLE KEYS */;
INSERT INTO `rest_addresses` VALUES (1,1,'Fryazino',37.01,55.11),(2,2,'Moscow',39.23,56.04),(3,1,'St.Peterburg',43.01,59.11);
/*!40000 ALTER TABLE `rest_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_category`
--

DROP TABLE IF EXISTS `rest_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_category` (
  `rest_id` int unsigned NOT NULL,
  `cat_id` int unsigned NOT NULL,
  PRIMARY KEY (`rest_id`,`cat_id`),
  KEY `rest_category_cat_id_fk` (`cat_id`),
  CONSTRAINT `rest_category_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  CONSTRAINT `rest_category_rest_id_fk` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_category`
--

LOCK TABLES `rest_category` WRITE;
/*!40000 ALTER TABLE `rest_category` DISABLE KEYS */;
INSERT INTO `rest_category` VALUES (1,1),(2,2),(1,3);
/*!40000 ALTER TABLE `rest_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_dishes`
--

DROP TABLE IF EXISTS `rest_dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_dishes` (
  `rest_id` int unsigned NOT NULL,
  `dish_id` int unsigned NOT NULL,
  PRIMARY KEY (`rest_id`,`dish_id`),
  KEY `rest_dishes_dish_id_fk` (`dish_id`),
  CONSTRAINT `rest_dishes_dish_id_fk` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`),
  CONSTRAINT `rest_dishes_rest_id_fk` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_dishes`
--

LOCK TABLES `rest_dishes` WRITE;
/*!40000 ALTER TABLE `rest_dishes` DISABLE KEYS */;
INSERT INTO `rest_dishes` VALUES (1,1),(1,2),(2,3);
/*!40000 ALTER TABLE `rest_dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `rest_rating` enum('1','2','3','4','5') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'McDonalds','4','2020-05-03 14:46:01','2020-05-03 14:46:01'),(2,'Tanuki','5','2020-05-03 14:46:01','2020-05-03 14:46:01');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_orders`
--

/*!50001 DROP VIEW IF EXISTS `customer_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_orders` (`name`,`restaurant`,`amount_orders_from_customer_in_restaurant`,`amount_orders_in_resraurant`,`percent`) AS select `A`.`name` AS `name`,`A`.`restaurant` AS `restaurant`,`A`.`amount_orders_from_customer_in_restaurant` AS `amount_orders_from_customer_in_restaurant`,`A`.`amount_orders_in_resraurant` AS `amount_orders_in_resraurant`,((`A`.`amount_orders_from_customer_in_restaurant` / `A`.`amount_orders_in_resraurant`) * 100) AS `%` from (select distinct `c`.`first_name` AS `name`,`r`.`name` AS `restaurant`,count(0) OVER (PARTITION BY `o`.`customer_id`,`o`.`rest_id` )  AS `amount_orders_from_customer_in_restaurant`,count(0) OVER (PARTITION BY `o`.`rest_id` )  AS `amount_orders_in_resraurant` from ((`orders` `o` left join `customers` `c` on((`o`.`customer_id` = `c`.`id`))) left join `restaurants` `r` on((`o`.`rest_id` = `r`.`id`)))) `A` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `in_order`
--

/*!50001 DROP VIEW IF EXISTS `in_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `in_order` (`id_order`,`order_date`,`customer_name`,`restaurant_name`,`dish_name`,`dish_quantity`) AS select `orders`.`id` AS `id`,`orders`.`created_at` AS `created_at`,`customers`.`first_name` AS `first_name`,`restaurants`.`name` AS `name`,`dishes`.`name` AS `name`,`orders_dishes`.`quantity_dish` AS `quantity_dish` from ((((`orders` left join `customers` on((`orders`.`customer_id` = `customers`.`id`))) left join `restaurants` on((`orders`.`rest_id` = `restaurants`.`id`))) left join `orders_dishes` on((`orders`.`id` = `orders_dishes`.`order_id`))) left join `dishes` on((`dishes`.`id` = `orders_dishes`.`dish_id`))) order by `orders`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-03 19:41:39
