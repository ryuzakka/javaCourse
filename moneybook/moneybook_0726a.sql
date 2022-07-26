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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `userid` char(20) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'자유게시판 테스트','글쓰기 테스트 입니다.','admin','관리자',3,'2022-07-26',1);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongji`
--

LOCK TABLES `gongji` WRITE;
/*!40000 ALTER TABLE `gongji` DISABLE KEYS */;
INSERT INTO `gongji` VALUES (1,'[긴급] 공지사항입니다.','문의 게시판 작업 중입니다.','2022-07-26',0),(2,'문의게시판 개설 완료','문의 게시판이 새로 개설됐습니다.','2022-07-26',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch`
--

LOCK TABLES `lunch` WRITE;
/*!40000 ALTER TABLE `lunch` DISABLE KEYS */;
INSERT INTO `lunch` VALUES (7,'소가네짬뽕','째애앰뽕','류동헌','10480','경기 고양시 덕양구 흥도로415번길 46','',11,'2022-07-21','37.6404037008102','126.848542091379'),(9,'맥도날드','맥스파이시 상하이버거','김석근','10414','경기 고양시 일산동구 중앙로 1190','1층',11,'2022-07-21','37.6530724995104','126.77757865372'),(10,'김밥천국','돈까스,제육덮밥,우동,라면,김밥,떡볶이,잔치국수 등등','김석근','10414','경기 고양시 일산동구 장백로 184','1층 구석진곳 김밥천국',3,'2022-07-21','37.6512768694197','126.777162351475'),(11,'seok밥상','김치3종 세트','김석근','10305','경기 고양시 일산동구 풍동 1265','어딜까용',3,'2022-07-21','37.6688805401977','126.801240578557'),(12,'스시존','A세트,B세트','000','10420','경기 고양시 일산동구 백석로71번길 14-4','',2,'2022-07-21','37.6474003296133','126.785635433212'),(13,'회원가입 기능 넣어줘요','순대국','멋쟁이 류동헌','10340','경기 고양시 일산서구 탄중로 447','',3,'2022-07-21','37.6869994960365','126.776115995391'),(14,'호호','서브웨이','전략가 김규호','10537','경기 고양시 덕양구 흥도로 10','',4,'2022-07-21','37.611575360542','126.870792173736'),(15,'빽다방','원조커피 존맛탱','닉네임뭘로하지','10414','경기 고양시 일산동구 중앙로 1189','1층',3,'2022-07-22','37.6527926721441','126.776824545778'),(17,'여기 뭐하는 곳인가요?','ㅎ','익명','06280','서울 강남구 남부순환로 2909','',8,'2022-07-22','37.4921823099018','127.057410744328'),(18,'사이트가 개판이네','김치만 키움','trr456','10305','경기 고양시 일산동구 풍동 1265','어딜까용',33,'2022-07-22','37.6688805401977','126.801240578557'),(19,'↓↓ 모함하지 마십쇼.!','억울합니다 !!!','닉네임뭘로하지','10414','경기 고양시 일산동구 마두동 765-1','억울합니다',9,'2022-07-22','37.6523242492627','126.778208451626'),(20,'내가 만들어도 이것보다 잘 만들겠다','우우우','석근2','12420','경기 가평군 가평읍 경춘로 2179','~',10,'2022-07-22','37.8202487895657','127.512903437139'),(21,'석근2 누구냐','내가 너 반드시 찾는다','관리자','10480','경기 고양시 덕양구 흥도로415번길 46','',12,'2022-07-22','37.6404037008102','126.848542091379'),(22,'오늘도 왔습니다~','흐흐','꾹이','63534','제주특별자치도 서귀포시 가가로 14','',4,'2022-07-25','33.2700064530738','126.375422332008'),(23,'그대를만나고~~라면','갈비','닉네임뭘로하지','10406','경기 고양시 일산동구 율천로7번길 7-9','1층 모래네 갈비',1,'2022-07-25','37.666752342975','126.783287333762');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch_comment`
--

LOCK TABLES `lunch_comment` WRITE;
/*!40000 ALTER TABLE `lunch_comment` DISABLE KEYS */;
INSERT INTO `lunch_comment` VALUES (2,'admin','관리자','그러게',18,'2022-07-22'),(4,'webmaster','웹마스터','그러게22',18,'2022-07-22'),(5,'pjk','꾹이','ㅋㅋㅋ맥날 좋죠',9,'2022-07-22'),(7,'pjk','꾹이','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ',18,'2022-07-22');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','관리자','dndb','','',0,'2022-07-21',NULL),(2,'webmaster','웹마스터','akttmxk','','',0,'2022-07-21',NULL),(3,'trr321','닉네임뭘로하지','123456',NULL,'www.facebook.com',0,'2022-07-22','01056209397'),(4,'ryu','trr456','8111','','',0,'2022-07-22',NULL),(5,'who','익명','123789','','',0,'2022-07-22',NULL),(6,'tjrrmsWkd123','석근2','123456','','',0,'2022-07-22',NULL),(7,'fuck','이건회수','1122','','',0,'2022-07-22','01012341234'),(8,'pjk','꾹이','9213','','',0,'2022-07-22',''),(9,'hong','홍길동','113','','',0,'2022-07-26','0319948111');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `name` char(10) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  `grp` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'맛집리스트는 무엇인가요?','guest','모죵~~~?!!','123',28,'2022-07-26',1,1,1),(4,'여기에다 문의하면 되나요?','guest','맞나여','123',5,'2022-07-26',2,1,1),(5,'Re: 맛집리스트는 무엇인가요?','관리자','맛집리스트는 내가 아는 맛집을 소개하고 공유하는 게시판 입니다.\r\n\r\n많은 추천 부탁 드립니다~',NULL,2,'2022-07-26',1,2,2),(6,'Re: 여기에다 문의하면 되나요?','관리자','네 맞습니다.\r\n\r\n여기에 문의해주시면 됩니다.',NULL,3,'2022-07-26',2,2,2);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-26 17:38:15
