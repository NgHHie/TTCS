-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: javasql2
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `UserName` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Facebook` varchar(50) DEFAULT NULL,
  `Instagram` varchar(50) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Pass` varchar(50) DEFAULT NULL,
  `Avatar` varchar(50) DEFAULT NULL,
  `Role_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin@gmail.com','facebook.com/admin','instagram.com/admin','Admin','Admin','123456','admin.jpg','1'),('vu-admin','vu@gmail.com','havu2003','1','Hoàng','Vũ','1','2','2');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baithi`
--

DROP TABLE IF EXISTS `baithi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baithi` (
  `MaBaiThi` int NOT NULL AUTO_INCREMENT,
  `TenBaiThi` varchar(255) DEFAULT NULL,
  `ThoiGianBatDau` datetime DEFAULT NULL,
  `ThoiGianThi` int DEFAULT NULL,
  `SoLuongCau` int DEFAULT NULL,
  `TheLoai` varchar(50) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `TacGia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaBaiThi`),
  KEY `FK_TacGia` (`TacGia`),
  CONSTRAINT `FK_TacGia` FOREIGN KEY (`TacGia`) REFERENCES `sinhvien` (`MSV`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baithi`
--

LOCK TABLES `baithi` WRITE;
/*!40000 ALTER TABLE `baithi` DISABLE KEYS */;
INSERT INTO `baithi` VALUES (1,'Bài thi số 1','2024-03-28 12:00:00',30,2,'Trắc nghiệm','Mở','https://res.cloudinary.com/dyc1c2elf/image/upload/v1715441270/qaktgm9jbmsb2lxcm9xp.jpg','B21DCCN343'),(3,'Bài thi số 3','2024-03-28 12:00:00',30,4,'Trắc nghiệm','Mở','https://res.cloudinary.com/dyc1c2elf/image/upload/v1715591565/xkvnh7tp6x4zkrpfjvqi.png','B21DCCN343'),(4,'Bài thi số 4','2024-03-29 14:00:00',40,5,'Trắc nghiệm','Mở','https://res.cloudinary.com/dyc1c2elf/image/upload/v1715600123/bbof4qundanrxago8dy1.jpg','B21DCCN343'),(5,'Bài thi số 5','2024-03-30 16:00:00',35,2,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1715598548/isvqlncojeipikhnoqrj.jpg','B21DCCN343'),(6,'Mạng máy tính - CNTT','2024-05-14 07:50:00',90,5,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(7,'Mạng máy tính - ATTT','2024-05-14 20:13:00',90,5,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(9,'bài thi tạo ngày 20/5','2024-05-02 01:36:00',50,3,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(10,'bài thi tạo ngày 20/5 - 2','2024-05-02 01:36:00',50,3,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN795'),(11,'bài thi tạo ngày 20/5','2024-05-07 01:44:00',50,3,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN795'),(12,'21/5','2024-05-03 13:42:00',44,2,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN795'),(13,'30/5','2024-05-17 16:06:00',50,1,'Trắc nghiệm','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(14,'30/5 - 2','2024-05-11 16:31:00',50,2,'hôm nay đẹp trời','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(15,'30/5 - 3','2024-05-30 16:52:21',14,1,'sdfdfg','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(16,'30/5 - 4','2024-05-30 23:54:34',15,1,'sdfgsdf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(17,'30/5 - 5','2024-05-30 09:55:25',11,1,'sfdfadf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(18,'30/5 - 6','2024-05-30 10:49:28',18,1,'zsfasdfasdf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(19,'hiep','2024-05-30 11:52:04',2,1,'hiep hiep','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(20,'hiep2','2024-05-30 12:03:39',111,1,'dsffdsf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(21,'hiep3','2024-05-30 12:05:46',111,1,'dsffdsf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(22,'hiep4','2024-05-30 12:14:36',111,1,'dsffdsf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(23,'hiep4','2024-05-30 12:17:00',111,1,'dsffdsf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(24,'hiep4','2024-05-30 12:18:27',111,1,'dsffdsf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(25,'hiep5','2024-05-30 12:19:54',22,1,'sdgdg','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(26,'final','2024-05-30 12:28:23',1111,1,'fgsdfsdf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(27,'final','2024-05-30 12:30:10',1111,1,'fgsdfsdf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(28,'final','2024-05-30 12:30:57',1111,1,'fgsdfsdf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(29,'final fianl','2024-05-30 12:32:44',111,1,'dfgdg','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(30,'final3','2024-05-30 12:41:15',234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(31,'final4','2024-05-30 12:43:37',1111,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(32,'final5','2024-05-30 12:52:20',111,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(33,'final6','2024-05-30 13:11:38',1111,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(34,'final7','2024-05-30 13:14:39',13423,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(35,'final10','2024-05-30 13:22:26',1112,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(36,'oke con ga den','2024-05-30 13:39:34',112,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(37,'sdfgsdfg','2024-05-30 13:44:35',132,1,'sdfgdsf','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(38,'chan vai','2024-05-30 13:57:29',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(39,'haizz','2024-05-30 14:04:29',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(40,'haizz','2024-05-30 14:06:00',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(41,'haizz','2024-05-30 14:06:03',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(42,'haizz','2024-05-30 14:06:03',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(43,'dfgsdfg','2024-05-30 14:06:32',435,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1717077997/brehdmzoiiglj1ldwxpg.png','B21DCCN343'),(44,'haizzzzzz','2024-05-30 14:12:33',132,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(45,'sfdgsdfg','2024-05-30 14:14:23',123,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(46,'sfdgsdfg','2024-05-30 14:14:37',123,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(47,'sfgsfdg','2024-05-30 14:15:39',341,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(48,'sfgsfdg','2024-05-30 14:25:23',341,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(49,'sdfgdfsgdf','2024-05-30 14:25:52',345,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1717079156/ajgfaphvxho3zulkn08t.jpg','B21DCCN343'),(50,'không hiểu sao','2024-05-30 14:26:16',345,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(51,'àdsfasdf','2024-05-30 14:28:31',234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(52,'adfasdf','2024-05-30 14:33:03',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(53,'adfasdf','2024-05-30 14:33:27',1234,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(54,'srgsfdg','2024-05-30 14:34:10',34,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717079655/qz5tczdaf1dcgquzcm3u.png','B21DCCN343'),(55,'srgsfdg','2024-05-30 14:34:18',34,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717079659/owxsob1f9ag3jnabhpds.png','B21DCCN343'),(56,'srgsfdg','2024-05-30 14:34:25',34,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717079668/qbxzy4wjc7leifvwl3ir.png','B21DCCN343'),(57,'srgsfdg','2024-05-30 14:34:48',34,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(58,'srgsfdg','2024-05-30 14:37:33',34,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(59,'srgsfdg','2024-05-30 14:37:55',34,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(60,'srgsfdg','2024-05-30 14:38:11',34,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717079894/tffkfquq9nsx3pysjimb.png','B21DCCN343'),(61,'srgsfdg','2024-05-30 14:38:51',34,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(62,'srgsfdg','2024-05-30 14:39:59',34,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(63,'srgsfdg','2024-05-30 14:42:20',34,1,'','Đóng','https://res.cloudinary.com/dyc1c2elf/image/upload/v1714894653/hpz5yqojda1ajpnrpkvv.jpg','B21DCCN343'),(64,'srgsfdg','2024-05-30 14:42:33',34,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717080156/ckk1mr3wxifhhhzgpbb3.png','B21DCCN343'),(65,'khó hiểu','2024-05-30 14:45:33',134,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717080348/r0g9hhfghzlctqzojsde.jpg','B21DCCN343'),(66,'adfagad','2024-05-30 14:46:31',134,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717080405/ahhdmojrvyeocpgxo500.jpg','B21DCCN343'),(67,'dfgdsg','2024-05-30 14:48:56',134,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717080549/kaj3sqecsggtyrinmxoc.png','B21DCCN343'),(68,'dfsg','2024-05-30 14:52:53',234,1,'','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717080789/u1pzjfixsuwgfsnhvwpa.png','B21DCCN343'),(69,'wa met moi','2024-05-30 15:09:07',12,3,'oke','Đóng','https://res.cloudinary.com/dditosqku/image/upload/v1717081760/jluthxtkt4un7wih2y0v.png','B21DCCN343');
/*!40000 ALTER TABLE `baithi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cauhoi`
--

DROP TABLE IF EXISTS `cauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cauhoi` (
  `MaCauHoi` varchar(50) NOT NULL,
  `MaBaiThi` int NOT NULL,
  `DeBai` varchar(200) DEFAULT NULL,
  `SoThuTu` int DEFAULT NULL,
  `TheLoai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaCauHoi`,`MaBaiThi`),
  KEY `MaBaiThi` (`MaBaiThi`),
  CONSTRAINT `CauHoi_ibfk_1` FOREIGN KEY (`MaBaiThi`) REFERENCES `baithi` (`MaBaiThi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauhoi`
--

LOCK TABLES `cauhoi` WRITE;
/*!40000 ALTER TABLE `cauhoi` DISABLE KEYS */;
INSERT INTO `cauhoi` VALUES ('C01',1,'Câu hỏi số 1',1,'Trắc nghiệm'),('C01',3,'Câu hỏi số 1',1,'Trắc nghiệm'),('C01',4,'Câu hỏi số 1',1,'Trắc nghiệm'),('C01',5,'Câu hỏi số 1',1,'Trắc nghiệm'),('C01',6,'Thiết bị Router cho phép:',1,'Trắc nghiệm'),('C01',7,'Thiết bị Router cho phép:',1,'Trắc nghiệm'),('C01',9,'câu 1',1,'Trắc nghiệm'),('C01',10,'câu 1',1,'Trắc nghiệm'),('C01',11,'câu 1',1,'Trắc nghiệm'),('C01',12,'Tòa nhà kia cao bao tầng',1,'Trắc nghiệm'),('C01',13,'srgeg',1,'Trắc nghiệm'),('C01',14,'sdfasdf',1,'Trắc nghiệm'),('C01',15,'sdfgasdf',1,'Trắc nghiệm'),('C01',16,'ádfdsf',1,'Trắc nghiệm'),('C01',17,'adfasdf',1,'Trắc nghiệm'),('C01',18,'asdfasdf',1,'Trắc nghiệm'),('C01',19,'dfgdsfg',1,'Trắc nghiệm'),('C01',20,'stfasdf',1,'Trắc nghiệm'),('C01',21,'asdfsdf',1,'Trắc nghiệm'),('C01',22,'sfzdfgv',1,'Trắc nghiệm'),('C01',23,'rsgzg',1,'Trắc nghiệm'),('C01',24,'shdd',1,'Trắc nghiệm'),('C01',25,'zdfgvzdf',1,'Trắc nghiệm'),('C01',26,'ádfasd',1,'Trắc nghiệm'),('C01',27,'sdfgsdffgsd',1,'Trắc nghiệm'),('C01',28,'sdfsdf',1,'Trắc nghiệm'),('C01',29,'ádfsadfa·',1,'Trắc nghiệm'),('C01',30,'ádfgsdf',1,'Trắc nghiệm'),('C01',31,'aefsef',1,'Trắc nghiệm'),('C01',32,'sdfgsdfg',1,'Trắc nghiệm'),('C01',33,'ưeqtqwer',1,'Trắc nghiệm'),('C01',34,'ưeqrr',1,'Trắc nghiệm'),('C01',35,'ádrfasdf',1,'Trắc nghiệm'),('C01',36,'sdfgdf',1,'Trắc nghiệm'),('C01',37,'ádfasdfasf',1,'Trắc nghiệm'),('C01',38,'è',1,'Trắc nghiệm'),('C01',39,'đà',1,'Trắc nghiệm'),('C01',40,'đà',1,'Trắc nghiệm'),('C01',41,'đà',1,'Trắc nghiệm'),('C01',42,'đà',1,'Trắc nghiệm'),('C01',43,'dfsgdfg',1,'Trắc nghiệm'),('C01',44,'êr',1,'Trắc nghiệm'),('C01',45,'ưerwer',1,'Trắc nghiệm'),('C01',46,'ưerwer',1,'Trắc nghiệm'),('C01',47,'ádfdaf',1,'Trắc nghiệm'),('C01',48,'ádfdaf',1,'Trắc nghiệm'),('C01',49,'sdzfgsdf',1,'Trắc nghiệm'),('C01',50,'sdzfgsdf',1,'Trắc nghiệm'),('C01',51,'adsfsdf',1,'Trắc nghiệm'),('C01',52,'ádfdsf',1,'Trắc nghiệm'),('C01',53,'ádfdsf',1,'Trắc nghiệm'),('C01',54,'adgdf',1,'Trắc nghiệm'),('C01',55,'adgdf',1,'Trắc nghiệm'),('C01',56,'adgdf',1,'Trắc nghiệm'),('C01',57,'adgdf',1,'Trắc nghiệm'),('C01',58,'adgdf',1,'Trắc nghiệm'),('C01',59,'adgdf',1,'Trắc nghiệm'),('C01',60,'adgdf',1,'Trắc nghiệm'),('C01',61,'adgdf',1,'Trắc nghiệm'),('C01',62,'adgdf',1,'Trắc nghiệm'),('C01',63,'adgdf',1,'Trắc nghiệm'),('C01',64,'adgdf',1,'Trắc nghiệm'),('C01',65,'sgdfg',1,'Trắc nghiệm'),('C01',66,'sdfgsdg',1,'Trắc nghiệm'),('C01',67,'sdfgdsg',1,'Trắc nghiệm'),('C01',68,'ádfgasdf',1,'Trắc nghiệm'),('C01',69,'Tòa nhà kia cao bao tầng',1,'Trắc nghiệm'),('C02',1,'Câu hỏi số 2',2,'Trắc nghiệm'),('C02',3,'Câu hỏi số 2',2,'Trắc nghiệm'),('C02',4,'Câu hỏi số 2',2,'Trắc nghiệm'),('C02',5,'Câu hỏi số 2',2,'Trắc nghiệm'),('C02',6,'Protocol nào được sử dụng cho mạng Internet:',2,'Trắc nghiệm'),('C02',7,'Protocol nào được sử dụng cho mạng Internet:',2,'Trắc nghiệm'),('C02',9,'Tòa nhà kia cao bao tầng',2,'Trắc nghiệm'),('C02',10,'Tòa nhà kia cao bao tầng',2,'Trắc nghiệm'),('C02',11,'Tòa nhà kia cao bao tầng',2,'Trắc nghiệm'),('C02',12,'Nước Ý có thủ đô là',2,'Trắc nghiệm'),('C02',14,'ádfsdfasd',2,'Trắc nghiệm'),('C02',69,'Hà nội',2,'Trắc nghiệm'),('C03',3,'Câu hỏi số 3',3,'Trắc nghiệm'),('C03',4,'Câu hỏi số 3',3,'Trắc nghiệm'),('C03',6,'Các chuẩn JPEG, TIFF, ASCII, EBCDIC do tầng nào của mô hình OSI định nghĩa:',3,'Trắc nghiệm'),('C03',7,'Các chuẩn JPEG, TIFF, ASCII, EBCDIC do tầng nào của mô hình OSI định nghĩa:',3,'Trắc nghiệm'),('C03',9,'Hà nội',3,'Trắc nghiệm'),('C03',10,'Hà nội',3,'Trắc nghiệm'),('C03',11,'Hà nội',3,'Trắc nghiệm'),('C03',69,'Tokyo',3,'Trắc nghiệm'),('C04',3,'Câu hỏi số 4',4,'Trắc nghiệm'),('C04',4,'Câu hỏi số 4',4,'Trắc nghiệm'),('C04',6,'Thứ tự đóng gói dữ liệu khi truyền qua mô hình OSI:',4,'Trắc nghiệm'),('C04',7,'Thứ tự đóng gói dữ liệu khi truyền qua mô hình OSI:',4,'Trắc nghiệm'),('C05',4,'Câu hỏi số 5',5,'Trắc nghiệm'),('C05',6,'Các chuẩn JPEG, TIFF, ASCII, EBCDIC do tầng nào của mô hình OSI định nghĩa:',5,'Trắc nghiệm'),('C05',7,'cau5',5,'Trắc nghiệm');
/*!40000 ALTER TABLE `cauhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haspermission`
--

DROP TABLE IF EXISTS `haspermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `haspermission` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Role_id` int DEFAULT NULL,
  `Permission_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Role_id` (`Role_id`),
  KEY `Permission_id` (`Permission_id`),
  CONSTRAINT `HasPermission_ibfk_1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`Id`),
  CONSTRAINT `HasPermission_ibfk_2` FOREIGN KEY (`Permission_id`) REFERENCES `permission` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haspermission`
--

LOCK TABLES `haspermission` WRITE;
/*!40000 ALTER TABLE `haspermission` DISABLE KEYS */;
INSERT INTO `haspermission` VALUES (1,1,1),(2,1,2),(4,1,4),(5,1,5),(6,1,6),(8,1,3),(9,2,2),(10,2,3),(11,2,4),(12,2,5);
/*!40000 ALTER TABLE `haspermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketqua`
--

DROP TABLE IF EXISTS `ketqua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ketqua` (
  `MaKetQua` int NOT NULL AUTO_INCREMENT,
  `MSV` varchar(50) DEFAULT NULL,
  `MaBaiThi` int DEFAULT NULL,
  `Diem` float DEFAULT NULL,
  `ThoiGianLamBai` datetime DEFAULT NULL,
  `ThoiGianNopBai` datetime DEFAULT NULL,
  PRIMARY KEY (`MaKetQua`),
  KEY `MaBaiThi` (`MaBaiThi`),
  KEY `FK_MSV_SinhVien` (`MSV`),
  CONSTRAINT `FK_MSV_SinhVien` FOREIGN KEY (`MSV`) REFERENCES `sinhvien` (`MSV`) ON DELETE CASCADE,
  CONSTRAINT `KetQua_ibfk_2` FOREIGN KEY (`MaBaiThi`) REFERENCES `baithi` (`MaBaiThi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketqua`
--

LOCK TABLES `ketqua` WRITE;
/*!40000 ALTER TABLE `ketqua` DISABLE KEYS */;
INSERT INTO `ketqua` VALUES (5,'B21DCCN343',1,0,'2024-05-13 14:46:59','2024-05-13 14:47:03'),(6,'B21DCCN343',1,0,'2024-05-13 14:47:30','2024-05-13 14:47:49'),(7,'B21DCCN343',1,0,'2024-05-13 16:49:49','2024-05-13 16:49:53'),(8,'B21DCCN343',6,2,'2024-05-13 21:43:51','2024-05-13 21:44:04'),(9,'B21DCCN343',1,5,'2024-05-13 22:12:45','2024-05-13 22:12:52'),(10,'B21DCCN343',4,0,'2024-05-14 05:31:46','2024-05-14 05:31:53'),(11,'B21DCCN343',3,5,'2024-05-14 08:36:51','2024-05-14 08:37:02'),(12,'B21DCCN343',3,0,'2024-05-17 23:11:33','2024-05-17 23:11:46'),(13,'B21DCCN343',1,10,'2024-05-21 13:36:55','2024-05-21 13:37:01'),(14,'B21DCCN343',12,5,'2024-05-21 13:40:55','2024-05-21 13:41:01'),(15,'B21DCCN343',16,0,'2024-05-30 17:57:20','2024-05-30 17:57:23');
/*!40000 ALTER TABLE `ketqua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketquatungcau`
--

DROP TABLE IF EXISTS `ketquatungcau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ketquatungcau` (
  `MaChiTiet` varchar(50) NOT NULL,
  `MaKetqua` varchar(50) NOT NULL,
  `MaBaiThi` int DEFAULT NULL,
  `MaCauHoi` varchar(50) DEFAULT NULL,
  `MaLuaChon` varchar(5) DEFAULT NULL,
  `Dung` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`MaChiTiet`,`MaKetqua`),
  KEY `MaBaiThi` (`MaBaiThi`),
  KEY `MaKetqua` (`MaKetqua`),
  KEY `MaCauHoi` (`MaCauHoi`,`MaLuaChon`),
  CONSTRAINT `KetQuaTungCau_ibfk_1` FOREIGN KEY (`MaBaiThi`) REFERENCES `baithi` (`MaBaiThi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `KetQuaTungCau_ibfk_3` FOREIGN KEY (`MaCauHoi`, `MaLuaChon`) REFERENCES `luachon` (`MaCauHoi`, `MaLuaChon`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketquatungcau`
--

LOCK TABLES `ketquatungcau` WRITE;
/*!40000 ALTER TABLE `ketquatungcau` DISABLE KEYS */;
INSERT INTO `ketquatungcau` VALUES ('CT01','10',4,'C01','B',0),('CT01','11',3,'C01','B',0),('CT01','12',3,'C01','B',0),('CT01','13',1,'C01','A',1),('CT01','14',12,'C01','A',0),('CT01','15',16,'C01','A',0),('CT02','1',1,'C02','B',1),('CT02','10',4,'C02','D',0),('CT02','11',3,'C02','B',1),('CT02','12',3,'C02','A',0),('CT02','13',1,'C02','B',1),('CT02','14',12,'C02','C',1),('CT02','5',1,'C02','A',0),('CT02','6',1,'C02','A',0),('CT02','7',1,'C02','A',0),('CT02','8',6,'C02','A',1),('CT02','9',1,'C02','A',0),('CT03','1',1,'C03','C',0),('CT03','10',4,'C03','B',0),('CT03','11',3,'C03','B',0),('CT03','12',3,'C03','B',0),('CT03','8',6,'C03','B',0),('CT04','10',4,'C04','A',0),('CT04','11',3,'C04','D',1),('CT04','12',3,'C04','C',0),('CT04','8',6,'C04','A',0),('CT05','10',4,'C05','B',0),('CT05','2',1,'C02','B',0),('CT05','8',6,'C05','A',0),('CT06','2',1,'C03','C',0);
/*!40000 ALTER TABLE `ketquatungcau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luachon`
--

DROP TABLE IF EXISTS `luachon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luachon` (
  `MaCauHoi` varchar(50) NOT NULL,
  `MaLuaChon` varchar(50) NOT NULL,
  `MaBaiThi` int NOT NULL,
  `Dung` tinyint(1) DEFAULT NULL,
  `NoiDung` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MaCauHoi`,`MaLuaChon`,`MaBaiThi`),
  KEY `MaCauHoi` (`MaCauHoi`,`MaBaiThi`),
  CONSTRAINT `LuaChon_ibfk_1` FOREIGN KEY (`MaCauHoi`, `MaBaiThi`) REFERENCES `cauhoi` (`MaCauHoi`, `MaBaiThi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luachon`
--

LOCK TABLES `luachon` WRITE;
/*!40000 ALTER TABLE `luachon` DISABLE KEYS */;
INSERT INTO `luachon` VALUES ('C01','A',1,1,'Đáp án A cho câu hỏi 1'),('C01','A',3,1,'Đáp án A cho câu hỏi 1'),('C01','A',4,1,'Đáp án A cho câu hỏi 1'),('C01','A',5,1,'Đáp án A cho câu hỏi 1'),('C01','A',6,1,'Kéo dài 1nhánh LAN thông qua việc khuyếch đại tín hiệu truyền đến nó'),('C01','A',7,1,'Kéo dài 1nhánh LAN thông qua việc khuyếch đại tín hiệu truyền đến nó'),('C01','A',9,0,'a '),('C01','A',10,0,'a'),('C01','A',11,0,'a'),('C01','A',12,0,'Một tầng'),('C01','A',13,1,'df'),('C01','A',14,0,'adfasdf'),('C01','A',15,0,'ádfadf'),('C01','A',16,0,'ádfasf'),('C01','A',17,0,'ádfasf'),('C01','A',18,1,'asdfasdf'),('C01','A',19,0,'sdfgsdfg'),('C01','A',20,0,'asdfasd'),('C01','A',21,0,'dsfdsf'),('C01','A',22,0,'zfgfd'),('C01','A',23,1,'dfzvv'),('C01','A',24,1,'fdgfdf'),('C01','A',25,0,'zvfdzvz'),('C01','A',26,0,'fasdf'),('C01','A',27,0,'fsadf'),('C01','A',28,1,'sdfsfs'),('C01','A',29,1,'ádfasdf'),('C01','A',30,0,'ádfasdfá'),('C01','A',31,0,'ádfasdf'),('C01','A',32,0,'sdfgsdfg'),('C01','A',33,1,'ưerawef'),('C01','A',34,1,'qưerqewr'),('C01','A',35,1,'ádfasdfa'),('C01','A',36,1,'sdfgsdfg'),('C01','A',37,1,'asdfasdf'),('C01','A',38,0,'ádfasdf'),('C01','A',39,0,'adsfasdf'),('C01','A',40,0,'adsfasdf'),('C01','A',41,0,'adsfasdf'),('C01','A',42,0,'adsfasdf'),('C01','A',43,0,'sdfgsdfg'),('C01','A',44,1,'ưerqewrq'),('C01','A',45,0,'qẻqwer'),('C01','A',46,0,'qẻqwer'),('C01','A',47,0,'adsfadsf'),('C01','A',48,0,'adsfadsf'),('C01','A',49,0,'adfasdf'),('C01','A',50,0,'adfasdf'),('C01','A',51,0,'adsfasdf'),('C01','A',52,0,'adsfasdf'),('C01','A',53,0,'adsfasdf'),('C01','A',54,0,'ádfasdf'),('C01','A',55,0,'ádfasdf'),('C01','A',56,0,'ádfasdf'),('C01','A',57,0,'ádfasdf'),('C01','A',58,0,'ádfasdf'),('C01','A',59,0,'ádfasdf'),('C01','A',60,0,'ádfasdf'),('C01','A',61,0,'ádfasdf'),('C01','A',62,0,'ádfasdf'),('C01','A',63,0,'ádfasdf'),('C01','A',64,0,'ádfasdf'),('C01','A',65,0,'sdfgsdfgs'),('C01','A',66,0,'sfdgsfdg'),('C01','A',67,0,'adfgsdfg'),('C01','A',68,0,'ádfasdf'),('C01','A',69,1,'Một tầng'),('C01','B',1,0,'Đáp án B cho câu hỏi 1'),('C01','B',3,0,'Đáp án B cho câu hỏi 1'),('C01','B',4,0,'Đáp án B cho câu hỏi 1'),('C01','B',5,0,'Đáp án B cho câu hỏi 1'),('C01','B',6,0,' Kết nối nhiều máy tính lại với nhau'),('C01','B',7,0,' Kết nối nhiều máy tính lại với nhau'),('C01','B',9,1,'b'),('C01','B',10,0,'b'),('C01','B',11,0,'b'),('C01','B',12,0,'Hai tầng'),('C01','B',13,0,'gsdfgsd'),('C01','B',14,1,'ádfasd'),('C01','B',15,0,'adsfasdf'),('C01','B',16,0,'ádfasdf'),('C01','B',17,0,'ádfasd'),('C01','B',18,0,'asdfasdf'),('C01','B',19,0,'sdfgsdfg'),('C01','B',20,0,'fasdfasd'),('C01','B',21,0,'dfsd'),('C01','B',22,1,'zfdgd'),('C01','B',23,0,'dzvdv'),('C01','B',24,0,'gdg'),('C01','B',25,0,'vfdv'),('C01','B',26,0,'ádfasdf'),('C01','B',27,0,'ádfasf'),('C01','B',28,0,'dfsdf'),('C01','B',29,0,'ádfasdf'),('C01','B',30,0,'ấdf'),('C01','B',31,1,'ádfasdfads'),('C01','B',32,1,'sdfgsdg'),('C01','B',33,0,'ádfasdf'),('C01','B',34,0,'qưerqwer'),('C01','B',35,0,'dsfasdf'),('C01','B',36,0,'sdfgsdfgs'),('C01','B',37,0,'ádfasdf'),('C01','B',38,1,'ádfadsf'),('C01','B',39,1,'ádfasdf'),('C01','B',40,1,'ádfasdf'),('C01','B',41,1,'ádfasdf'),('C01','B',42,1,'ádfasdf'),('C01','B',43,0,'sdfgsdg'),('C01','B',44,0,'ẻqwer'),('C01','B',45,1,'qewrqwer'),('C01','B',46,1,'qewrqwer'),('C01','B',47,1,'ádfasdf'),('C01','B',48,1,'ádfasdf'),('C01','B',49,0,'sadfasdf'),('C01','B',50,0,'sadfasdf'),('C01','B',51,1,'ádfasdf'),('C01','B',52,0,'ádfasdf'),('C01','B',53,0,'ádfasdf'),('C01','B',54,0,'ádfaf'),('C01','B',55,0,'ádfaf'),('C01','B',56,0,'ádfaf'),('C01','B',57,0,'ádfaf'),('C01','B',58,0,'ádfaf'),('C01','B',59,0,'ádfaf'),('C01','B',60,0,'ádfaf'),('C01','B',61,0,'ádfaf'),('C01','B',62,0,'ádfaf'),('C01','B',63,0,'ádfaf'),('C01','B',64,0,'ádfaf'),('C01','B',65,0,'dfgsdfg'),('C01','B',66,0,'sdfgsfdgs'),('C01','B',67,0,'sdfgsg'),('C01','B',68,1,'ádfasdf'),('C01','B',69,0,'Hai tầng'),('C01','C',1,0,'Đáp án C cho câu hỏi 1'),('C01','C',3,0,'Đáp án C cho câu hỏi 1'),('C01','C',4,0,'Đáp án C cho câu hỏi 1'),('C01','C',5,0,'Đáp án C cho câu hỏi 1'),('C01','C',6,0,'Liên kết nhiều mạng LAN lại với nhau, đồng thời ngăn không cho các packet thuộc loại Broadcast đi qua nó và giúp việc định tuyến cho các packets'),('C01','C',7,0,'Liên kết nhiều mạng LAN lại với nhau, đồng thời ngăn không cho các packet thuộc loại Broadcast đi qua nó và giúp việc định tuyến cho các packets'),('C01','C',9,0,'c'),('C01','C',10,1,'c'),('C01','C',11,1,'c'),('C01','C',12,1,'Ba tầng'),('C01','C',13,0,'fgsdfg'),('C01','C',14,0,'fasdf'),('C01','C',15,1,'ádfasd'),('C01','C',16,0,'ádfasf'),('C01','C',17,1,'ádfasdf'),('C01','C',18,0,'asdfasdf'),('C01','C',19,0,'sdfgsdfg'),('C01','C',20,0,'fasdf'),('C01','C',21,1,'asdfad'),('C01','C',22,0,'zfgfdzg'),('C01','C',23,0,'zvzdvz'),('C01','C',24,0,'dzgzdgzd'),('C01','C',25,1,'fvzvfz'),('C01','C',26,1,'ádfasdf'),('C01','C',27,1,'ấdfá'),('C01','C',28,0,'sdfsf'),('C01','C',29,0,'ádfasdf'),('C01','C',30,0,'ádfasdfasd'),('C01','C',31,0,'fasdf'),('C01','C',32,0,'sdfgsdfg'),('C01','C',33,0,'ádfasdf'),('C01','C',34,0,'qưerqw'),('C01','C',35,0,'ádfasdf'),('C01','C',36,0,'dfgsdfg'),('C01','C',37,0,'ádfasdf'),('C01','C',38,0,'ádfasdf'),('C01','C',39,0,'ádfasf'),('C01','C',40,0,'ádfasf'),('C01','C',41,0,'ádfasf'),('C01','C',42,0,'ádfasf'),('C01','C',43,0,'sdfgsfdg'),('C01','C',44,0,'qưerqewr'),('C01','C',45,0,'qưerqwr'),('C01','C',46,0,'qưerqwr'),('C01','C',47,0,'ádfasd'),('C01','C',48,0,'ádfasd'),('C01','C',49,1,'adsfasdf'),('C01','C',50,1,'adsfasdf'),('C01','C',51,0,'ádfasád'),('C01','C',52,0,'ádfasdf'),('C01','C',53,0,'ádfasdf'),('C01','C',54,0,'ádfasdf'),('C01','C',55,0,'ádfasdf'),('C01','C',56,0,'ádfasdf'),('C01','C',57,0,'ádfasdf'),('C01','C',58,0,'ádfasdf'),('C01','C',59,0,'ádfasdf'),('C01','C',60,0,'ádfasdf'),('C01','C',61,0,'ádfasdf'),('C01','C',62,0,'ádfasdf'),('C01','C',63,0,'ádfasdf'),('C01','C',64,0,'ádfasdf'),('C01','C',65,0,'sdfgsdfg'),('C01','C',66,0,'fdgdsg'),('C01','C',67,1,'sdfgsdg'),('C01','C',68,0,'ádfasd'),('C01','C',69,0,'Ba tầng'),('C01','D',1,0,'Đáp án D cho câu hỏi 1'),('C01','D',3,0,'Đáp án D cho câu hỏi 1'),('C01','D',4,0,'Đáp án D cho câu hỏi 1'),('C01','D',5,0,'Đáp án D cho câu hỏi 1'),('C01','D',6,0,'Định tuyến cho các packet, chia nhỏ các Collision Domain nhưng không chia nhỏ các Broadcast Domain'),('C01','D',7,0,'Định tuyến cho các packet, chia nhỏ các Collision Domain nhưng không chia nhỏ các Broadcast Domain'),('C01','D',9,0,'d'),('C01','D',10,0,'d'),('C01','D',11,0,'d'),('C01','D',12,0,'4'),('C01','D',13,0,'fgsdfg'),('C01','D',14,0,'zfxcvzxcv'),('C01','D',15,0,'fasdf'),('C01','D',16,1,'ádf'),('C01','D',17,0,'ádf'),('C01','D',18,0,'asdfsadf'),('C01','D',19,1,'sdfgsdfg'),('C01','D',20,1,'asdfasd'),('C01','D',21,0,'asdfasdf'),('C01','D',22,0,'zfdgfg'),('C01','D',23,0,'vzv'),('C01','D',24,0,'fzg'),('C01','D',25,0,'vzv'),('C01','D',26,0,'ádf'),('C01','D',27,0,'df'),('C01','D',28,0,'sdfsf'),('C01','D',29,0,'ádfasdf'),('C01','D',30,1,'ádfasdf'),('C01','D',31,0,'ádfasd'),('C01','D',32,0,'sdfgsdfg'),('C01','D',33,0,'ádfasdf'),('C01','D',34,0,'qưerqwer'),('C01','D',35,0,'ádfasd'),('C01','D',36,0,'sdfgsdfg'),('C01','D',37,0,'ádfasdf'),('C01','D',38,0,'ádffasdf'),('C01','D',39,0,'ádfsadf'),('C01','D',40,0,'ádfsadf'),('C01','D',41,0,'ádfsadf'),('C01','D',42,0,'ádfsadf'),('C01','D',43,1,'sdfgsdfg'),('C01','D',44,0,'qưerqewr'),('C01','D',45,0,'qẻqwr'),('C01','D',46,0,'qẻqwr'),('C01','D',47,0,'dfasdf'),('C01','D',48,0,'dfasdf'),('C01','D',49,0,'ádfa'),('C01','D',50,0,'ádfa'),('C01','D',51,0,'fas'),('C01','D',52,1,'dfasdf'),('C01','D',53,1,'dfasdf'),('C01','D',54,1,'adfasdf'),('C01','D',55,1,'adfasdf'),('C01','D',56,1,'adfasdf'),('C01','D',57,1,'adfasdf'),('C01','D',58,1,'adfasdf'),('C01','D',59,1,'adfasdf'),('C01','D',60,1,'adfasdf'),('C01','D',61,1,'adfasdf'),('C01','D',62,1,'adfasdf'),('C01','D',63,1,'adfasdf'),('C01','D',64,1,'adfasdf'),('C01','D',65,1,'sdfgsdfg'),('C01','D',66,1,'sdfgsg'),('C01','D',67,0,'sdfgsdfg'),('C01','D',68,0,'fasdfa'),('C01','D',69,0,'Nước Ý có thủ đô là'),('C02','A',1,0,'Đáp án A cho câu hỏi 2'),('C02','A',3,0,'Đáp án A cho câu hỏi 2'),('C02','A',4,0,'Đáp án A cho câu hỏi 2'),('C02','A',5,0,'Đáp án A cho câu hỏi 2'),('C02','A',6,1,'TCP/IP'),('C02','A',7,0,'TCP/IP'),('C02','A',9,1,'Một tầng'),('C02','A',10,1,'Một tầng'),('C02','A',11,1,'Một tầng'),('C02','A',12,0,'Hà nội'),('C02','A',14,1,'ádfasf'),('C02','A',69,1,'a'),('C02','B',1,1,'Đáp án B cho câu hỏi 2'),('C02','B',3,1,'Đáp án B cho câu hỏi 2'),('C02','B',4,1,'Đáp án B cho câu hỏi 2'),('C02','B',5,1,'Đáp án B cho câu hỏi 2'),('C02','B',6,0,'Netbeui'),('C02','B',7,1,'Netbeui'),('C02','B',9,0,'Hai tầng'),('C02','B',10,0,'Hai tầng'),('C02','B',11,0,'Hai tầng'),('C02','B',12,0,'Tokyo'),('C02','B',14,0,'ádfas'),('C02','B',69,0,'b'),('C02','C',1,0,'Đáp án C cho câu hỏi 2'),('C02','C',3,0,'Đáp án C cho câu hỏi 2'),('C02','C',4,0,'Đáp án C cho câu hỏi 2'),('C02','C',5,0,'Đáp án C cho câu hỏi 2'),('C02','C',6,0,' IPX/SPX'),('C02','C',7,0,' IPX/SPX'),('C02','C',9,0,'Ba tầng'),('C02','C',10,0,'Ba tầng'),('C02','C',11,0,'Ba tầng'),('C02','C',12,1,'Bắc kinh'),('C02','C',14,0,'ádfasdf'),('C02','C',69,0,'c'),('C02','D',1,0,'Đáp án D cho câu hỏi 2'),('C02','D',3,0,'Đáp án D cho câu hỏi 2'),('C02','D',4,0,'Đáp án D cho câu hỏi 2'),('C02','D',5,0,'Đáp án D cho câu hỏi 2'),('C02','D',6,0,'Tất cả'),('C02','D',7,0,'Tất cả'),('C02','D',9,0,'Nước Ý có thủ đô là'),('C02','D',10,0,'Nước Ý có thủ đô là'),('C02','D',11,0,'Nước Ý có thủ đô là'),('C02','D',12,0,'hh'),('C02','D',14,0,'ấdf'),('C02','D',69,0,'d'),('C03','A',3,0,'Đáp án A cho câu hỏi 3'),('C03','A',4,0,'Đáp án A cho câu hỏi 3'),('C03','A',6,0,'Transport'),('C03','A',7,0,'Transport'),('C03','A',9,1,'Tokyo'),('C03','A',10,0,'1'),('C03','A',11,1,'Tokyo'),('C03','A',69,1,'Bắc kinh'),('C03','B',3,0,'Đáp án B cho câu hỏi 3'),('C03','B',4,0,'Đáp án B cho câu hỏi 3'),('C03','B',6,0,'Network'),('C03','B',7,0,'Network'),('C03','B',9,0,'Bắc kinh'),('C03','B',10,0,'2'),('C03','B',11,0,'Bắc kinh'),('C03','B',69,0,'b'),('C03','C',3,1,'Đáp án C cho câu hỏi 3'),('C03','C',4,1,'Đáp án C cho câu hỏi 3'),('C03','C',6,0,'Application'),('C03','C',7,1,'Application'),('C03','C',9,0,'hh'),('C03','C',10,1,'3'),('C03','C',11,0,'hh'),('C03','C',69,0,'c'),('C03','D',3,0,'Đáp án D cho câu hỏi 3'),('C03','D',4,0,'Đáp án D cho câu hỏi 3'),('C03','D',6,1,'Presentation'),('C03','D',7,0,'Presentation'),('C03','D',9,0,'ii'),('C03','D',10,0,'4'),('C03','D',11,0,'ii'),('C03','D',69,0,'d'),('C04','A',3,0,'Đáp án A cho câu hỏi 4'),('C04','A',4,0,'Đáp án A cho câu hỏi 4'),('C04','A',6,0,'1-2-3-4'),('C04','A',7,0,'A'),('C04','B',3,0,'Đáp án B cho câu hỏi 4'),('C04','B',4,0,'Đáp án B cho câu hỏi 4'),('C04','B',6,0,'1-2-3-1'),('C04','B',7,0,'B'),('C04','C',3,0,'Đáp án C cho câu hỏi 4'),('C04','C',4,0,'Đáp án C cho câu hỏi 4'),('C04','C',6,1,'2-3-1-4'),('C04','C',7,0,'C'),('C04','D',3,1,'Đáp án D cho câu hỏi 4'),('C04','D',4,1,'Đáp án D cho câu hỏi 4'),('C04','D',6,0,'4-1-2-3'),('C04','D',7,1,'D'),('C05','A',4,0,'Đáp án A cho câu hỏi 5'),('C05','A',6,0,'Transport'),('C05','A',7,1,'A'),('C05','B',4,0,'Đáp án B cho câu hỏi 5'),('C05','B',6,0,'Network'),('C05','B',7,0,'B'),('C05','C',4,0,'Đáp án C cho câu hỏi 5'),('C05','C',6,0,'Application'),('C05','C',7,0,'C'),('C05','D',4,1,'Đáp án D cho câu hỏi 5'),('C05','D',6,1,'Presentation'),('C05','D',7,0,'D');
/*!40000 ALTER TABLE `luachon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Content` varchar(255) DEFAULT NULL,
  `MSV` varchar(100) DEFAULT NULL,
  `fromAdmin` tinyint(1) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `MSV` (`MSV`),
  CONSTRAINT `MSV` FOREIGN KEY (`MSV`) REFERENCES `sinhvien` (`MSV`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'1','B21DCCN343',1,'2024-05-11 13:00:22'),(2,'1','B21DCCN343',0,'2024-05-11 13:00:29'),(3,'1','B21DCCN343',0,'2024-05-11 13:00:41'),(4,'1','B21DCCN343',0,'2024-05-11 13:00:42'),(5,'2','B21DCCN343',0,'2024-05-11 13:00:43'),(6,'3','B21DCCN343',0,'2024-05-11 13:00:44'),(7,'4','B21DCCN343',0,'2024-05-11 13:00:45'),(8,'5','B21DCCN343',0,'2024-05-11 13:00:46'),(9,'111111111111111111111111111','B21DCCN343',0,'2024-05-11 13:00:51'),(10,'vcl','B21DCCN343',1,'2024-05-11 13:01:01'),(11,'ok','B21DCCN343',1,'2024-05-11 13:01:48'),(12,'alo','B21DCCN343',1,'2024-05-11 13:14:33'),(13,'aaaaaaaaaa','B21DCCN343',1,'2024-05-11 13:14:41'),(14,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','B21DCCN343',1,'2024-05-11 13:14:46'),(17,'hello','B21DCCN343',0,'2024-05-11 14:13:38'),(19,'alo','B21DCCN343',1,'2024-05-11 14:13:53'),(20,'hello','B21DCCN343',0,'2024-05-11 14:13:59'),(21,'alo','B21DCCN343',1,'2024-05-11 14:14:25'),(22,'a','B21DCCN343',1,'2024-05-11 15:00:13'),(23,'xịn quá','B21DCCN343',1,'2024-05-11 15:13:32'),(26,'Adu','B21DCCN343',0,'2024-05-11 15:35:35'),(27,'Hay','B21DCCN343',0,'2024-05-11 15:35:40'),(28,'ok','B21DCCN343',1,'2024-05-11 15:35:55'),(29,'aduu','B21DCCN343',1,'2024-05-12 16:19:24'),(30,'ko','B21DCCN343',1,'2024-05-12 17:33:26'),(55,'alo','B21DCCN343',0,'2024-05-13 15:02:59'),(56,'lo','B21DCCN343',0,'2024-05-13 15:15:43'),(57,'a','B21DCCN343',1,'2024-05-13 15:22:38');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `email` varchar(255) NOT NULL,
  `start_time` timestamp NOT NULL,
  `end_time` timestamp NOT NULL,
  `otp_code` varchar(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES ('hoanganhvu271103@gmail.com','2024-05-11 13:31:13','2024-05-11 13:36:13','514761'),('trinhvinhtuandat05102003@gmail.com','2024-05-11 13:31:13','2024-05-11 13:36:13','241797');
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'Cấp quyền','/admin/permission'),(2,'Quản lý tài khoản','/admin/account'),(3,'Quản lý bài thi','/admin/test'),(4,'Xem kết quả','/admin/result'),(5,'Xem Dashboard','/admin/dashboard'),(6,'Hỗ trợ yêu cầu SV','/admin/message');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problem` (
  `MaVanDe` varchar(50) NOT NULL,
  `TenVanDe` varchar(200) DEFAULT NULL,
  `ThoiGianTao` date DEFAULT NULL,
  PRIMARY KEY (`MaVanDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES ('0bog8PBXrU','Tính tổng','2024-05-13'),('3PcKEkP9fQ','Cuộc sống, Vũ trụ và Mọi thứ','2024-05-13'),('CAfUf8VwaB','Ma trận chuyển vị','2024-05-13'),('caLyw1lb9K','Các khoản tiền khác nhau','2024-05-13'),('fzBapz8N85','3 điểm thẳng hàng','2024-05-12'),('iCySN5uEwQ','Cộng hai số','2024-05-12'),('tRRtEV55HW','Mã hóa Caesar','2024-05-13');
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin1'),(2,'Admin2'),(3,'Admin3'),(4,'Admin4');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `MSV` varchar(50) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `Lop` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `TaiKhoan` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(500) DEFAULT NULL,
  `ThoiGian` date DEFAULT NULL,
  PRIMARY KEY (`MSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES ('B21DCAT026','Lê Đức Anh','D21CQCN03-B','VuHA.B21CN795@stu.ptit.edu.vn','B21DCAT026','$2b$10$0WuslabUyH1tDX5x9RokpeSA4MmriVAIy0hxNJnn8eR8U3pyE5VCO',NULL),('B21DCCN031','Trịnh Vinh Tuấn Đạt','D21CQCN07-B','dat@gmail.com','B21DCCN031','$2b$10$j/zCS86Lf83kqio1/mg34e000n7EytqmwuvQzQ5xw703JQdMgW3/a',NULL),('B21DCCN103','Nguyễn Anh Quân','D21CQCN07-B','quan@gmail.com','B21DCCN103','$2b$10$4oD7GaJUVcUh6TRUd2EXqeHMJSJCrVDJ0JQJ8ipkZbepb3I4ncKa2',NULL),('B21DCCN343','Nguyễn Hoàng Hiệp 2','D21CQCN07-B','hiep2003ka@gmail.com','B21DCCN344','$2b$10$ywIHVlGw0/I9YjAduVZJAeygTrjT.qiIPmrgoZep6ugVSgvrZ7YVy',NULL),('B21DCCN795','Hoàng Anh Vũ','D21CQCN03-B','VuHA.B21CN795@stu.ptit.edu.vn','B21DCCN795','$2b$10$BOy1dg7QSQ5Xzfn2z4/re.EJK57Uxqe0qeIjITmuz9xJ9qmliCNk.',NULL);
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit`
--

DROP TABLE IF EXISTS `submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit` (
  `Masubmit` int NOT NULL,
  `MSV` varchar(50) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `TenVanDe` varchar(50) DEFAULT NULL,
  `TrangThai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Masubmit`),
  KEY `FK_MSV_SinhVien_2` (`MSV`),
  CONSTRAINT `FK_MSV_SinhVien_2` FOREIGN KEY (`MSV`) REFERENCES `sinhvien` (`MSV`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit`
--

LOCK TABLES `submit` WRITE;
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` VALUES (66450341,'B21DCCN343','https://02b87882.problems.sphere-engine.com/api/v4/submissions/66450341/source?access_token=4115b63958a9eb31a4d33ac722af04d5','Cộng hai số','accepted'),(66457691,'B21DCCN343','https://02b87882.problems.sphere-engine.com/api/v4/submissions/66457691/source?access_token=4115b63958a9eb31a4d33ac722af04d5','Tính tổng','running...'),(66458001,'B21DCCN343','https://02b87882.problems.sphere-engine.com/api/v4/submissions/66458001/source?access_token=4115b63958a9eb31a4d33ac722af04d5','Cộng hai số','accepted'),(66458011,'B21DCCN343','https://02b87882.problems.sphere-engine.com/api/v4/submissions/66458011/source?access_token=4115b63958a9eb31a4d33ac722af04d5','Cộng hai số','running master judge...'),(66458021,'B21DCCN343','https://02b87882.problems.sphere-engine.com/api/v4/submissions/66458021/source?access_token=4115b63958a9eb31a4d33ac722af04d5','Cộng hai số','wrong answer'),(66561009,'B21DCCN343','https://02b87882.problems.sphere-engine.com/api/v4/submissions/66561009/source?access_token=4115b63958a9eb31a4d33ac722af04d5','Cuộc sống, Vũ trụ và Mọi thứ','compilation error');
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongke`
--

DROP TABLE IF EXISTS `thongke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongke` (
  `idThongKe` int NOT NULL AUTO_INCREMENT,
  `LuotXem` int DEFAULT NULL,
  `TaiKhoanMoi` int DEFAULT NULL,
  `BaiThiMoi` int DEFAULT NULL,
  `SoLanLamBaiTheoThang` int DEFAULT NULL,
  `ThangNam` datetime DEFAULT NULL,
  PRIMARY KEY (`idThongKe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongke`
--

LOCK TABLES `thongke` WRITE;
/*!40000 ALTER TABLE `thongke` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'javasql2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 23:23:50
