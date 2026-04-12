-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ss
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ss`
--

/*!40000 DROP DATABASE IF EXISTS `ss`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ss` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ss`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) NOT NULL COMMENT '供应商名称',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `beizhu` longtext COMMENT '备注',
  `jinglizhanghao` varchar(200) DEFAULT NULL COMMENT '经理账号',
  `jinglixingming` varchar(200) DEFAULT NULL COMMENT '经理姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (91,'2023-04-17 12:39:40','1111111111','供应商名称1','公司地址1','13823888881','备注1','经理账号1','经理姓名1'),(92,'2023-04-17 12:39:40','2222222222','供应商名称2','公司地址2','13823888882','备注2','经理账号2','经理姓名2'),(93,'2023-04-17 12:39:40','3333333333','供应商名称3','公司地址3','13823888883','备注3','经理账号3','经理姓名3'),(94,'2023-04-17 12:39:40','4444444444','供应商名称4','公司地址4','13823888884','备注4','经理账号4','经理姓名4'),(95,'2023-04-17 12:39:40','5555555555','供应商名称5','公司地址5','13823888885','备注5','经理账号5','经理姓名5'),(96,'2023-04-17 12:39:40','6666666666','供应商名称6','公司地址6','13823888886','备注6','经理账号6','经理姓名6'),(97,'2023-04-17 12:39:40','7777777777','供应商名称7','公司地址7','13823888887','备注7','经理账号7','经理姓名7'),(98,'2023-04-17 12:39:40','8888888888','供应商名称8','公司地址8','13823888888','备注8','经理账号8','经理姓名8');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingli`
--

