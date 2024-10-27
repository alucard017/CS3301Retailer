-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Retailer
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Brand` (
  `Brand_ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Vendor_ID` int DEFAULT NULL,
  PRIMARY KEY (`Brand_ID`),
  KEY `Vendor_ID` (`Vendor_ID`),
  CONSTRAINT `Brand_ibfk_1` FOREIGN KEY (`Vendor_ID`) REFERENCES `Vendor` (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES (1,'Tata',1),(2,'Reliance',2),(3,'Future',3);
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Brand_Product_Type`
--

DROP TABLE IF EXISTS `Brand_Product_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Brand_Product_Type` (
  `Brand_ID` int NOT NULL,
  `Product_Type_ID` int NOT NULL,
  PRIMARY KEY (`Brand_ID`,`Product_Type_ID`),
  KEY `Product_Type_ID` (`Product_Type_ID`),
  CONSTRAINT `Brand_Product_Type_ibfk_1` FOREIGN KEY (`Brand_ID`) REFERENCES `Brand` (`Brand_ID`),
  CONSTRAINT `Brand_Product_Type_ibfk_2` FOREIGN KEY (`Product_Type_ID`) REFERENCES `Product_Type` (`Product_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand_Product_Type`
--

LOCK TABLES `Brand_Product_Type` WRITE;
/*!40000 ALTER TABLE `Brand_Product_Type` DISABLE KEYS */;
INSERT INTO `Brand_Product_Type` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `Brand_Product_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Customer_ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Loyalty_Program` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Rahul Sharma','rahul.sharma@example.com','9876543210','Gold'),(2,'Priya Singh','priya.singh@example.com','9876543211','Silver'),(3,'Amit Kumar','amit.kumar@example.com','9876543212','Bronze'),(4,'Sneha Gupta','sneha.gupta@example.com','9876543213','Gold'),(5,'Rohit Verma','rohit.verma@example.com','9876543214','Silver');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_Store`
--

DROP TABLE IF EXISTS `Customer_Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Store` (
  `Customer_ID` int NOT NULL,
  `Store_ID` int NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Store_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `Customer_Store_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `Customer_Store_ibfk_2` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_Store`
--

LOCK TABLES `Customer_Store` WRITE;
/*!40000 ALTER TABLE `Customer_Store` DISABLE KEYS */;
INSERT INTO `Customer_Store` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `Customer_Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `Inventory_ID` int NOT NULL,
  `Store_ID` int DEFAULT NULL,
  `Product_ID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Inventory_ID`),
  KEY `Store_ID` (`Store_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `Inventory_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`),
  CONSTRAINT `Inventory_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`UPC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (1,1,101,50),(2,2,102,30),(3,3,103,20),(4,4,104,10),(5,5,105,5);
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Product`
--

DROP TABLE IF EXISTS `Order_Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Product` (
  `Order_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Order_ID`,`Product_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `Order_Product_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `Purchase_Cart` (`Order_ID`),
  CONSTRAINT `Order_Product_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`UPC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Product`
--

LOCK TABLES `Order_Product` WRITE;
/*!40000 ALTER TABLE `Order_Product` DISABLE KEYS */;
INSERT INTO `Order_Product` VALUES (1,101,2),(2,102,1),(3,103,3),(4,104,5),(5,105,2);
/*!40000 ALTER TABLE `Order_Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `UPC` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `Brand_ID` int DEFAULT NULL,
  `Product_Type_ID` int DEFAULT NULL,
  `Vendor_ID` int DEFAULT NULL,
  PRIMARY KEY (`UPC`),
  KEY `Brand_ID` (`Brand_ID`),
  KEY `Product_Type_ID` (`Product_Type_ID`),
  KEY `Vendor_ID` (`Vendor_ID`),
  CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`Brand_ID`) REFERENCES `Brand` (`Brand_ID`),
  CONSTRAINT `Product_ibfk_2` FOREIGN KEY (`Product_Type_ID`) REFERENCES `Product_Type` (`Product_Type_ID`),
  CONSTRAINT `Product_ibfk_3` FOREIGN KEY (`Vendor_ID`) REFERENCES `Vendor` (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (101,'Milk',100.00,'1kg',1,1,1),(102,'Smartphone',1500.00,'Medium',2,2,2),(103,'Shirt',500.00,'Large',3,3,3),(104,'Coke',40.00,'500ml',1,1,1),(105,'Pepsi',40.00,'500ml',2,1,2);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product_Type`
--

DROP TABLE IF EXISTS `Product_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_Type` (
  `Product_Type_ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Product_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product_Type`
--

LOCK TABLES `Product_Type` WRITE;
/*!40000 ALTER TABLE `Product_Type` DISABLE KEYS */;
INSERT INTO `Product_Type` VALUES (1,'Groceries'),(2,'Electronics'),(3,'Clothing');
/*!40000 ALTER TABLE `Product_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Purchase_Cart`
--

DROP TABLE IF EXISTS `Purchase_Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Purchase_Cart` (
  `Order_ID` int NOT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Store_ID` int DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `Purchase_Cart_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`Customer_ID`),
  CONSTRAINT `Purchase_Cart_ibfk_2` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Purchase_Cart`
--

LOCK TABLES `Purchase_Cart` WRITE;
/*!40000 ALTER TABLE `Purchase_Cart` DISABLE KEYS */;
INSERT INTO `Purchase_Cart` VALUES (1,1,1,'2024-10-27'),(2,2,2,'2024-10-28'),(3,3,3,'2024-10-29'),(4,4,4,'2024-10-30'),(5,5,5,'2024-10-31');
/*!40000 ALTER TABLE `Purchase_Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Store` (
  `Store_ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Open_Hours` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES (1,'SuperMart','123 Market Street, Delhi','8 AM - 10 PM','Delhi'),(2,'BigBazaar','456 Mall Road, Mumbai','9 AM - 11 PM','Maharashtra'),(3,'Reliance Fresh','789 High Street, Bangalore','7 AM - 9 PM','Karnataka'),(4,'More Supermarket','123 Hill Road, Kolkata','8 AM - 10 PM','West Bengal'),(5,'Dmart','456 Park Avenue, Chennai','9 AM - 11 PM','Tamil Nadu');
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor`
--

DROP TABLE IF EXISTS `Vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendor` (
  `Vendor_ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Contact_Info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Vendor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor`
--

LOCK TABLES `Vendor` WRITE;
/*!40000 ALTER TABLE `Vendor` DISABLE KEYS */;
INSERT INTO `Vendor` VALUES (1,'Tata Distributors','Tata Road, Mumbai','tata@example.com'),(2,'Reliance Supply Co.','Reliance Avenue, Delhi','reliance@example.com'),(3,'Future Group','Mall Road, Bangalore','futuregroup@example.com');
/*!40000 ALTER TABLE `Vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor_Store`
--

DROP TABLE IF EXISTS `Vendor_Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendor_Store` (
  `Vendor_ID` int NOT NULL,
  `Store_ID` int NOT NULL,
  PRIMARY KEY (`Vendor_ID`,`Store_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `Vendor_Store_ibfk_1` FOREIGN KEY (`Vendor_ID`) REFERENCES `Vendor` (`Vendor_ID`),
  CONSTRAINT `Vendor_Store_ibfk_2` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor_Store`
--

LOCK TABLES `Vendor_Store` WRITE;
/*!40000 ALTER TABLE `Vendor_Store` DISABLE KEYS */;
INSERT INTO `Vendor_Store` VALUES (1,1),(2,2),(3,3),(1,4),(2,5);
/*!40000 ALTER TABLE `Vendor_Store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 23:17:07
