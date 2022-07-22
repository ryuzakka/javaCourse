-- MySQL dump 10.19  Distrib 10.3.35-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: moneybook
-- ------------------------------------------------------
-- Server version	10.3.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lunch`
--

DROP TABLE IF EXISTS `lunch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(40) DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `regname` char(20) DEFAULT NULL,
  `zip` char(6) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  `lat` char(20) DEFAULT NULL,
  `lng` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch`
--

LOCK TABLES `lunch` WRITE;
/*!40000 ALTER TABLE `lunch` DISABLE KEYS */;
INSERT INTO `lunch` VALUES (7,'소가네짬뽕','째애앰뽕','류동헌','10480','경기 고양시 덕양구 흥도로415번길 46','',8,'2022-07-21','37.6404037008102','126.848542091379'),(9,'맥도날드','맥스파이시 상하이버거','김석근','10414','경기 고양시 일산동구 중앙로 1190','1층',3,'2022-07-21','37.6530724995104','126.77757865372'),(10,'김밥천국','돈까스,제육덮밥,우동,라면,김밥,떡볶이,잔치국수 등등','김석근','10414','경기 고양시 일산동구 장백로 184','1층 구석진곳 김밥천국',1,'2022-07-21','37.6512768694197','126.777162351475'),(11,'seok밥상','김치3종 세트','김석근','10305','경기 고양시 일산동구 풍동 1265','어딜까용',1,'2022-07-21','37.6688805401977','126.801240578557'),(12,'스시존','A세트,B세트','000','10420','경기 고양시 일산동구 백석로71번길 14-4','',0,'2022-07-21','37.6474003296133','126.785635433212'),(13,'회원가입 기능 넣어줘요','순대국','멋쟁이 류동헌','10340','경기 고양시 일산서구 탄중로 447','',0,'2022-07-21','37.6869994960365','126.776115995391'),(14,'호호','서브웨이','전략가 김규호','10537','경기 고양시 덕양구 흥도로 10','',0,'2022-07-21','37.611575360542','126.870792173736');
/*!40000 ALTER TABLE `lunch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `blog` text DEFAULT NULL,
  `sns` text DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 18:32:32