DROP TABLE IF EXISTS `jingli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinglizhanghao` varchar(200) NOT NULL COMMENT '经理账号',
  `jinglixingming` varchar(200) NOT NULL COMMENT '经理姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinglizhanghao` (`jinglizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='经理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingli`
--

LOCK TABLES `jingli` WRITE;
/*!40000 ALTER TABLE `jingli` DISABLE KEYS */;
INSERT INTO `jingli` VALUES (11,'2023-04-17 12:39:40','经理账号1','经理姓名1','123456','男','upload/jingli_touxiang1.jpg','13823888881'),(12,'2023-04-17 12:39:40','经理账号2','经理姓名2','123456','男','upload/jingli_touxiang2.jpg','13823888882'),(13,'2023-04-17 12:39:40','经理账号3','经理姓名3','123456','男','upload/jingli_touxiang3.jpg','13823888883'),(14,'2023-04-17 12:39:40','经理账号4','经理姓名4','123456','男','upload/jingli_touxiang4.jpg','13823888884'),(15,'2023-04-17 12:39:40','经理账号5','经理姓名5','123456','男','upload/jingli_touxiang5.jpg','13823888885'),(16,'2023-04-17 12:39:40','经理账号6','经理姓名6','123456','男','upload/jingli_touxiang6.jpg','13823888886'),(17,'2023-04-17 12:39:40','经理账号7','经理姓名7','123456','男','upload/jingli_touxiang7.jpg','13823888887'),(18,'2023-04-17 12:39:40','经理账号8','经理姓名8','123456','男','upload/jingli_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `jingli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quehuotixing`
--

DROP TABLE IF EXISTS `quehuotixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quehuotixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tixingbianhao` varchar(200) DEFAULT NULL COMMENT '提醒编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `tixingshijian` date DEFAULT NULL COMMENT '提醒时间',
  `jinglizhanghao` varchar(200) DEFAULT NULL COMMENT '经理账号',
  `jinglixingming` varchar(200) DEFAULT NULL COMMENT '经理姓名',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tixingbianhao` (`tixingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='缺货提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quehuotixing`
--

LOCK TABLES `quehuotixing` WRITE;
/*!40000 ALTER TABLE `quehuotixing` DISABLE KEYS */;
INSERT INTO `quehuotixing` VALUES (71,'2023-04-17 12:39:40','1111111111','商品名称1','商品分类1',1,'2023-04-17','经理账号1','经理姓名1','员工工号1','员工姓名1'),(72,'2023-04-17 12:39:40','2222222222','商品名称2','商品分类2',2,'2023-04-17','经理账号2','经理姓名2','员工工号2','员工姓名2'),(73,'2023-04-17 12:39:40','3333333333','商品名称3','商品分类3',3,'2023-04-17','经理账号3','经理姓名3','员工工号3','员工姓名3'),(74,'2023-04-17 12:39:40','4444444444','商品名称4','商品分类4',4,'2023-04-17','经理账号4','经理姓名4','员工工号4','员工姓名4'),(75,'2023-04-17 12:39:40','5555555555','商品名称5','商品分类5',5,'2023-04-17','经理账号5','经理姓名5','员工工号5','员工姓名5'),(76,'2023-04-17 12:39:40','6666666666','商品名称6','商品分类6',6,'2023-04-17','经理账号6','经理姓名6','员工工号6','员工姓名6'),(77,'2023-04-17 12:39:40','7777777777','商品名称7','商品分类7',7,'2023-04-17','经理账号7','经理姓名7','员工工号7','员工姓名7'),(78,'2023-04-17 12:39:40','8888888888','商品名称8','商品分类8',8,'2023-04-17','经理账号8','经理姓名8','员工工号8','员工姓名8');
/*!40000 ALTER TABLE `quehuotixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2023-04-17 12:39:40','商品分类1'),(32,'2023-04-17 12:39:40','商品分类2'),(33,'2023-04-17 12:39:40','商品分类3'),(34,'2023-04-17 12:39:40','商品分类4'),(35,'2023-04-17 12:39:40','商品分类5'),(36,'2023-04-17 12:39:40','商品分类6'),(37,'2023-04-17 12:39:40','商品分类7'),(38,'2023-04-17 12:39:40','商品分类8');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinruku`
--

DROP TABLE IF EXISTS `shangpinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukushijian` date DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='商品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinruku`
--

LOCK TABLES `shangpinruku` WRITE;
/*!40000 ALTER TABLE `shangpinruku` DISABLE KEYS */;
INSERT INTO `shangpinruku` VALUES (51,'2023-04-17 12:39:40','1111111111','商品名称1','商品分类1',1,'2023-04-17'),(52,'2023-04-17 12:39:40','2222222222','商品名称2','商品分类2',2,'2023-04-17'),(53,'2023-04-17 12:39:40','3333333333','商品名称3','商品分类3',3,'2023-04-17'),(54,'2023-04-17 12:39:40','4444444444','商品名称4','商品分类4',4,'2023-04-17'),(55,'2023-04-17 12:39:40','5555555555','商品名称5','商品分类5',5,'2023-04-17'),(56,'2023-04-17 12:39:40','6666666666','商品名称6','商品分类6',6,'2023-04-17'),(57,'2023-04-17 12:39:40','7777777777','商品名称7','商品分类7',7,'2023-04-17'),(58,'2023-04-17 12:39:40','8888888888','商品名称8','商品分类8',8,'2023-04-17');
/*!40000 ALTER TABLE `shangpinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinshouyin`
--

DROP TABLE IF EXISTS `shangpinshouyin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinshouyin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshoudanhao` varchar(200) DEFAULT NULL COMMENT '销售单号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `shouyinshijian` date DEFAULT NULL COMMENT '收银时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshoudanhao` (`xiaoshoudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='商品收银';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinshouyin`
--

LOCK TABLES `shangpinshouyin` WRITE;
/*!40000 ALTER TABLE `shangpinshouyin` DISABLE KEYS */;
INSERT INTO `shangpinshouyin` VALUES (81,'2023-04-17 12:39:40','1111111111','商品名称1','商品分类1',1,1,1,'2023-04-17','员工工号1','员工姓名1'),(82,'2023-04-17 12:39:40','2222222222','商品名称2','商品分类2',2,2,2,'2023-04-17','员工工号2','员工姓名2'),(83,'2023-04-17 12:39:40','3333333333','商品名称3','商品分类3',3,3,3,'2023-04-17','员工工号3','员工姓名3'),(84,'2023-04-17 12:39:40','4444444444','商品名称4','商品分类4',4,4,4,'2023-04-17','员工工号4','员工姓名4'),(85,'2023-04-17 12:39:40','5555555555','商品名称5','商品分类5',5,5,5,'2023-04-17','员工工号5','员工姓名5'),(86,'2023-04-17 12:39:40','6666666666','商品名称6','商品分类6',6,6,6,'2023-04-17','员工工号6','员工姓名6'),(87,'2023-04-17 12:39:40','7777777777','商品名称7','商品分类7',7,7,7,'2023-04-17','员工工号7','员工姓名7'),(88,'2023-04-17 12:39:40','8888888888','商品名称8','商品分类8',8,8,8,'2023-04-17','员工工号8','员工姓名8');
/*!40000 ALTER TABLE `shangpinshouyin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxiaoshou`
--

DROP TABLE IF EXISTS `shangpinxiaoshou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxiaoshou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshoudanhao` varchar(200) DEFAULT NULL COMMENT '销售单号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xiaoshoushijian` date DEFAULT NULL COMMENT '销售时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshoudanhao` (`xiaoshoudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='商品销售';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxiaoshou`
--

LOCK TABLES `shangpinxiaoshou` WRITE;
/*!40000 ALTER TABLE `shangpinxiaoshou` DISABLE KEYS */;
INSERT INTO `shangpinxiaoshou` VALUES (61,'2023-04-17 12:39:40','1111111111','商品名称1','商品分类1',1,'员工姓名1','2023-04-17','员工工号1'),(62,'2023-04-17 12:39:40','2222222222','商品名称2','商品分类2',2,'员工姓名2','2023-04-17','员工工号2'),(63,'2023-04-17 12:39:40','3333333333','商品名称3','商品分类3',3,'员工姓名3','2023-04-17','员工工号3'),(64,'2023-04-17 12:39:40','4444444444','商品名称4','商品分类4',4,'员工姓名4','2023-04-17','员工工号4'),(65,'2023-04-17 12:39:40','5555555555','商品名称5','商品分类5',5,'员工姓名5','2023-04-17','员工工号5'),(66,'2023-04-17 12:39:40','6666666666','商品名称6','商品分类6',6,'员工姓名6','2023-04-17','员工工号6'),(67,'2023-04-17 12:39:40','7777777777','商品名称7','商品分类7',7,'员工姓名7','2023-04-17','员工工号7'),(68,'2023-04-17 12:39:40','8888888888','商品名称8','商品分类8',8,'员工姓名8','2023-04-17','员工工号8');
/*!40000 ALTER TABLE `shangpinxiaoshou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `tupian` longtext COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量（库存）',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2023-04-17 12:39:40','1111111111','商品名称1','商品分类1',1,'upload/shangpinxinxi_tupian1.jpg,upload/shangpinxinxi_tupian2.jpg,upload/shangpinxinxi_tupian3.jpg',1,'商品详情1','员工工号1','员工姓名1'),(42,'2023-04-17 12:39:40','2222222222','商品名称2','商品分类2',2,'upload/shangpinxinxi_tupian2.jpg,upload/shangpinxinxi_tupian3.jpg,upload/shangpinxinxi_tupian4.jpg',2,'商品详情2','员工工号2','员工姓名2'),(43,'2023-04-17 12:39:40','3333333333','商品名称3','商品分类3',3,'upload/shangpinxinxi_tupian3.jpg,upload/shangpinxinxi_tupian4.jpg,upload/shangpinxinxi_tupian5.jpg',3,'商品详情3','员工工号3','员工姓名3'),(44,'2023-04-17 12:39:40','4444444444','商品名称4','商品分类4',4,'upload/shangpinxinxi_tupian4.jpg,upload/shangpinxinxi_tupian5.jpg,upload/shangpinxinxi_tupian6.jpg',4,'商品详情4','员工工号4','员工姓名4'),(45,'2023-04-17 12:39:40','5555555555','商品名称5','商品分类5',5,'upload/shangpinxinxi_tupian5.jpg,upload/shangpinxinxi_tupian6.jpg,upload/shangpinxinxi_tupian7.jpg',5,'商品详情5','员工工号5','员工姓名5'),(46,'2023-04-17 12:39:40','6666666666','商品名称6','商品分类6',6,'upload/shangpinxinxi_tupian6.jpg,upload/shangpinxinxi_tupian7.jpg,upload/shangpinxinxi_tupian8.jpg',6,'商品详情6','员工工号6','员工姓名6'),(47,'2023-04-17 12:39:40','7777777777','商品名称7','商品分类7',7,'upload/shangpinxinxi_tupian7.jpg,upload/shangpinxinxi_tupian8.jpg,upload/shangpinxinxi_tupian9.jpg',7,'商品详情7','员工工号7','员工姓名7'),(48,'2023-04-17 12:39:40','8888888888','商品名称8','商品分类8',8,'upload/shangpinxinxi_tupian8.jpg,upload/shangpinxinxi_tupian9.jpg,upload/shangpinxinxi_tupian10.jpg',8,'商品详情8','员工工号8','员工姓名8');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'经理账号1','jingli','经理','aqvf4azr5f6c5y49zdieqdkretw077gf','2023-04-17 12:40:24','2023-04-17 13:40:25');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-17 12:39:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2023-04-17 12:39:40','员工工号1','员工姓名1','123456','男','upload/yuangong_touxiang1.jpg',1,'13823888881'),(22,'2023-04-17 12:39:40','员工工号2','员工姓名2','123456','男','upload/yuangong_touxiang2.jpg',2,'13823888882'),(23,'2023-04-17 12:39:40','员工工号3','员工姓名3','123456','男','upload/yuangong_touxiang3.jpg',3,'13823888883'),(24,'2023-04-17 12:39:40','员工工号4','员工姓名4','123456','男','upload/yuangong_touxiang4.jpg',4,'13823888884'),(25,'2023-04-17 12:39:40','员工工号5','员工姓名5','123456','男','upload/yuangong_touxiang5.jpg',5,'13823888885'),(26,'2023-04-17 12:39:40','员工工号6','员工姓名6','123456','男','upload/yuangong_touxiang6.jpg',6,'13823888886'),(27,'2023-04-17 12:39:40','员工工号7','员工姓名7','123456','男','upload/yuangong_touxiang7.jpg',7,'13823888887'),(28,'2023-04-17 12:39:40','员工工号8','员工姓名8','123456','男','upload/yuangong_touxiang8.jpg',8,'13823888888');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19 11:11:03
