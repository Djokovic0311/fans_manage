-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: parking
-- ------------------------------------------------------
-- Server version	5.5.60

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `card_id` varchar(50) NOT NULL,
  `seat_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_gender` varchar(1) NOT NULL,
  `user_addr` varchar(50) NOT NULL,
  `car_num` varchar(50) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('20150521190631','20150521182303','李小龙','男','香语区A栋3-105','川A12345'),('20150521192828','20150521182304','黎明','男','香语区A栋3-106','川A12346'),('20150521192854','20150521182305','王林','女','香语区A栋3-107','川A12348'),('20150521192915','20150521182306','龙飞','男','香语区A栋3-108','川A12349'),('20150521193056','20150521182307','汪苏泷','男','香语区A栋3-109','川A12350'),('20200624182138','20150521182313','ajdecrazy','男','805','123456'),('20200624203618','20200624181414','ajdecrazy','女','12','123456'),('20200624204454','20200624202640','ajde','男','24','123'),('20200625174826','20200624203508','ajdecrazy','男','805','123'),('20200625231638','20200625174726','Jelena','男','12','1'),('20200626114131','20200625231235','nole','男','12','12345');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixed`
--

DROP TABLE IF EXISTS `fixed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixed` (
  `fixed_id` varchar(50) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  PRIMARY KEY (`fixed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixed`
--

LOCK TABLES `fixed` WRITE;
/*!40000 ALTER TABLE `fixed` DISABLE KEYS */;
INSERT INTO `fixed` VALUES ('20200624185707','20200624182138','2020-06-24','18:57:07','2020-06-24','20:31:44'),('20200624204510','20200624204454','2020-06-24','20:45:10','2020-06-24','20:46:17'),('20200624205424','20200624203618','2020-06-24','20:54:24','2020-06-24','20:54:28'),('20200624205527','20200624182138','2020-06-24','20:55:27','2020-06-24','20:55:30'),('20200624223823','20200624203618','2020-06-24','22:38:23','2020-06-24','22:38:27'),('20200626114221','20200624182138','2020-06-26','11:42:21','2020-06-26','11:42:36');
/*!40000 ALTER TABLE `fixed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` varchar(50) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('r001','超级管理员'),('r002','普通管理员'),('r003','普通用户');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_id` varchar(50) NOT NULL,
  `seat_num` varchar(50) NOT NULL,
  `seat_section` varchar(50) NOT NULL,
  `seat_state` int(11) NOT NULL,
  `seat_tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('20200624203508','202006250202','B',1,'小主持人'),('20200625174726','202006250201','B',1,' 小主持人'),('20200625231235','202006250101','A',0,'主持人'),('20200625231550','202006250301','B',0,'铁粉');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `temp_id` varchar(50) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `car_num` varchar(50) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `temp_money` float DEFAULT NULL,
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES ('20200624202935','1234567','123456','2020-06-24','20:29:35','2020-06-24','20:43:23',3),('20200624205553','12345678','12','2020-06-24','20:55:53','2020-06-24','20:55:58',3),('20200625180825','12345','23','2020-06-25','18:08:25',NULL,NULL,0),('20200626114325','10000','123456789','2020-06-26','11:43:25','2020-06-26','11:43:47',3);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `user_pwd` varchar(20) NOT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin_01','r002','Rafeal','纳达尔','123123','13900000008'),('admin_03','r002','jelena','123','123123','13900000004'),('superviser','r001','Novak','德约科维奇','123456','13900000001'),('usual','r003','Andy','穆雷','123123','13900000000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_card`
--

DROP TABLE IF EXISTS `v_card`;
/*!50001 DROP VIEW IF EXISTS `v_card`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_card` AS SELECT 
 1 AS `card_id`,
 1 AS `seat_id`,
 1 AS `user_name`,
 1 AS `user_gender`,
 1 AS `user_addr`,
 1 AS `car_num`,
 1 AS `seat_num`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_fixed`
--

DROP TABLE IF EXISTS `v_fixed`;
/*!50001 DROP VIEW IF EXISTS `v_fixed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_fixed` AS SELECT 
 1 AS `fixed_id`,
 1 AS `card_id`,
 1 AS `entry_date`,
 1 AS `entry_time`,
 1 AS `out_date`,
 1 AS `out_time`,
 1 AS `car_num`,
 1 AS `user_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_user`
--

DROP TABLE IF EXISTS `v_user`;
/*!50001 DROP VIEW IF EXISTS `v_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_user` AS SELECT 
 1 AS `user_id`,
 1 AS `role_id`,
 1 AS `user_name`,
 1 AS `real_name`,
 1 AS `user_pwd`,
 1 AS `user_phone`,
 1 AS `role_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'parking'
--

--
-- Dumping routines for database 'parking'
--

--
-- Final view structure for view `v_card`
--

/*!50001 DROP VIEW IF EXISTS `v_card`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_card` AS (select `card`.`card_id` AS `card_id`,`card`.`seat_id` AS `seat_id`,`card`.`user_name` AS `user_name`,`card`.`user_gender` AS `user_gender`,`card`.`user_addr` AS `user_addr`,`card`.`car_num` AS `car_num`,`seat`.`seat_num` AS `seat_num` from (`card` join `seat` on((`card`.`seat_id` = `seat`.`seat_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_fixed`
--

/*!50001 DROP VIEW IF EXISTS `v_fixed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_fixed` AS (select `fixed`.`fixed_id` AS `fixed_id`,`fixed`.`card_id` AS `card_id`,`fixed`.`entry_date` AS `entry_date`,`fixed`.`entry_time` AS `entry_time`,`fixed`.`out_date` AS `out_date`,`fixed`.`out_time` AS `out_time`,`card`.`car_num` AS `car_num`,`card`.`user_name` AS `user_name` from (`fixed` join `card` on((`fixed`.`card_id` = `card`.`card_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_user`
--

/*!50001 DROP VIEW IF EXISTS `v_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_user` AS (select `user`.`user_id` AS `user_id`,`user`.`role_id` AS `role_id`,`user`.`user_name` AS `user_name`,`user`.`real_name` AS `real_name`,`user`.`user_pwd` AS `user_pwd`,`user`.`user_phone` AS `user_phone`,`role`.`role_name` AS `role_name` from (`user` join `role` on((`user`.`role_id` = `role`.`role_id`)))) */;
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

-- Dump completed on 2020-07-17 22:43:48
