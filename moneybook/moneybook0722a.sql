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
-- Table structure for table `gongji`
--

DROP TABLE IF EXISTS `gongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `gubun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongji`
--

LOCK TABLES `gongji` WRITE;
/*!40000 ALTER TABLE `gongji` DISABLE KEYS */;
INSERT INTO `gongji` VALUES (1,'[긴급] 공지사항입니다.','문의 게시판 작업 중입니다.','2022-07-22',1);
/*!40000 ALTER TABLE `gongji` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch`
--

LOCK TABLES `lunch` WRITE;
/*!40000 ALTER TABLE `lunch` DISABLE KEYS */;
INSERT INTO `lunch` VALUES (7,'소가네짬뽕','째애앰뽕','류동헌','10480','경기 고양시 덕양구 흥도로415번길 46','',11,'2022-07-21','37.6404037008102','126.848542091379'),(9,'맥도날드','맥스파이시 상하이버거','김석근','10414','경기 고양시 일산동구 중앙로 1190','1층',10,'2022-07-21','37.6530724995104','126.77757865372'),(10,'김밥천국','돈까스,제육덮밥,우동,라면,김밥,떡볶이,잔치국수 등등','김석근','10414','경기 고양시 일산동구 장백로 184','1층 구석진곳 김밥천국',3,'2022-07-21','37.6512768694197','126.777162351475'),(11,'seok밥상','김치3종 세트','김석근','10305','경기 고양시 일산동구 풍동 1265','어딜까용',3,'2022-07-21','37.6688805401977','126.801240578557'),(12,'스시존','A세트,B세트','000','10420','경기 고양시 일산동구 백석로71번길 14-4','',2,'2022-07-21','37.6474003296133','126.785635433212'),(13,'회원가입 기능 넣어줘요','순대국','멋쟁이 류동헌','10340','경기 고양시 일산서구 탄중로 447','',3,'2022-07-21','37.6869994960365','126.776115995391'),(14,'호호','서브웨이','전략가 김규호','10537','경기 고양시 덕양구 흥도로 10','',4,'2022-07-21','37.611575360542','126.870792173736'),(15,'빽다방','원조커피 존맛탱','닉네임뭘로하지','10414','경기 고양시 일산동구 중앙로 1189','1층',3,'2022-07-22','37.6527926721441','126.776824545778'),(17,'여기 뭐하는 곳인가요?','ㅎ','익명','06280','서울 강남구 남부순환로 2909','',8,'2022-07-22','37.4921823099018','127.057410744328'),(18,'사이트가 개판이네','김치만 키움','trr456','10305','경기 고양시 일산동구 풍동 1265','어딜까용',31,'2022-07-22','37.6688805401977','126.801240578557'),(19,'↓↓ 모함하지 마십쇼.!','억울합니다 !!!','닉네임뭘로하지','10414','경기 고양시 일산동구 마두동 765-1','억울합니다',9,'2022-07-22','37.6523242492627','126.778208451626'),(20,'내가 만들어도 이것보다 잘 만들겠다','우우우','석근2','12420','경기 가평군 가평읍 경춘로 2179','~',10,'2022-07-22','37.8202487895657','127.512903437139'),(21,'석근2 누구냐','내가 너 반드시 찾는다','관리자','10480','경기 고양시 덕양구 흥도로415번길 46','',11,'2022-07-22','37.6404037008102','126.848542091379');
/*!40000 ALTER TABLE `lunch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunch_comment`
--

DROP TABLE IF EXISTS `lunch_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lunch_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch_comment`
--

LOCK TABLES `lunch_comment` WRITE;
/*!40000 ALTER TABLE `lunch_comment` DISABLE KEYS */;
INSERT INTO `lunch_comment` VALUES (2,'admin','관리자','그러게',18,'2022-07-22'),(4,'webmaster','웹마스터','그러게22',18,'2022-07-22'),(5,'pjk','꾹이','ㅋㅋㅋ맥날 좋죠',9,'2022-07-22'),(7,'pjk','꾹이','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ',18,'2022-07-22'),(8,'pjk','꾹이','ㅎ',18,'2022-07-22');
/*!40000 ALTER TABLE `lunch_comment` ENABLE KEYS */;
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
  `phone` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','관리자','dndb','','',0,'2022-07-21',NULL),(2,'webmaster','웹마스터','akttmxk','','',0,'2022-07-21',NULL),(3,'trr321','닉네임뭘로하지','123456','','',0,'2022-07-22',NULL),(4,'ryu','trr456','8111','','',0,'2022-07-22',NULL),(5,'who','익명','123789','','',0,'2022-07-22',NULL),(6,'tjrrmsWkd123','석근2','123456','','',0,'2022-07-22',NULL),(7,'fuck','이건회수','1122','','',0,'2022-07-22','01012341234'),(8,'pjk','꾹이','9213','','',0,'2022-07-22','');
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

-- Dump completed on 2022-07-22 18:24:13
