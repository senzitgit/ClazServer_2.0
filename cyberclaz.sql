CREATE DATABASE  IF NOT EXISTS `cyberclaz` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cyberclaz`;
-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: cyberclaz
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addassignment`
--

DROP TABLE IF EXISTS `addassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addassignment` (
  `ASSIGNMENTID` int(11) NOT NULL,
  `SUBJECTID` varchar(255) DEFAULT NULL,
  `TOPIC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ASSIGNMENTID`),
  KEY `FKC78B6A2ED1AB1F8E` (`SUBJECTID`),
  CONSTRAINT `FKC78B6A2ED1AB1F8E` FOREIGN KEY (`SUBJECTID`) REFERENCES `subject` (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addassignment`
--

LOCK TABLES `addassignment` WRITE;
/*!40000 ALTER TABLE `addassignment` DISABLE KEYS */;
INSERT INTO `addassignment` VALUES (21,'01','Trigonometry'),(22,'03','Organic Chemistry'),(23,'01','gsfdg'),(24,'03','dfhdfh'),(25,'02','gfjfgj'),(26,'02','fdhdhdh'),(27,'01','dfhdfh'),(28,'01','dfhdfh'),(29,'01','dfhdfh'),(30,'01','dfhdfh'),(31,'01','dfhdfhhdh'),(32,'04','rtur'),(33,'02','dfhdfh'),(34,'08','Digital Signal Processing'),(35,'01','DB Testing'),(36,'01','test1'),(37,'01','test2'),(38,'01','new entry'),(39,'01','test123'),(40,'02','lines and curves'),(41,'02','lines '),(46,'02','wires'),(47,'01','asd sg'),(48,'01','@fdg'),(51,'07','mechanics'),(53,'10','12345678901234567894567890123456789999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999'),(54,'09','abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefbjkkklllllllllllllllllllllllllll;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;'),(55,'10','abcdefghijklmnopqrstuvwxyzabc'),(56,'10','10255555555555555555'),(57,'04','topview'),(58,'01','dfdf'),(59,'01','gjhgh'),(60,'02','wereer'),(61,'02','f'),(62,'01','xc'),(63,'02','df'),(64,'01','sd'),(65,'02','ss'),(66,'01','gh'),(67,'01','csd'),(68,'01','x'),(69,'01','xxx'),(70,'03','xxx'),(71,'03','ss'),(72,'02','kl'),(73,'02','sss'),(74,'04','x'),(75,'02','zzz'),(76,'05','sd'),(77,'02','xx'),(78,'03','j'),(79,'02','tf'),(80,'03','dc'),(81,'03','sfsf'),(82,'01','dfd'),(83,'06','kjhkyhj'),(84,'06','kjhkyhjhkhg'),(85,'02','dddddddddddd'),(86,'03','cszf'),(87,'03','cbgg'),(88,'01','ccbfg'),(89,'03','xvvv'),(90,'01','cfhfh'),(91,'04','njnjh'),(92,'02','gdgff'),(93,'02','sfff'),(94,'02','wwwwwwwwwwwwwww'),(95,'01','1234'),(96,'01','algebra'),(97,'04','freehand sketching'),(98,'10','Basics of Workshop'),(99,'03','hgeuhw'),(100,'01','bhghj'),(101,'01','wetee');
/*!40000 ALTER TABLE `addassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignedtask`
--

DROP TABLE IF EXISTS `assignedtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignedtask` (
  `TASKID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `SUBJECTID` varchar(255) DEFAULT NULL,
  `ASSIGNMENTTOPIC` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TASKID`),
  KEY `FK1CD19453750868B6` (`USERID`),
  KEY `FK1CD19453D1AB1F8E` (`SUBJECTID`),
  CONSTRAINT `FK1CD19453750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK1CD19453D1AB1F8E` FOREIGN KEY (`SUBJECTID`) REFERENCES `subject` (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignedtask`
--

LOCK TABLES `assignedtask` WRITE;
/*!40000 ALTER TABLE `assignedtask` DISABLE KEYS */;
INSERT INTO `assignedtask` VALUES (1,'abid','01','algebra',NULL),(2,'glenn','01','algebra',NULL),(3,'athira','03','Organic Chemistry',NULL),(4,'glenn','01','Trigonometry',NULL);
/*!40000 ALTER TABLE `assignedtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `ATTACHMENTID` int(11) NOT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  `ATTACHMENTNAME` varchar(255) DEFAULT NULL,
  `ATTACHMENTLINK` varchar(255) DEFAULT NULL,
  `ATTACHMENTTYPE` varchar(255) DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `TYPE` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ATTACHMENTID`),
  KEY `FKA7E14523B98D186` (`CLASSEVENTDETAILID`),
  CONSTRAINT `FKA7E14523B98D186` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (1,9,'drawing','1498016156875test.png','png','2017-01-01 00:15:28',1),(2,10,'drawing','1498102329018test.png','png','2017-01-01 00:17:48',1),(3,10,'drwa002','1498102397129test.png','png','2017-01-01 00:19:01',1),(4,10,'Eigen_Img','http://192.168.0.117:8080/ATTACHMENT/state-space-analysis-eign-values-and-eign-vectors-30-638.jpg','jpg','2017-06-22 09:07:55',0),(5,10,'drawing','http://192.168.0.117:8080/APPDATA/Recorder/10/1498102329018test.png','png','2017-06-22 09:07:55',0),(6,10,'drwa002','http://192.168.0.117:8080/APPDATA/Recorder/10/1498102397129test.png','png','2017-06-22 09:07:55',0),(7,10,'Eigen_Img','http://192.168.0.117:8080/ATTACHMENT/state-space-analysis-eign-values-and-eign-vectors-30-638.jpg','jpg','2017-06-22 09:07:55',0),(8,11,'draw001','1498188826949test.png','png','2017-01-01 00:28:06',1),(9,11,'draw002','1498188900576test.png','png','2017-01-01 00:29:21',1),(10,11,'Matrix_Pdf','http://192.168.0.117:8080/ATTACHMENT/Characteristic_Equation.pdf','pdf','2017-06-23 09:06:04',0),(11,11,'draw001','http://192.168.0.117:8080/APPDATA/Recorder/11/1498188826949test.png','png','2017-06-23 09:06:04',0),(12,11,'draw002','http://192.168.0.117:8080/APPDATA/Recorder/11/1498188900576test.png','png','2017-06-23 09:06:04',0),(13,11,'Eigen_Img','http://192.168.0.117:8080/ATTACHMENT/state-space-analysis-eign-values-and-eign-vectors-30-638.jpg','jpg','2017-06-23 09:06:04',0);
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `USERID` varchar(255) NOT NULL,
  `ATTENDEDSESSION` int(11) DEFAULT NULL,
  `TOTALNUMBEROFSESSION` int(11) DEFAULT NULL,
  `COURSESUBJECTID` int(11) DEFAULT NULL,
  `CURRENTMONTH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FK8E01CEE9750868B6` (`USERID`),
  KEY `FK8E01CEE9ED6A0F8` (`COURSESUBJECTID`),
  CONSTRAINT `FK8E01CEE9750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK8E01CEE9ED6A0F8` FOREIGN KEY (`COURSESUBJECTID`) REFERENCES `coursesubject` (`COURSESUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('abid',63,50,1,'October'),('alice',21,50,1,'August'),('athira',91,50,1,'May'),('glenn',3,50,8,'September'),('ramu',191,50,1,'July'),('reshmi',7,50,8,'July'),('sabin',50,50,8,'June'),('sangeetha',5,50,8,'January'),('shimla',273,50,8,'May'),('titto',24,50,8,'June');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendancereport`
--

DROP TABLE IF EXISTS `attendancereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendancereport` (
  `USERID` varchar(255) NOT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  `MONTH` varchar(255) DEFAULT NULL,
  `PERCENTAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FK425A855D750868B6` (`USERID`),
  CONSTRAINT `FK425A855D750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendancereport`
--

LOCK TABLES `attendancereport` WRITE;
/*!40000 ALTER TABLE `attendancereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendancereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch` (
  `BATCHID` varchar(255) NOT NULL,
  `BATCHNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES ('101','A');
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classeventdetail`
--

DROP TABLE IF EXISTS `classeventdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classeventdetail` (
  `CLASSEVENTDETAILID` int(11) NOT NULL,
  `SCHEDULEID` int(11) DEFAULT NULL,
  `GENERALLOG` longtext,
  `CHAPTERNAME` varchar(255) DEFAULT NULL,
  `TOPICNAME` varchar(255) DEFAULT NULL,
  `FTPLOCATION` varchar(255) DEFAULT NULL,
  `ATTACHMENTFLAG` bit(1) DEFAULT NULL,
  `STARTTIME` datetime DEFAULT NULL,
  `ENDTIME` datetime DEFAULT NULL,
  `TOTALATTENDEES` int(11) DEFAULT NULL,
  `SCHEDULEFLAG` varchar(255) DEFAULT NULL,
  `NOOFTIMES` int(11) DEFAULT NULL,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `SUBJECTNAME` varchar(255) DEFAULT NULL,
  `COURSENAME` varchar(255) DEFAULT NULL,
  `TEACHERNAME` varchar(255) DEFAULT NULL,
  `TEACHERID` varchar(255) DEFAULT NULL,
  `TEACHERPIC` varchar(255) DEFAULT NULL,
  `CLAZFLAG` int(11) DEFAULT NULL,
  PRIMARY KEY (`CLASSEVENTDETAILID`),
  KEY `FK859ACAF3AEBC48CE` (`SCHEDULEID`),
  CONSTRAINT `FK859ACAF3AEBC48CE` FOREIGN KEY (`SCHEDULEID`) REFERENCES `schedule` (`SCHEDULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classeventdetail`
--

LOCK TABLES `classeventdetail` WRITE;
/*!40000 ALTER TABLE `classeventdetail` DISABLE KEYS */;
INSERT INTO `classeventdetail` VALUES (9,15,NULL,'Basic Electrical and Electronics ','',NULL,'','2017-06-21 09:01:31',NULL,0,'normalSchedule',NULL,NULL,'Basic Electrical and Electronics ','Basic Electrical and Electronics ','SenzIT','senzit','http://192.168.0.117:8080/ProfilePic/senzit.jpg',0),(10,22,'[{\"timestamp\":\"16/6/2017  12:17:14\",\"duration\":\"00:00:00\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Recording Started\"},{\"timestamp\":\"16/6/2017  12:17:43\",\"duration\":\"00:00:28\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Eigen_Img file shared\"},{\"timestamp\":\"16/6/2017  12:18:03\",\"duration\":\"00:00:48\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"drawing file shared\"},{\"timestamp\":\"16/6/2017  12:18:45\",\"duration\":\"00:01:31\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Switch video\"},{\"timestamp\":\"16/6/2017  12:19:11\",\"duration\":\"00:01:56\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"drwa002 file shared\"},{\"timestamp\":\"16/6/2017  12:19:16\",\"duration\":\"00:02:01\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Switch video\"},{\"timestamp\":\"16/6/2017  12:19:26\",\"duration\":\"00:02:12\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Eigen_Img file shared\"}]','Engineering Mathematics I','',NULL,'','2017-06-22 09:01:20','2017-06-22 09:07:55',0,'normalSchedule',NULL,NULL,'Engineering Mathematics I','Engineering Mathematics I','SenzIT','senzit','http://192.168.0.117:8080/ProfilePic/senzit.jpg',1),(11,29,'[{\"timestamp\":\"16/6/2017  12:26:57\",\"duration\":\"00:00:00\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Recording Started\"},{\"timestamp\":\"16/6/2017  12:27:41\",\"duration\":\"00:00:43\",\"raiseHandAnswer\":\"AAAAA1111\",\"raiseHandText\":\"aaaa11111111\",\"profilePic\":\"http://202.191.65.180:8080/ProfilePic/a4.png\",\"logText\":\"Shimla asked a question\"},{\"timestamp\":\"16/6/2017  12:28:02\",\"duration\":\"00:01:03\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Matrix_Pdf file shared\"},{\"timestamp\":\"16/6/2017  12:28:18\",\"duration\":\"00:01:19\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"draw001 file shared\"},{\"timestamp\":\"16/6/2017  12:29:04\",\"duration\":\"00:02:06\",\"raiseHandAnswer\":\"CCCCCCC3333\",\"raiseHandText\":\"ccccc33333\",\"profilePic\":\"http://202.191.65.180:8080/ProfilePic/a4.png\",\"logText\":\"Shimla asked a question\"},{\"timestamp\":\"16/6/2017  12:29:09\",\"duration\":\"00:02:10\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Switch video\"},{\"timestamp\":\"16/6/2017  12:29:15\",\"duration\":\"00:02:16\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Switch video\"},{\"timestamp\":\"16/6/2017  12:29:31\",\"duration\":\"00:02:33\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"draw002 file shared\"},{\"timestamp\":\"16/6/2017  12:29:37\",\"duration\":\"00:02:38\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Eigen_Img file shared\"},{\"timestamp\":\"16/6/2017  12:29:50\",\"duration\":\"00:02:51\",\"raiseHandAnswer\":\"DDD444\",\"raiseHandText\":\"ddddd44444\",\"profilePic\":\"http://202.191.65.180:8080/ProfilePic/a4.png\",\"logText\":\"Shimla asked a question\"},{\"timestamp\":\"16/6/2017  12:30:18\",\"duration\":\"00:03:19\",\"raiseHandAnswer\":\"FFF\",\"raiseHandText\":\"ffffff\",\"profilePic\":\"http://202.191.65.180:8080/ProfilePic/a4.png\",\"logText\":\"Shimla asked a question\"},{\"timestamp\":\"16/6/2017  12:30:35\",\"duration\":\"00:03:36\",\"raiseHandAnswer\":\"0\",\"raiseHandText\":\"0\",\"profilePic\":\"http://192.168.0.117:8080/ProfilePic/senzit.jpg\",\"logText\":\"Recording Stopped\"}]','Basic Electrical and Electronics ','',NULL,'','2017-06-23 09:02:26','2017-06-23 09:06:04',1,'normalSchedule',NULL,NULL,'Basic Electrical and Electronics ','Basic Electrical and Electronics ','SenzIT','senzit','http://192.168.0.117:8080/ProfilePic/senzit.jpg',1),(12,101,NULL,'mghmghmghm','ghmhgm',NULL,'\0','2017-06-25 21:48:06',NULL,0,'normalSchedule',NULL,NULL,'Engineering Physics','ghmghmghm','SenzIT','senzit','http://192.168.0.117:8080/ProfilePic/senzit.jpg',0);
/*!40000 ALTER TABLE `classeventdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classroom` (
  `CLASSROOMID` varchar(255) NOT NULL,
  `CLASSROOMNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CLASSROOMID`),
  UNIQUE KEY `CLASSROOMNO` (`CLASSROOMNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES ('101','101'),('102','102');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `COURSEID` varchar(255) NOT NULL,
  `COURSENAME` varchar(255) DEFAULT NULL,
  `COURSEDESCRIPTION` varchar(255) DEFAULT NULL,
  `COURSECATEGORY` varchar(255) DEFAULT NULL,
  `COURSEDURATION` varchar(255) DEFAULT NULL,
  `CURRENTSCHEME` varchar(255) DEFAULT NULL,
  `SEMORYEAR` varchar(255) DEFAULT NULL,
  `DEPARTMENT` varchar(255) DEFAULT NULL,
  `DISTANTORREGULAR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`COURSEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('415','Computer Science & Engineering ','CS','UG','4','2008','sem','CS','Distant & Regular');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursebatch`
--

DROP TABLE IF EXISTS `coursebatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursebatch` (
  `COURSEBATCHID` int(11) NOT NULL,
  `COURSEID` varchar(255) DEFAULT NULL,
  `SEMESTERID` varchar(255) DEFAULT NULL,
  `BATCHID` varchar(255) DEFAULT NULL,
  `CLASSROOMID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`COURSEBATCHID`),
  UNIQUE KEY `CLASSROOMID` (`CLASSROOMID`),
  KEY `FK7B8263DF6A8E21D0` (`SEMESTERID`),
  KEY `FK7B8263DF2F153D7C` (`CLASSROOMID`),
  KEY `FK7B8263DF1FEFE2EA` (`BATCHID`),
  KEY `FK7B8263DF2F8CE016` (`COURSEID`),
  CONSTRAINT `FK7B8263DF1FEFE2EA` FOREIGN KEY (`BATCHID`) REFERENCES `batch` (`BATCHID`),
  CONSTRAINT `FK7B8263DF2F153D7C` FOREIGN KEY (`CLASSROOMID`) REFERENCES `classroom` (`CLASSROOMID`),
  CONSTRAINT `FK7B8263DF2F8CE016` FOREIGN KEY (`COURSEID`) REFERENCES `course` (`COURSEID`),
  CONSTRAINT `FK7B8263DF6A8E21D0` FOREIGN KEY (`SEMESTERID`) REFERENCES `semester` (`SEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursebatch`
--

LOCK TABLES `coursebatch` WRITE;
/*!40000 ALTER TABLE `coursebatch` DISABLE KEYS */;
INSERT INTO `coursebatch` VALUES (101,'415','1','101','101');
/*!40000 ALTER TABLE `coursebatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursesubject`
--

DROP TABLE IF EXISTS `coursesubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursesubject` (
  `COURSESUBJECTID` int(11) NOT NULL,
  `COURSEID` varchar(255) DEFAULT NULL,
  `SEMESTERID` varchar(255) DEFAULT NULL,
  `SUBJECTID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`COURSESUBJECTID`),
  KEY `FK48E948916A8E21D0` (`SEMESTERID`),
  KEY `FK48E948912F8CE016` (`COURSEID`),
  KEY `FK48E94891D1AB1F8E` (`SUBJECTID`),
  CONSTRAINT `FK48E948912F8CE016` FOREIGN KEY (`COURSEID`) REFERENCES `course` (`COURSEID`),
  CONSTRAINT `FK48E948916A8E21D0` FOREIGN KEY (`SEMESTERID`) REFERENCES `semester` (`SEMID`),
  CONSTRAINT `FK48E94891D1AB1F8E` FOREIGN KEY (`SUBJECTID`) REFERENCES `subject` (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursesubject`
--

LOCK TABLES `coursesubject` WRITE;
/*!40000 ALTER TABLE `coursesubject` DISABLE KEYS */;
INSERT INTO `coursesubject` VALUES (1,'415','1','01'),(2,'415','1','02'),(3,'415','1','03'),(4,'415','1','04'),(5,'415','1','05'),(6,'415','1','06'),(7,'415','1','07'),(8,'415','1','08'),(9,'415','1','09'),(10,'415','1','10');
/*!40000 ALTER TABLE `coursesubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day` (
  `DAYID` varchar(255) NOT NULL,
  `DAYNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DAYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES ('1','Mon'),('2','Tue'),('3','Wed'),('4','Thu'),('5','Fri'),('6','Sat'),('7','Sun');
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futuregoals`
--

DROP TABLE IF EXISTS `futuregoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `futuregoals` (
  `GOALID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `GOALS` varchar(255) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GOALID`),
  KEY `FK62AE8BBD750868B6` (`USERID`),
  KEY `FKE25AF7DD9E00B6D4` (`COURSEBATCHID`),
  CONSTRAINT `FK62AE8BBD750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FKE25AF7DD9E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futuregoals`
--

LOCK TABLES `futuregoals` WRITE;
/*!40000 ALTER TABLE `futuregoals` DISABLE KEYS */;
INSERT INTO `futuregoals` VALUES (1,'glenn','CA',101),(2,'athira','Engineer',101),(3,'sabin','Engineer',101);
/*!40000 ALTER TABLE `futuregoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday` (
  `HOLIDAYID` int(11) NOT NULL,
  `DATE` date DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HOLIDAYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `USERID` varchar(255) NOT NULL,
  `SESSIONID` varchar(255) DEFAULT NULL,
  `DEVICEIP` varchar(255) DEFAULT NULL,
  `LOGINTIME` datetime DEFAULT NULL,
  `LASTREQTIME` datetime DEFAULT NULL,
  `REBBONID` varchar(255) DEFAULT NULL,
  `LOGINSTATUS` bit(1) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FK127242C73DBC4` (`REBBONID`),
  KEY `FK12724750868B6` (`USERID`),
  CONSTRAINT `FK127242C73DBC4` FOREIGN KEY (`REBBONID`) REFERENCES `rebbon` (`REBBONID`),
  CONSTRAINT `FK12724750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('alen','9EF61182434FD049EF5ED27ECBCF738E',NULL,NULL,NULL,'r101',''),('shimla','88D1B1472465B401B2AFA3C8DBCAB6D1',NULL,NULL,NULL,'r101','');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managersettings`
--

DROP TABLE IF EXISTS `managersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managersettings` (
  `MANAGERID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MANAGERID`),
  KEY `FKE30BCED09E00B6D4` (`COURSEBATCHID`),
  KEY `FKE30BCED0750868B6` (`USERID`),
  CONSTRAINT `FKE30BCED0750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FKE30BCED09E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managersettings`
--

LOCK TABLES `managersettings` WRITE;
/*!40000 ALTER TABLE `managersettings` DISABLE KEYS */;
INSERT INTO `managersettings` VALUES (1,'manager',101);
/*!40000 ALTER TABLE `managersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maximumhours`
--

DROP TABLE IF EXISTS `maximumhours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maximumhours` (
  `MAXHOURID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `MINUTES` int(11) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MAXHOURID`),
  KEY `FK2BD0E4EF750868B6` (`USERID`),
  KEY `FK2BD0E4EF9E00B6D4` (`COURSEBATCHID`),
  CONSTRAINT `FK2BD0E4EF750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK2BD0E4EF9E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maximumhours`
--

LOCK TABLES `maximumhours` WRITE;
/*!40000 ALTER TABLE `maximumhours` DISABLE KEYS */;
INSERT INTO `maximumhours` VALUES (1,'senzit',22408,101),(2,'abdullah',153,101),(3,'john',1345,101),(4,'ramu',1,101);
/*!40000 ALTER TABLE `maximumhours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multimedialibrary`
--

DROP TABLE IF EXISTS `multimedialibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multimedialibrary` (
  `MEDIAID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `MEDIANAME` varchar(255) DEFAULT NULL,
  `MEDIADESCRIPTION` varchar(255) DEFAULT NULL,
  `FTPPATH` varchar(255) DEFAULT NULL,
  `UPLOADEDON` datetime DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MEDIAID`),
  KEY `FK27C5B3F0750868B6` (`USERID`),
  CONSTRAINT `FK27C5B3F0750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedialibrary`
--

LOCK TABLES `multimedialibrary` WRITE;
/*!40000 ALTER TABLE `multimedialibrary` DISABLE KEYS */;
INSERT INTO `multimedialibrary` VALUES (2,'john','JAVA','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/java.pdf','2015-03-02 09:36:39','pdf'),(3,'abdullah','IT','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/it.pdf','2015-03-02 09:36:39','pdf'),(5,'john','CIVIL','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/civil.pdf','2015-03-02 09:36:39','pdf'),(6,'abdullah','JAVA','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/java.pdf','2015-03-02 09:36:39','pdf'),(7,'john','SENZIT','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/java.pdf','2015-03-02 09:36:39','pdf'),(8,'shimla','Java','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/civil.pdf','2015-03-02 09:36:39','pdf'),(9,'shimla','Civil','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/plsql.pdf','2015-03-02 09:36:39','pdf'),(10,'athira','Chemistry','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/civil.pdf','2015-03-02 09:36:39','pdf'),(11,'athira','Graphics','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/java.pdf','2015-03-02 09:36:39','pdf'),(12,'ramu','Chemistry','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/java.pdf','2015-03-02 09:36:39','pdf'),(39,'shimla','Physics','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/civil.pdf','2015-04-13 10:46:34','pdf'),(40,'shimla','Mechanics','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/it.pdf','2015-04-13 10:46:34','pdf'),(41,'athira','Physics','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/civil.pdf','2015-04-13 10:46:34','pdf'),(43,'ramu','Mechanics','senzit attachment','http://202.191.65.180:8080/ATTACHMENT/it.pdf','2015-04-13 10:46:34','pdf'),(58,'john','rghtruj','rturui','http://202.191.65.180:8080/ATTACHMENT/1414064354070image.jpeg.jpg','2015-05-06 12:55:08','jpg'),(60,'john','ewqfvsdg','segsdg','http://202.191.65.180:8080/ATTACHMENT/ss.docx','2015-05-06 16:01:00','docx'),(62,'athira','erter','uhyjerjueru','http://202.191.65.180:8080/ATTACHMENT/analytics.jpeg','2015-07-01 11:13:26','jpeg'),(63,'athira','swafrsa','dfgdasgsdads','http://202.191.65.180:8080/ATTACHMENT/Js.pdf','2015-07-01 11:22:19','pdf'),(65,'reshmi','File 1','This file contains code','http://202.191.65.180:8080/ATTACHMENT/Claz Player.png','2015-09-01 09:38:23','png'),(72,'Alice','Eureka','A Eureka moment ','http://202.191.65.180:8080/ATTACHMENT/eureka 2.png','2016-05-09 18:24:08','png'),(76,'abid','Eigen_Img','Eigen Values Image file','http://192.168.0.117:8080/ATTACHMENT/mathseigenvalues-and-eigenvectors-3-638.jpg','2017-05-23 04:50:36','jpg'),(77,'senzit','Matrix_Pdf','Characteristic Equstions','http://192.168.0.117:8080/ATTACHMENT/Characteristic_Equation.pdf','2017-05-23 05:27:30','pdf'),(78,'senzit','Eigen_Img','Eigen Values Image','http://192.168.0.117:8080/ATTACHMENT/state-space-analysis-eign-values-and-eign-vectors-30-638.jpg','2017-05-23 05:28:16','jpg');
/*!40000 ALTER TABLE `multimedialibrary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `NOTEID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` varchar(255) DEFAULT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  `NOTES` longtext,
  PRIMARY KEY (`NOTEID`),
  KEY `FK24A7F2750868B6` (`USERID`),
  KEY `FK24A7F2B98D186` (`CLASSEVENTDETAILID`),
  CONSTRAINT `FK24A7F2750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK24A7F2B98D186` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (112,'senzit',10,'[{\"time\":\"00:21\",\"notes\":\"Reminder0001\"},{\"time\":\"01:11\",\"notes\":\"Reminder0002\"},{\"time\":\"01:25\",\"notes\":\"Reminder0003\"},{\"time\":\"02:30\",\"notes\":\"Reminder0003\"}]'),(113,'senzit',11,'[{\"time\":\"00:58\",\"notes\":\"Reminder0001\"}]');
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `NOTIFICATIONID` int(11) NOT NULL,
  `FROMUSERID` varchar(255) DEFAULT NULL,
  `TOUSERID` varchar(255) DEFAULT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  `NOTIFICATION` longtext,
  `CREATEDON` datetime DEFAULT NULL,
  `FLAG` varchar(255) DEFAULT NULL,
  `NOTIFICATIONANSWER` varchar(255) DEFAULT NULL,
  `NOTIFICATIONFLAG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATIONID`),
  KEY `FKAD9970EBB98D186` (`CLASSEVENTDETAILID`),
  CONSTRAINT `FKAD9970EBB98D186` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'senzit','senzit',10,'Reminder0001','2017-06-22 09:07:54','RN',NULL,NULL),(2,'senzit','senzit',10,'Reminder0002','2017-06-22 09:07:54','RN',NULL,NULL),(3,'senzit','senzit',10,'Reminder0003','2017-06-22 09:07:54','RN',NULL,NULL),(4,'senzit','senzit',10,'Reminder0003','2017-06-22 09:07:54','RN',NULL,NULL),(5,'shimla','senzit',11,'aaaa11111111','2017-06-23 09:02:45','RH','AAAAA1111','RHQueue'),(6,'shimla','senzit',11,'bbbb22222','2017-06-23 09:04:07','RH',NULL,NULL),(7,'shimla','senzit',11,'ccccc33333','2017-06-23 09:04:12','RH','CCCCCCC3333','RHQueue'),(8,'shimla','senzit',11,'ddddd44444','2017-06-23 09:04:16','RH','DDD444','RHQueue'),(9,'shimla','senzit',11,'eeeeeee','2017-06-23 09:05:27','RH',NULL,NULL),(10,'shimla','senzit',11,'ffffff','2017-06-23 09:05:30','RH','FFF','RHQueue'),(11,'shimla','senzit',11,'ggggg','2017-06-23 09:05:32','RH',NULL,NULL),(12,'shimla','senzit',11,'hhhhhh','2017-06-23 09:05:36','RH',NULL,NULL),(13,'senzit','senzit',11,'Reminder0001','2017-06-23 09:06:03','RN',NULL,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period` (
  `PERIODID` varchar(255) NOT NULL,
  `STARTTIME` varchar(255) DEFAULT NULL,
  `ENDTIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERIODID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES ('1','540','600'),('10','1080','1140'),('11','1140','1200'),('12','1200','1260'),('13','1260','1320'),('14','1320','1380'),('15','1380','1440'),('2','600','660'),('3','660','720'),('4','720','780'),('5','840','900'),('6','900','960'),('7','960','1020'),('8','780','840'),('9','1020','1080');
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll` (
  `POLLID` int(11) NOT NULL AUTO_INCREMENT,
  `POLLQUESTION` varchar(255) DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`POLLID`),
  KEY `FK3497BFCA87A7CF` (`CREATEDBY`),
  CONSTRAINT `FK3497BFCA87A7CF` FOREIGN KEY (`CREATEDBY`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll`
--

LOCK TABLES `poll` WRITE;
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
INSERT INTO `poll` VALUES (32,'Poll1','ramu'),(33,'Poll2','ramu'),(34,'dfgdfg','ramu');
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_option`
--

DROP TABLE IF EXISTS `poll_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_option` (
  `OPTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `OPTION_VALUE` varchar(255) DEFAULT NULL,
  `POLLID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPTIONID`),
  KEY `FKD4FE88F5FE7619F2` (`POLLID`),
  CONSTRAINT `FKD4FE88F5FE7619F2` FOREIGN KEY (`POLLID`) REFERENCES `poll` (`POLLID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_option`
--

LOCK TABLES `poll_option` WRITE;
/*!40000 ALTER TABLE `poll_option` DISABLE KEYS */;
INSERT INTO `poll_option` VALUES (72,'op1',32),(73,'op2',32),(74,'op3',32),(75,'Op1',33),(76,'op2',33),(77,'op3',33),(78,'dfgfdg',34),(79,'fdgdf',34),(80,'gfdg',34),(81,'dfgdf',34),(82,'dfgdgdf',34);
/*!40000 ALTER TABLE `poll_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_result`
--

DROP TABLE IF EXISTS `poll_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_result` (
  `POLLRESULTID` int(11) NOT NULL AUTO_INCREMENT,
  `POLLOPTIONID` int(11) DEFAULT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`POLLRESULTID`),
  KEY `FKD981C89D8E92907C` (`POLLOPTIONID`),
  KEY `FKD981C89D750868B6` (`USERID`),
  CONSTRAINT `FKD981C89D750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FKD981C89D8E92907C` FOREIGN KEY (`POLLOPTIONID`) REFERENCES `poll_option` (`OPTIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_result`
--

LOCK TABLES `poll_result` WRITE;
/*!40000 ALTER TABLE `poll_result` DISABLE KEYS */;
INSERT INTO `poll_result` VALUES (9,77,'ramu'),(10,77,'shimla'),(11,77,'athira'),(12,76,'athira'),(13,76,'shimla'),(14,76,'ramu'),(15,76,'alice'),(16,75,'shimla'),(17,75,'alice'),(18,75,'ramu'),(19,75,'athira'),(20,75,'alen'),(21,75,'athira'),(22,75,'alice'),(23,75,'glenn'),(24,76,'shimla'),(25,76,'alice'),(26,76,'alen'),(27,77,'athira'),(28,77,'athira'),(29,77,'athira'),(30,77,'shimla'),(31,80,'ramu'),(32,82,'shimla'),(33,82,'shimla'),(34,82,'shimla'),(35,82,'shimla'),(36,82,'shimla'),(37,82,'shimla'),(38,82,'shimla'),(40,79,'shimla'),(41,79,'shimla'),(42,79,'shimla'),(43,79,'shimla'),(44,79,'shimla'),(45,79,'shimla'),(46,79,'shimla'),(47,79,'shimla'),(48,79,'shimla'),(49,79,'shimla'),(50,78,'shimla'),(51,78,'shimla'),(52,78,'shimla'),(53,78,'shimla'),(54,78,'shimla'),(55,78,'shimla'),(56,78,'shimla'),(57,78,'shimla'),(58,78,'shimla'),(59,78,'shimla'),(60,78,'shimla'),(61,73,'ramu');
/*!40000 ALTER TABLE `poll_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `PRIVILEGEID` varchar(255) NOT NULL,
  `PRIVILEGENAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRIVILEGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES ('1','Recorder'),('2','Player'),('3','Attachment'),('4','Library'),('5','ReminderNotes'),('6','ClassNotes');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progressreports`
--

DROP TABLE IF EXISTS `progressreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progressreports` (
  `PROGRESSID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `SUBJECTID` varchar(255) DEFAULT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  `MARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROGRESSID`),
  KEY `FK9D0032F2750868B6` (`USERID`),
  KEY `FK9D0032F2D1AB1F8E` (`SUBJECTID`),
  CONSTRAINT `FK9D0032F2750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK9D0032F2D1AB1F8E` FOREIGN KEY (`SUBJECTID`) REFERENCES `subject` (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progressreports`
--

LOCK TABLES `progressreports` WRITE;
/*!40000 ALTER TABLE `progressreports` DISABLE KEYS */;
INSERT INTO `progressreports` VALUES (1,'athira','04','First','65');
/*!40000 ALTER TABLE `progressreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_option`
--

DROP TABLE IF EXISTS `question_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_option` (
  `OPTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `OPTION_VALUE` varchar(255) DEFAULT NULL,
  `QNID` int(11) DEFAULT NULL,
  `ANSWERFLAG` bit(1) DEFAULT NULL,
  PRIMARY KEY (`OPTIONID`),
  KEY `FK6E1E3AEE1A5F4D6C` (`QNID`),
  CONSTRAINT `FK6E1E3AEE1A5F4D6C` FOREIGN KEY (`QNID`) REFERENCES `quiz_question` (`QNID`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_option`
--

LOCK TABLES `question_option` WRITE;
/*!40000 ALTER TABLE `question_option` DISABLE KEYS */;
INSERT INTO `question_option` VALUES (16,'dfdf',11,'\0'),(17,'dz',11,'\0'),(18,'af',11,''),(19,'dfdaf',11,'\0'),(20,' fdasf',12,'\0'),(21,' df',12,''),(22,' df',12,'\0'),(23,' sdrsf',12,'\0'),(24,'collision between fast neutrons and nitrogen nuclei present in the atmosphere',13,''),(25,'action of ultraviolet light from the sun on atmospheric oxygen',13,'\0'),(26,'action of solar radiations particularly cosmic rays on carbon dioxide present in the atmosphere',13,'\0'),(27,'lightning discharge in atmosphere',13,'\0'),(28,' work done in rolling is more than in lifting',14,'\0'),(29,' work done in lifting the stone is equal to rolling it',14,'\0'),(30,' work done in both is same but the rate of doing work is less in rolling',14,'\0'),(31,' work done in rolling a stone is less than in lifting it',14,''),(32,'viscosity of ink ',15,'\0'),(33,' capillary action phenomenon',15,''),(34,' diffusion of ink through the blotting',15,'\0'),(35,' siphon action',15,'\0'),(36,' the densities of the liquid in the two vessels are equal',16,'\0'),(37,' the level of the liquid in the two vessels are at the same height',16,''),(38,' both its limbs are of unequal length',16,'\0'),(39,' the temperature of the liquids in the two vessels are the same',16,'\0'),(40,'collision between fast neutrons and nitrogen nuclei present in the atmosphere',17,''),(41,'action of ultraviolet light from the sun on atmospheric oxygen',17,'\0'),(42,'action of solar radiations particularly cosmic rays on carbon dioxide present in the atmosphere',17,'\0'),(43,'lightning discharge in atmosphere',17,'\0'),(44,' work done in rolling is more than in lifting',18,'\0'),(45,' work done in lifting the stone is equal to rolling it',18,'\0'),(46,' work done in both is same but the rate of doing work is less in rolling',18,'\0'),(47,' work done in rolling a stone is less than in lifting it',18,''),(48,'viscosity of ink ',19,'\0'),(49,' capillary action phenomenon',19,''),(50,' diffusion of ink through the blotting',19,'\0'),(51,' siphon action',19,'\0'),(52,' the densities of the liquid in the two vessels are equal',20,'\0'),(53,' the level of the liquid in the two vessels are at the same height',20,''),(54,' both its limbs are of unequal length',20,'\0'),(55,' the temperature of the liquids in the two vessels are the same',20,'\0'),(56,'collision between fast neutrons and nitrogen nuclei present in the atmosphere',21,''),(57,'action of ultraviolet light from the sun on atmospheric oxygen',21,'\0'),(58,'action of solar radiations particularly cosmic rays on carbon dioxide present in the atmosphere',21,'\0'),(59,'lightning discharge in atmosphere',21,'\0'),(60,' work done in rolling is more than in lifting',22,'\0'),(61,' work done in lifting the stone is equal to rolling it',22,'\0'),(62,' work done in both is same but the rate of doing work is less in rolling',22,'\0'),(63,' work done in rolling a stone is less than in lifting it',22,''),(64,'viscosity of ink ',23,'\0'),(65,' capillary action phenomenon',23,''),(66,' diffusion of ink through the blotting',23,'\0'),(67,' siphon action',23,'\0'),(68,' the densities of the liquid in the two vessels are equal',24,'\0'),(69,' the level of the liquid in the two vessels are at the same height',24,''),(70,' both its limbs are of unequal length',24,'\0'),(71,' the temperature of the liquids in the two vessels are the same',24,'\0'),(72,'Na',25,'\0'),(73,'Ag ',25,'\0'),(74,'Hg',25,'\0'),(75,'Fe',25,''),(76,' electrons and neutrons ',26,'\0'),(77,'electrons and protons',26,'\0'),(78,' protons and neutrons',26,''),(79,' All of the above',26,'\0'),(80,' molality',27,''),(81,' molarity',27,'\0'),(82,' normality',27,'\0'),(83,' formality',27,'\0'),(84,' sodium',28,'\0'),(85,' bromine',28,'\0'),(86,' fluorine',28,''),(87,' oxygen',28,'\0'),(88,'Na',29,'\0'),(89,'Ag ',29,'\0'),(90,'Hg',29,'\0'),(91,'Fe',29,''),(92,' electrons and neutrons ',30,'\0'),(93,'electrons and protons',30,'\0'),(94,' protons and neutrons',30,''),(95,' All of the above',30,'\0'),(96,' molality',31,''),(97,' molarity',31,'\0'),(98,' normality',31,'\0'),(99,' formality',31,'\0'),(100,' sodium',32,'\0'),(101,' bromine',32,'\0'),(102,' fluorine',32,''),(103,' oxygen',32,'\0'),(104,'Good ',33,'\0'),(105,'BAd',33,'\0'),(106,'Yes',33,''),(107,'No',33,'\0'),(108,' come',34,''),(109,' no',34,'\0'),(110,' bad',34,'\0'),(111,' welcome everyone',34,'\0'),(112,'Good ',35,'\0'),(113,'BAd',35,'\0'),(114,'Yes',35,''),(115,'No',35,'\0'),(116,' come',36,''),(117,' no',36,'\0'),(118,' bad',36,'\0'),(119,' welcome everyone',36,'\0'),(120,' an element',37,'\0'),(121,'a compound',37,''),(122,'an ion',37,'\0'),(123,'a molecule',37,'\0'),(124,' nucleus',38,'\0'),(125,' compound',38,'\0'),(126,' charged ion',38,''),(127,' heavier element',38,'\0'),(128,'mineral, gas, or liquid',39,'\0'),(129,'solid, liquid, or mineral ',39,'\0'),(130,'solid, gas, or liquid',39,''),(131,'plastic, solid, or gas',39,'\0'),(132,' a battery is a closed system',40,''),(133,'  none of these',40,'\0'),(134,' a battery uses a polymer electrolyte membrane',40,'\0'),(135,' a battery uses hydrogen and oxygen to create electricity',40,'\0'),(136,' to measure current',41,'\0'),(137,' in series with the circuit',41,'\0'),(138,'  in parallel with the circuit',41,''),(139,' to measure coulombs',41,'\0'),(140,' an element',42,'\0'),(141,'a compound',42,''),(142,'an ion',42,'\0'),(143,'a molecule',42,'\0'),(144,' nucleus',43,'\0'),(145,' compound',43,'\0'),(146,' charged ion',43,''),(147,' heavier element',43,'\0'),(148,'mineral, gas, or liquid',44,'\0'),(149,'solid, liquid, or mineral ',44,'\0'),(150,'solid, gas, or liquid',44,''),(151,'plastic, solid, or gas',44,'\0'),(152,' a battery is a closed system',45,''),(153,'  none of these',45,'\0'),(154,' a battery uses a polymer electrolyte membrane',45,'\0'),(155,' a battery uses hydrogen and oxygen to create electricity',45,'\0'),(156,' to measure current',46,'\0'),(157,' in series with the circuit',46,'\0'),(158,'  in parallel with the circuit',46,''),(159,' to measure coulombs',46,'\0');
/*!40000 ALTER TABLE `question_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `QUIZID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJECT` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`QUIZID`),
  KEY `FK352255CA87A7CF` (`CREATEDBY`),
  CONSTRAINT `FK352255CA87A7CF` FOREIGN KEY (`CREATEDBY`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (14,'Engineering Chemistry','asfasdf','ramu'),(15,'Engineering Physics','Common Question','ramu'),(16,'Engineering Physics','Common Question','ramu'),(17,'Engineering Physics','Common Question','ramu'),(18,'Engineering Chemistry','Basic Question','ramu'),(19,'Engineering Chemistry','Basic Question','ramu'),(20,'Engineering Graphics','Graphics','ramu'),(21,'Engineering Graphics','Graphics','ramu'),(22,'Basic Civil Engineering','Building Materials','ramu'),(23,'Basic Electrical and Electronics ','Voltage and Current','senzit'),(24,'Basic Electrical and Electronics ','Voltage and Current','senzit');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_question` (
  `QNID` int(11) NOT NULL AUTO_INCREMENT,
  `QN` varchar(255) DEFAULT NULL,
  `QUIZID` int(11) DEFAULT NULL,
  PRIMARY KEY (`QNID`),
  KEY `FK8BB1A907EE19E` (`QUIZID`),
  CONSTRAINT `FK8BB1A907EE19E` FOREIGN KEY (`QUIZID`) REFERENCES `quiz` (`QUIZID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question`
--

LOCK TABLES `quiz_question` WRITE;
/*!40000 ALTER TABLE `quiz_question` DISABLE KEYS */;
INSERT INTO `quiz_question` VALUES (11,'fsadf',14),(12,' dfdas',14),(13,'Radiocarbon is produced in the atmosphere as a result of',15),(14,' It is easier to roll a stone up a sloping road than to lift it vertical upwards because',15),(15,' The absorption of ink by blotting paper involves',15),(16,' Siphon will fail to work if',15),(17,'Radiocarbon is produced in the atmosphere as a result of',16),(18,' It is easier to roll a stone up a sloping road than to lift it vertical upwards because',16),(19,' The absorption of ink by blotting paper involves',16),(20,' Siphon will fail to work if',16),(21,'Radiocarbon is produced in the atmosphere as a result of',17),(22,' It is easier to roll a stone up a sloping road than to lift it vertical upwards because',17),(23,' The absorption of ink by blotting paper involves',17),(24,' Siphon will fail to work if',17),(25,'The metal used to recover copper from a solution of copper sulphate is',18),(26,' The nucleus of an atom consists of',18),(27,' The number of moles of solute present in 1 kg of a solvent is called its ',18),(28,' The most electronegative element among the following is ',18),(29,'The metal used to recover copper from a solution of copper sulphate is',19),(30,' The nucleus of an atom consists of',19),(31,' The number of moles of solute present in 1 kg of a solvent is called its ',19),(32,' The most electronegative element among the following is ',19),(33,'About Graphics',20),(34,' Welcome',20),(35,'About Graphics',21),(36,' Welcome',21),(37,'Material that consists of a mixture of elements is considered to be:',23),(38,' The removal of a non-neutral subatomic particle converts the atom into a:',23),(39,' In which states may matter may be found?',23),(40,' Batteries differ from fuel cells in that',23),(41,' A voltmeter is used:',23),(42,'Material that consists of a mixture of elements is considered to be:',24),(43,' The removal of a non-neutral subatomic particle converts the atom into a:',24),(44,' In which states may matter may be found?',24),(45,' Batteries differ from fuel cells in that',24),(46,' A voltmeter is used:',24);
/*!40000 ALTER TABLE `quiz_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_user`
--

DROP TABLE IF EXISTS `quiz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_user` (
  `QUIZUSERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `QUIZID` int(11) DEFAULT NULL,
  `NO_OF_RIGHT_ANSWERS` int(11) DEFAULT NULL,
  PRIMARY KEY (`QUIZUSERID`),
  KEY `FK742DAF757EE19E` (`QUIZID`),
  KEY `FK742DAF759706BF66` (`USERNAME`),
  CONSTRAINT `FK742DAF757EE19E` FOREIGN KEY (`QUIZID`) REFERENCES `quiz` (`QUIZID`),
  CONSTRAINT `FK742DAF759706BF66` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_user`
--

LOCK TABLES `quiz_user` WRITE;
/*!40000 ALTER TABLE `quiz_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rebbon`
--

DROP TABLE IF EXISTS `rebbon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rebbon` (
  `REBBONID` varchar(255) NOT NULL,
  `REBBONLINK` varchar(255) DEFAULT NULL,
  `CLASSROOMID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`REBBONID`),
  UNIQUE KEY `REBBONLINK` (`REBBONLINK`),
  UNIQUE KEY `CLASSROOMID` (`CLASSROOMID`),
  KEY `FK8FD8BAD22F153D7C` (`CLASSROOMID`),
  CONSTRAINT `FK8FD8BAD22F153D7C` FOREIGN KEY (`CLASSROOMID`) REFERENCES `classroom` (`CLASSROOMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebbon`
--

LOCK TABLES `rebbon` WRITE;
/*!40000 ALTER TABLE `rebbon` DISABLE KEYS */;
INSERT INTO `rebbon` VALUES ('r101','202.191.65.180','101');
/*!40000 ALTER TABLE `rebbon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ROLEID` varchar(255) NOT NULL,
  `ROLENAME` varchar(255) DEFAULT NULL,
  `ROLEDESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('1','Teacher',NULL),('2','Student',NULL),('3','Parent',NULL),('4','Manager',NULL),('5','Admin',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleprivilege`
--

DROP TABLE IF EXISTS `roleprivilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roleprivilege` (
  `ROLEPRIVILEGEID` varchar(255) NOT NULL,
  `ROLEID` varchar(255) DEFAULT NULL,
  `PRIVILEGEID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLEPRIVILEGEID`),
  KEY `FK198DB2DBD8F5BA98` (`PRIVILEGEID`),
  KEY `FK198DB2DB6FB3134C` (`ROLEID`),
  CONSTRAINT `FK198DB2DB6FB3134C` FOREIGN KEY (`ROLEID`) REFERENCES `role` (`ROLEID`),
  CONSTRAINT `FK198DB2DBD8F5BA98` FOREIGN KEY (`PRIVILEGEID`) REFERENCES `privilege` (`PRIVILEGEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleprivilege`
--

LOCK TABLES `roleprivilege` WRITE;
/*!40000 ALTER TABLE `roleprivilege` DISABLE KEYS */;
INSERT INTO `roleprivilege` VALUES ('1','1','1'),('10','4','1'),('11','4','2'),('12','4','3'),('14','4','4'),('15','4','5'),('16','4','6'),('2','1','2'),('3','1','3'),('4','1','4'),('5','1','5'),('6','2','2'),('7','2','3'),('8','2','6'),('9','2','4');
/*!40000 ALTER TABLE `roleprivilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `SCHEDULEID` int(11) NOT NULL,
  `DAYID` varchar(255) DEFAULT NULL,
  `PERIODID` varchar(255) DEFAULT NULL,
  `SUBJECTTEACHERID` int(11) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SCHEDULEID`),
  KEY `FK50C82979E00B6D4` (`COURSEBATCHID`),
  KEY `FK50C829774FF39E2` (`PERIODID`),
  KEY `FK50C8297799CA26C` (`SUBJECTTEACHERID`),
  KEY `FK50C8297556365EE` (`DAYID`),
  CONSTRAINT `FK50C8297556365EE` FOREIGN KEY (`DAYID`) REFERENCES `day` (`DAYID`),
  CONSTRAINT `FK50C829774FF39E2` FOREIGN KEY (`PERIODID`) REFERENCES `period` (`PERIODID`),
  CONSTRAINT `FK50C8297799CA26C` FOREIGN KEY (`SUBJECTTEACHERID`) REFERENCES `subjectteacher` (`SUBJECTTEACHERID`),
  CONSTRAINT `FK50C82979E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'1','1',1,101),(2,'1','2',12,101),(3,'1','3',11,101),(4,'1','4',15,101),(5,'1','5',13,101),(6,'1','6',2,101),(7,'1','7',14,101),(8,'2','1',3,101),(9,'2','2',16,101),(10,'2','3',14,101),(11,'2','4',17,101),(12,'2','5',16,101),(13,'2','6',11,101),(14,'2','7',1,101),(15,'3','1',3,101),(16,'3','2',2,101),(17,'3','3',15,101),(18,'3','4',12,101),(19,'3','5',2,101),(20,'3','6',15,101),(21,'3','7',16,101),(22,'4','1',1,101),(23,'4 ','2',13,101),(24,'4','3',14,101),(25,'4','4',12,101),(26,'4','5',3,101),(27,'4','6',2,101),(28,'4','7',11,101),(29,'5','1',3,101),(30,'5','2',13,101),(31,'5','3',15,101),(32,'5','4',3,101),(33,'5','5',1,101),(34,'5','6',2,101),(35,'5','7',11,101),(36,'6','1',1,101),(101,'1','1',1,NULL);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semester` (
  `SEMID` varchar(255) NOT NULL,
  `SEMNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES ('1','Sem1');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `token` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentbatch`
--

DROP TABLE IF EXISTS `studentbatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentbatch` (
  `USERID` varchar(255) NOT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FK892269DF9E00B6D4` (`COURSEBATCHID`),
  KEY `FK892269DF750868B6` (`USERID`),
  CONSTRAINT `FK892269DF750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK892269DF9E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentbatch`
--

LOCK TABLES `studentbatch` WRITE;
/*!40000 ALTER TABLE `studentbatch` DISABLE KEYS */;
INSERT INTO `studentbatch` VALUES ('abid',101),('admin',101),('Ajini',101),('alice',101),('anager',101),('athira',101),('company123',101),('esenzit',101),('glenn',101),('ramu',101),('reshmi',101),('sabin',101),('sangeetha',101),('Sen',101),('senzit123',101),('shamaz',101),('shimla',101),('titto',101),('zereen',101);
/*!40000 ALTER TABLE `studentbatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `SUBJECTID` varchar(255) NOT NULL,
  `SUBJECTNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('01','Engineering Mathematics I'),('02','Engineering Physics'),('03','Engineering Chemistry'),('04','Engineering Graphics'),('05','Basic Civil Engineering'),('06','Engineering Mechanics'),('07','Basic Mechanical Engineering'),('08','Basic Electrical and Electronics '),('09','Basic Communication and Information Engineering'),('10','Engineering Workshops'),('11','Other');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectperformance`
--

DROP TABLE IF EXISTS `subjectperformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjectperformance` (
  `PERFORMANCEID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `SUBJECTID` varchar(255) DEFAULT NULL,
  `RATING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERFORMANCEID`),
  KEY `FK374A0784750868B6` (`USERID`),
  KEY `FK374A0784D1AB1F8E` (`SUBJECTID`),
  CONSTRAINT `FK374A0784750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK374A0784D1AB1F8E` FOREIGN KEY (`SUBJECTID`) REFERENCES `subject` (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectperformance`
--

LOCK TABLES `subjectperformance` WRITE;
/*!40000 ALTER TABLE `subjectperformance` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjectperformance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectteacher`
--

DROP TABLE IF EXISTS `subjectteacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjectteacher` (
  `SUBJECTTEACHERID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `COURSESUBJECTID` int(11) DEFAULT NULL,
  `BATCHID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SUBJECTTEACHERID`),
  KEY `FK2E671361FEFE2EA` (`BATCHID`),
  KEY `FK2E67136750868B6` (`USERID`),
  KEY `FK2E67136ED6A0F8` (`COURSESUBJECTID`),
  CONSTRAINT `FK2E671361FEFE2EA` FOREIGN KEY (`BATCHID`) REFERENCES `batch` (`BATCHID`),
  CONSTRAINT `FK2E67136750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK2E67136ED6A0F8` FOREIGN KEY (`COURSESUBJECTID`) REFERENCES `coursesubject` (`COURSESUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectteacher`
--

LOCK TABLES `subjectteacher` WRITE;
/*!40000 ALTER TABLE `subjectteacher` DISABLE KEYS */;
INSERT INTO `subjectteacher` VALUES (1,'senzit',1,'101'),(2,'senzit',3,'101'),(3,'senzit',8,'101'),(11,'abdullah',7,'101'),(12,'john',8,'101'),(13,'abdullah',9,'101'),(14,'abdullah',10,'101'),(15,'john',2,'101'),(16,'john',4,'101'),(17,'john',5,'101');
/*!40000 ALTER TABLE `subjectteacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `SURVEYID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SURVEYID`),
  KEY `FKCAE3A75ACA87A7CF` (`CREATEDBY`),
  CONSTRAINT `FKCAE3A75ACA87A7CF` FOREIGN KEY (`CREATEDBY`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (19,'Parent Engagement Survey\n','ramu'),(22,'Survey Question','ramu'),(23,'Sample1','ramu');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_option`
--

DROP TABLE IF EXISTS `survey_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_option` (
  `OPTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `OPTION_VALUE` varchar(255) DEFAULT NULL,
  `QNID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPTIONID`),
  KEY `FK8E66C4FA88455B31` (`QNID`),
  CONSTRAINT `FK8E66C4FA88455B31` FOREIGN KEY (`QNID`) REFERENCES `survey_question` (`QUESTIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_option`
--

LOCK TABLES `survey_option` WRITE;
/*!40000 ALTER TABLE `survey_option` DISABLE KEYS */;
INSERT INTO `survey_option` VALUES (189,'Almost never     ',48),(190,'Once or twice per year',48),(191,'Every few months',48),(192,'Monthly  Weekly or more',48),(201,'Price',51),(202,' Location ',51),(203,'Transport ',51),(204,'Other',51),(205,'  Wallmart ',52),(206,' Tesco ',52),(207,' Macy?s ',52),(208,' The Home Depot',52),(209,' Strongly Agree     ',53),(210,'Somewhat Disagree ',53),(211,' Neither Agree',53),(212,'nor Disagree',53),(213,'  Do not own a computer',54),(214,' IBM PC',54),(215,' Apple',54),(216,' Other',54),(217,' country ',55),(218,' farm',55),(219,' city',55),(220,' Village',55),(221,'It\'s the worst report I\'ve read',56),(222,' It\'s somewhere between the worst and best ',56),(223,' t\'s the best report I\'ve read',56),(224,' Not Bad',56);
/*!40000 ALTER TABLE `survey_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_question` (
  `QUESTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `QUESTION` varchar(255) DEFAULT NULL,
  `SURVEYID` int(11) DEFAULT NULL,
  PRIMARY KEY (`QUESTIONID`),
  KEY `FK4F016B2BBE9EDC28` (`SURVEYID`),
  CONSTRAINT `FK4F016B2BBE9EDC28` FOREIGN KEY (`SURVEYID`) REFERENCES `survey` (`SURVEYID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_question`
--

LOCK TABLES `survey_question` WRITE;
/*!40000 ALTER TABLE `survey_question` DISABLE KEYS */;
INSERT INTO `survey_question` VALUES (48,' How often do you meet in person with teachers at your child\'s school?',19),(51,'Please sort the following items according to their importance of the deciding factor when purchasing holiday abroad:  ',22),(52,' Which one of the following stores do you most often visit? ',22),(53,'Overall, I am very satisfied with the way [Company] performed (is performing) on this project.',23),(54,' What brand of computer do you own?',23),(55,' Where did you grow up? ',23),(56,' What do you think about this report? ',23);
/*!40000 ALTER TABLE `survey_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_user`
--

DROP TABLE IF EXISTS `survey_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_user` (
  `SURVEYUSERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `SURVEY_OPTION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SURVEYUSERID`),
  KEY `FK23528590A3F22B08` (`SURVEY_OPTION_ID`),
  KEY `FK235285909706BF66` (`USERNAME`),
  CONSTRAINT `FK235285909706BF66` FOREIGN KEY (`USERNAME`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK23528590A3F22B08` FOREIGN KEY (`SURVEY_OPTION_ID`) REFERENCES `survey_option` (`OPTIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_user`
--

LOCK TABLES `survey_user` WRITE;
/*!40000 ALTER TABLE `survey_user` DISABLE KEYS */;
INSERT INTO `survey_user` VALUES (1,'ramu',204),(2,'ramu',207),(3,'ramu',204),(4,'ramu',207),(5,'ramu',209),(6,'ramu',215),(7,'ramu',218),(8,'ramu',224),(9,'ramu',190),(10,'ramu',190);
/*!40000 ALTER TABLE `survey_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targetattendancepercentage`
--

DROP TABLE IF EXISTS `targetattendancepercentage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targetattendancepercentage` (
  `ATTENDANCEID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  `TARGETATTENDANCE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ATTENDANCEID`),
  KEY `FK3AD905549E00B6D4` (`COURSEBATCHID`),
  KEY `FK3AD90554750868B6` (`USERID`),
  CONSTRAINT `FK3AD90554750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK3AD905549E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targetattendancepercentage`
--

LOCK TABLES `targetattendancepercentage` WRITE;
/*!40000 ALTER TABLE `targetattendancepercentage` DISABLE KEYS */;
INSERT INTO `targetattendancepercentage` VALUES (4,'abdullah',101,'80'),(5,'john',101,'85');
/*!40000 ALTER TABLE `targetattendancepercentage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targetpasspercentage`
--

DROP TABLE IF EXISTS `targetpasspercentage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targetpasspercentage` (
  `TARGETID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  `TARGET` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TARGETID`),
  KEY `FKE771153C9E00B6D4` (`COURSEBATCHID`),
  KEY `FKE771153C750868B6` (`USERID`),
  CONSTRAINT `FKE771153C750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FKE771153C9E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targetpasspercentage`
--

LOCK TABLES `targetpasspercentage` WRITE;
/*!40000 ALTER TABLE `targetpasspercentage` DISABLE KEYS */;
INSERT INTO `targetpasspercentage` VALUES (1,'senzit',101,'56%'),(4,'abdullah',101,'70');
/*!40000 ALTER TABLE `targetpasspercentage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targetprogress`
--

DROP TABLE IF EXISTS `targetprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targetprogress` (
  `USERID` varchar(255) NOT NULL,
  `TARGET` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FKDF99F6BE750868B6` (`USERID`),
  CONSTRAINT `FKDF99F6BE750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targetprogress`
--

LOCK TABLES `targetprogress` WRITE;
/*!40000 ALTER TABLE `targetprogress` DISABLE KEYS */;
INSERT INTO `targetprogress` VALUES ('senzit','80% ','achieved');
/*!40000 ALTER TABLE `targetprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherrecommendation`
--

DROP TABLE IF EXISTS `teacherrecommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacherrecommendation` (
  `TEACHERRID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `SUBJECTID` varchar(255) DEFAULT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  `RATING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TEACHERRID`),
  KEY `FK9416981B750868B6` (`USERID`),
  KEY `FK9416981BD1AB1F8E` (`SUBJECTID`),
  CONSTRAINT `FK9416981B750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK9416981BD1AB1F8E` FOREIGN KEY (`SUBJECTID`) REFERENCES `subject` (`SUBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherrecommendation`
--

LOCK TABLES `teacherrecommendation` WRITE;
/*!40000 ALTER TABLE `teacherrecommendation` DISABLE KEYS */;
INSERT INTO `teacherrecommendation` VALUES (1,'abid','02','First','Need to improve'),(2,'athira','04','First','Need to improve'),(3,'anager','02','Third','Good');
/*!40000 ALTER TABLE `teacherrecommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempschedule`
--

DROP TABLE IF EXISTS `tempschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempschedule` (
  `TEMPSCHEDULEID` int(11) NOT NULL,
  `DAYID` varchar(255) DEFAULT NULL,
  `PERIODID` varchar(255) DEFAULT NULL,
  `SUBJECTTEACHERID` int(11) DEFAULT NULL,
  `COURSEBATCHID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TEMPSCHEDULEID`),
  KEY `FKF255C26B9E00B6D4` (`COURSEBATCHID`),
  KEY `FKF255C26B74FF39E2` (`PERIODID`),
  KEY `FKF255C26B799CA26C` (`SUBJECTTEACHERID`),
  KEY `FKF255C26B556365EE` (`DAYID`),
  CONSTRAINT `FKF255C26B556365EE` FOREIGN KEY (`DAYID`) REFERENCES `day` (`DAYID`),
  CONSTRAINT `FKF255C26B74FF39E2` FOREIGN KEY (`PERIODID`) REFERENCES `period` (`PERIODID`),
  CONSTRAINT `FKF255C26B799CA26C` FOREIGN KEY (`SUBJECTTEACHERID`) REFERENCES `subjectteacher` (`SUBJECTTEACHERID`),
  CONSTRAINT `FKF255C26B9E00B6D4` FOREIGN KEY (`COURSEBATCHID`) REFERENCES `coursebatch` (`COURSEBATCHID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempschedule`
--

LOCK TABLES `tempschedule` WRITE;
/*!40000 ALTER TABLE `tempschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topperformer`
--

DROP TABLE IF EXISTS `topperformer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topperformer` (
  `TOPPERFORMERID` int(11) NOT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  `NOOFTIMES` int(11) DEFAULT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `LIKES` int(11) DEFAULT NULL,
  PRIMARY KEY (`TOPPERFORMERID`),
  KEY `FK8778E19B98D186` (`CLASSEVENTDETAILID`),
  KEY `FK8778E19750868B6` (`USERID`),
  CONSTRAINT `FK8778E19750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK8778E19B98D186` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topperformer`
--

LOCK TABLES `topperformer` WRITE;
/*!40000 ALTER TABLE `topperformer` DISABLE KEYS */;
/*!40000 ALTER TABLE `topperformer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topsession`
--

DROP TABLE IF EXISTS `topsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topsession` (
  `TOPSESSIONID` int(11) NOT NULL DEFAULT '0',
  `USERLIKE` int(11) DEFAULT NULL,
  `DISLIKE` int(11) DEFAULT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TOPSESSIONID`),
  KEY `CLASSEVENTDETAILID` (`CLASSEVENTDETAILID`),
  CONSTRAINT `topsession_ibfk_1` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topsession`
--

LOCK TABLES `topsession` WRITE;
/*!40000 ALTER TABLE `topsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `topsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USERID` varchar(255) NOT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PROFILEPIC` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  `EMAILID` varchar(255) DEFAULT NULL,
  `MOBILENUMBER` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `REGFLAG` varchar(255) DEFAULT NULL,
  `MIDDLENAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('?','?',NULL,'http://202.191.65.180:8080/ProfilePic/a10.png',NULL,'aadffd','145236887777',NULL,'rfgfg',NULL),('abdullah','mohmd','abdullah','http://202.191.65.180:8080/ProfilePic/a3.png','06/02/1998','abdullah@gmail.com','097156478956','A2, Periyar Buiding, Technopark Campus,\nThiruvanathapuram, Kerala - 695581.','approved','aa'),('abid','abdullah','abid','http://202.191.65.180:8080/ProfilePic/a3.png','11/04/2000','abid@gmail.com','097112485477','A2, Periyar Buiding, Technopark Campus,\nThiruvanathapuram, Kerala - 695581.','approved','abid'),('admin','solutions',NULL,'http://202.191.65.180:8080/ProfilePic/a10.png',NULL,'admin@gmail.com','98951784123',NULL,'registered',NULL),('Ajini','SenzIT','mohan','http://202.191.65.180:8080/ProfilePic/a10.png','2015-11-04','senzit@gmail.com','9744968590',' A2 Periyar building Technopark','approved','rehmi'),('alen','alen','aa','http://202.191.65.180:8080/ProfilePic/a7.png','14/02/2000','alen@gmail.com','1478523698745','XXZXzxzXzXzX','approved','alu'),('alice','Alice','John','http://202.191.65.180:8080/ProfilePic/a4.png','12/03/2000','alice@gmail.com','1478523698555','A2, Periyar Buiding, Technopark Campus,\nThiruvanathapuram, Kerala - 695581.','approved','Maria'),('anager','eSenzit','solutions','http://202.191.65.180:8080/ProfilePic/a10.png','2012-12-12','dharsana.senzit@gmail.com','8891604108',' A2 periyar building technopark trivandrum','approved','pvt'),('athira','Athira','Chandra','http://202.191.65.180:8080/ProfilePic/a7.png','1236-07-02','athira@gmail.com','9895198951','Senzit Solutions Pvt Ltd, A2 Periyar Building\nTechnopark Campus,Kazhakkuttam.','approved','A'),('company123','company',NULL,'http://202.191.65.180:8080/ProfilePic/a10.png',NULL,'company@gmail.com','9895178341',NULL,'registered',NULL),('esenzit','solutions',NULL,'http://202.191.65.180:8080/ProfilePic/a10.png',NULL,'esenzit@gmail.com','9895178341',NULL,'registered',NULL),('glenn','glenn','ggg','http://202.191.65.180:8080/ProfilePic/a8.png','1236-07-02','glennemailid@email.com','123456987','1234589451256','approved','sdsad'),('john','john','hh','http://202.191.65.180:8080/ProfilePic/a2.png','14/02/1956','john@gmail.com','1478523698745','sdrwetertrtertrt','approved','honnay'),('manager','manager','mm','http://202.191.65.180:8080/ProfilePic/a6.png','1992-09-12','manager@gmail.com','9896352174','Senzit Solutions Pvt Ltd, A2 Periyar Building','approved','mm'),('ramu','Ramu','ramu','http://202.191.65.180:8080/ProfilePic/a9.png','2015-02-04','ramusss@gmail.com','313156125254','Senzit Solutions Pvt Ltd, A2 Periyar Building\nTechnopark Campus,Kazhakkuttam','approved','ramu'),('reshmi','reshmi','ss','http://202.191.65.180:8080/ProfilePic/a4.png','12/02/1984','reshmi@gmail.com','12365478912','asdasfsdfdsfdsfdsfsdfsdfd','approved','mohan'),('sabin','sabin','ss','http://202.191.65.180:8080/ProfilePic/a1.png','14/02/1985','sabin@gmail.com','1478523698','asdfsgsdgdgdsghdgdfghdfh','approved','ss'),('sangeetha','Sangeetha',NULL,'http://202.191.65.180:8080/ProfilePic/a10.png',NULL,'sang@gmail.com','2025065525',NULL,'registered',NULL),('Sen','Ajini',NULL,'http://202.191.65.180:8080/ProfilePic/a10.png',NULL,'ajinisen@gmail.com','9744968590',NULL,'registered',NULL),('senzit','SenzIT','Solutions','http://192.168.0.117:8080/ProfilePic/senzit.jpg','1236-07-02','senzitemailid@email.com','9895198951','A2, Periyar Building, Technopark Campus,\nThiruvananthapuram, Kerala, India - 695581','approved','India'),('senzit123','teacher','solutions','http://202.191.65.180:8080/ProfilePic/a10.png','2015-11-27','senzit@gmail.com','9895178341',' senzit solutions A2 periyar building technopark trivandrum','approved','senzit'),('shamaz','shamaz','ss','http://202.191.65.180:8080/ProfilePic/a9.png','12/02/2000','shamaz@gmail.com','147852369789654','sfsdfdsssssssssssssssssssssssss','approved','shah'),('shimla','Shimla','Shim','http://202.191.65.180:8080/ProfilePic/a4.png','1236-07-02','sfsd@fh','13546132',' shimla cottage\n','approved',' SS'),('titto','titto','tt','http://202.191.65.180:8080/ProfilePic/a2.png','1236-07-02','titt@gmail.com','98957989545','aaaa','approved','aaa'),('zereen','zereen','rr','http://202.191.65.180:8080/ProfilePic/a4.png','1236-07-02','shimla.senzit@gmail.com','1236547896','4566455654','registered','ghfh'),('ساشين','ساشين','gf','http://202.191.65.180:8080/ProfilePic/a4.png','1236-07-02','shimla.senzit@gmail.com','1236547896','1236547896','approved','fgfg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogin` (
  `USERID` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `CREATEDON` datetime DEFAULT NULL,
  `MODIFIEDON` datetime DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FKBB09BA5E750868B6` (`USERID`),
  CONSTRAINT `FKBB09BA5E750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogin`
--

LOCK TABLES `userlogin` WRITE;
/*!40000 ALTER TABLE `userlogin` DISABLE KEYS */;
INSERT INTO `userlogin` VALUES ('abdullah','password',NULL,NULL),('abid','password',NULL,NULL),('admin','password',NULL,NULL),('Ajini','password',NULL,NULL),('alen','password',NULL,NULL),('alice','password',NULL,NULL),('anager','password',NULL,NULL),('athira','password',NULL,NULL),('company123','password',NULL,NULL),('esenzit','password',NULL,NULL),('glenn','password',NULL,NULL),('john','password',NULL,NULL),('manager','password',NULL,NULL),('ramu','password',NULL,NULL),('reshmi','password',NULL,NULL),('sabin','password',NULL,NULL),('sangeetha','password',NULL,NULL),('Sen','ajinisen',NULL,NULL),('senzit','password',NULL,NULL),('senzit123','password',NULL,NULL),('shamaz','password',NULL,NULL),('shimla','password',NULL,NULL),('titto','password',NULL,NULL),('zereen','password',NULL,NULL),('ساشين','كلمة السر',NULL,NULL);
/*!40000 ALTER TABLE `userlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `USERID` varchar(255) NOT NULL,
  `ROLEID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `FK1ED17EC16FB3134C` (`ROLEID`),
  KEY `FK1ED17EC1750868B6` (`USERID`),
  CONSTRAINT `FK1ED17EC16FB3134C` FOREIGN KEY (`ROLEID`) REFERENCES `role` (`ROLEID`),
  CONSTRAINT `FK1ED17EC1750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES ('abdullah','1'),('john','1'),('senzit','1'),('abid','2'),('admin','2'),('Ajini','2'),('alen','2'),('alice','2'),('anager','2'),('athira','2'),('company123','2'),('esenzit','2'),('glenn','2'),('ramu','2'),('reshmi','2'),('sabin','2'),('sangeetha','2'),('Sen','2'),('senzit123','2'),('shamaz','2'),('shimla','2'),('titto','2'),('zereen','2'),('ساشين','2'),('manager','4');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videorating`
--

DROP TABLE IF EXISTS `videorating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videorating` (
  `RATINGID` int(11) NOT NULL,
  `VIDEORATE` varchar(255) DEFAULT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RATINGID`),
  KEY `FKF258D1B8B98D186` (`CLASSEVENTDETAILID`),
  CONSTRAINT `FKF258D1B8B98D186` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videorating`
--

LOCK TABLES `videorating` WRITE;
/*!40000 ALTER TABLE `videorating` DISABLE KEYS */;
INSERT INTO `videorating` VALUES (13,'Excellent',NULL),(14,'Excellent',NULL),(15,'Good',NULL),(16,'Bad',NULL),(17,'Excellent',NULL),(18,'Bad',NULL),(19,'Bad',NULL),(20,'Excellent',NULL),(21,'Bad',NULL),(22,'Excellent',NULL),(23,'Good',NULL),(24,'Good',NULL),(25,'Bad',NULL),(26,'Excellent',NULL),(27,'Excellent',NULL),(28,'Excellent',NULL),(29,'Like',NULL);
/*!40000 ALTER TABLE `videorating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewers`
--

DROP TABLE IF EXISTS `viewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewers` (
  `VIEWERID` int(11) NOT NULL,
  `USERID` varchar(255) DEFAULT NULL,
  `CLASSEVENTDETAILID` int(11) DEFAULT NULL,
  `USERRATECOUNT` int(11) DEFAULT NULL,
  `TEACHERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VIEWERID`),
  KEY `FK1B1310A1750868B6` (`USERID`),
  KEY `FK1B1310A1B98D186` (`CLASSEVENTDETAILID`),
  CONSTRAINT `FK1B1310A1750868B6` FOREIGN KEY (`USERID`) REFERENCES `user` (`USERID`),
  CONSTRAINT `FK1B1310A1B98D186` FOREIGN KEY (`CLASSEVENTDETAILID`) REFERENCES `classeventdetail` (`CLASSEVENTDETAILID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewers`
--

LOCK TABLES `viewers` WRITE;
/*!40000 ALTER TABLE `viewers` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04  4:47:49
