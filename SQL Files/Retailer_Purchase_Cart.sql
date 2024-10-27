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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-27 23:15:09
