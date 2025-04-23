-- MySQL dump 10.13  Distrib 9.2.0, for macos15.2 (arm64)
--
-- Host: localhost    Database: transactions
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `main_account_info`
--

DROP TABLE IF EXISTS `main_account_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_account_info` (
  `user_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_account_info`
--

LOCK TABLES `main_account_info` WRITE;
/*!40000 ALTER TABLE `main_account_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_account_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_trans`
--

DROP TABLE IF EXISTS `recurring_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_trans` (
  `recurring_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `next_due_date` date DEFAULT NULL,
  `decription` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_trans`
--

LOCK TABLES `recurring_trans` WRITE;
/*!40000 ALTER TABLE `recurring_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurring_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions_info`
--

DROP TABLE IF EXISTS `transactions_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions_info` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` text,
  `transaction_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions_info`
--

LOCK TABLES `transactions_info` WRITE;
/*!40000 ALTER TABLE `transactions_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09 12:25:15
