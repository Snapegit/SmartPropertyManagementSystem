-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl92544156
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
-- Current Database: `cl92544156`
--

/*!40000 DROP DATABASE IF EXISTS `cl92544156`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl92544156` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl92544156`;

--
-- Table structure for table `cheweidingdan`
--

DROP TABLE IF EXISTS `cheweidingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweijiage` double DEFAULT NULL COMMENT '车位价格',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='车位订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweidingdan`
--

LOCK TABLES `cheweidingdan` WRITE;
/*!40000 ALTER TABLE `cheweidingdan` DISABLE KEYS */;
INSERT INTO `cheweidingdan` VALUES (71,'2024-03-18 02:05:44','1111111111','车位编号1','车位位置1',1,'2024-03-18 10:05:44','账号1','姓名1','19819881111','未支付'),(72,'2024-03-18 02:05:44','2222222222','车位编号2','车位位置2',2,'2024-03-18 10:05:44','账号2','姓名2','19819881112','未支付'),(73,'2024-03-18 02:05:44','3333333333','车位编号3','车位位置3',3,'2024-03-18 10:05:44','账号3','姓名3','19819881113','未支付'),(74,'2024-03-18 02:05:44','4444444444','车位编号4','车位位置4',4,'2024-03-18 10:05:44','账号4','姓名4','19819881114','未支付'),(75,'2024-03-18 02:05:44','5555555555','车位编号5','车位位置5',5,'2024-03-18 10:05:44','账号5','姓名5','19819881115','未支付'),(76,'2024-03-18 02:05:44','6666666666','车位编号6','车位位置6',6,'2024-03-18 10:05:44','账号6','姓名6','19819881116','未支付');
/*!40000 ALTER TABLE `cheweidingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweitupian` longtext COMMENT '车位图片',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `cheweijiage` double DEFAULT NULL COMMENT '车位价格',
  `cheweixiangqing` longtext COMMENT '车位详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (61,'2024-03-18 02:05:44','车位编号1','file/cheweixinxiCheweitupian1.jpg,file/cheweixinxiCheweitupian2.jpg,file/cheweixinxiCheweitupian3.jpg','车位位置1','已售',1,'车位详情1',1,'2024-03-18 10:05:44'),(62,'2024-03-18 02:05:44','车位编号2','file/cheweixinxiCheweitupian2.jpg,file/cheweixinxiCheweitupian3.jpg,file/cheweixinxiCheweitupian4.jpg','车位位置2','已售',2,'车位详情2',2,'2024-03-18 10:05:44'),(63,'2024-03-18 02:05:44','车位编号3','file/cheweixinxiCheweitupian3.jpg,file/cheweixinxiCheweitupian4.jpg,file/cheweixinxiCheweitupian5.jpg','车位位置3','已售',3,'车位详情3',3,'2024-03-18 10:05:44'),(64,'2024-03-18 02:05:44','车位编号4','file/cheweixinxiCheweitupian4.jpg,file/cheweixinxiCheweitupian5.jpg,file/cheweixinxiCheweitupian6.jpg','车位位置4','已售',4,'车位详情4',4,'2024-03-18 10:05:44'),(65,'2024-03-18 02:05:44','车位编号5','file/cheweixinxiCheweitupian5.jpg,file/cheweixinxiCheweitupian6.jpg,file/cheweixinxiCheweitupian7.jpg','车位位置5','已售',5,'车位详情5',5,'2024-03-18 10:05:44'),(66,'2024-03-18 02:05:44','车位编号6','file/cheweixinxiCheweitupian6.jpg,file/cheweixinxiCheweitupian7.jpg,file/cheweixinxiCheweitupian8.jpg','车位位置6','已售',6,'车位详情6',6,'2024-03-18 10:05:44');
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwumianji` varchar(200) DEFAULT NULL COMMENT '房屋面积',
  `fangwuchaoxiang` varchar(200) DEFAULT NULL COMMENT '房屋朝向',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `danyuan` varchar(200) DEFAULT NULL COMMENT '单元',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (81,'2024-03-18 02:05:44','房屋名称1','房屋面积1','房屋朝向1','楼栋1','单元1','账号1','姓名1','19819881111'),(82,'2024-03-18 02:05:44','房屋名称2','房屋面积2','房屋朝向2','楼栋2','单元2','账号2','姓名2','19819881112'),(83,'2024-03-18 02:05:44','房屋名称3','房屋面积3','房屋朝向3','楼栋3','单元3','账号3','姓名3','19819881113'),(84,'2024-03-18 02:05:44','房屋名称4','房屋面积4','房屋朝向4','楼栋4','单元4','账号4','姓名4','19819881114'),(85,'2024-03-18 02:05:44','房屋名称5','房屋面积5','房屋朝向5','楼栋5','单元5','账号5','姓名5','19819881115'),(86,'2024-03-18 02:05:44','房屋名称6','房屋面积6','房屋朝向6','楼栋6','单元6','账号6','姓名6','19819881116');
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-18 02:05:44','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"在线报修\",\"menuJump\":\"列表\",\"tableName\":\"zaixianbaoxiu\"}],\"fontClass\":\"icon-common36\",\"menu\":\"在线报修管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"员工\",\"menuJump\":\"列表\",\"tableName\":\"yuangong\"}],\"fontClass\":\"icon-user4\",\"menu\":\"员工管理\",\"unicode\":\"&#xef9a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"在线缴费\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaofei\"}],\"fontClass\":\"icon-common2\",\"menu\":\"在线缴费管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common33\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"新增\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"房屋信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common3\",\"menu\":\"公告信息管理\",\"unicode\":\"&#xeda5;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"车位订单\",\"menuJump\":\"列表\",\"tableName\":\"cheweidingdan\"}],\"fontClass\":\"icon-common36\",\"menu\":\"车位订单管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"}],\"fontClass\":\"icon-common46\",\"menu\":\"车位信息管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"回复\"],\"menu\":\"在线投诉\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"fontClass\":\"icon-common7\",\"menu\":\"在线投诉管理\",\"unicode\":\"&#xedb4;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"购买\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"}],\"menu\":\"车位信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"在线投诉\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"在线投诉管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"报修\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"房屋信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common47\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"在线报修\",\"menuJump\":\"列表\",\"tableName\":\"zaixianbaoxiu\"}],\"fontClass\":\"icon-common36\",\"menu\":\"在线报修管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"在线缴费\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaofei\"}],\"fontClass\":\"icon-common2\",\"menu\":\"在线缴费管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"支付\"],\"menu\":\"车位订单\",\"menuJump\":\"列表\",\"tableName\":\"cheweidingdan\"}],\"fontClass\":\"icon-common36\",\"menu\":\"车位订单管理\",\"unicode\":\"&#xee9f;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"购买\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"}],\"menu\":\"车位信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"在线投诉\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"在线投诉管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\"],\"menu\":\"房屋信息\",\"menuJump\":\"列表\",\"tableName\":\"fangwuxinxi\"}],\"fontClass\":\"icon-common28\",\"menu\":\"房屋信息管理\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"在线报修\",\"menuJump\":\"列表\",\"tableName\":\"zaixianbaoxiu\"}],\"fontClass\":\"icon-common36\",\"menu\":\"在线报修管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"在线缴费\",\"menuJump\":\"列表\",\"tableName\":\"zaixianjiaofei\"}],\"fontClass\":\"icon-common2\",\"menu\":\"在线缴费管理\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"车位订单\",\"menuJump\":\"列表\",\"tableName\":\"cheweidingdan\"}],\"fontClass\":\"icon-common36\",\"menu\":\"车位订单管理\",\"unicode\":\"&#xee9f;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"购买\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"}],\"menu\":\"车位信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\",\"新增\"],\"menu\":\"在线投诉\",\"menuJump\":\"列表\",\"tableName\":\"messages\"}],\"menu\":\"在线投诉管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"员工\",\"tableName\":\"yuangong\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='在线投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2024-03-18 02:05:44',1,'用户名1','file/messagesAvatarurl1.jpg','留言内容1','file/messagesCpicture1.jpg','回复内容1','file/messagesRpicture1.jpg'),(112,'2024-03-18 02:05:44',2,'用户名2','file/messagesAvatarurl2.jpg','留言内容2','file/messagesCpicture2.jpg','回复内容2','file/messagesRpicture2.jpg'),(113,'2024-03-18 02:05:44',3,'用户名3','file/messagesAvatarurl3.jpg','留言内容3','file/messagesCpicture3.jpg','回复内容3','file/messagesRpicture3.jpg'),(114,'2024-03-18 02:05:44',4,'用户名4','file/messagesAvatarurl4.jpg','留言内容4','file/messagesCpicture4.jpg','回复内容4','file/messagesRpicture4.jpg'),(115,'2024-03-18 02:05:44',5,'用户名5','file/messagesAvatarurl5.jpg','留言内容5','file/messagesCpicture5.jpg','回复内容5','file/messagesRpicture5.jpg'),(116,'2024-03-18 02:05:44',6,'用户名6','file/messagesAvatarurl6.jpg','留言内容6','file/messagesCpicture6.jpg','回复内容6','file/messagesRpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (51,'2024-03-18 02:05:44','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(52,'2024-03-18 02:05:44','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(53,'2024-03-18 02:05:44','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(54,'2024-03-18 02:05:44','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(55,'2024-03-18 02:05:44','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(56,'2024-03-18 02:05:44','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-18 02:05:44','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-03-18 02:05:44','账号1','姓名1','123456','file/yonghuTouxiang1.jpg','男','19819881111'),(12,'2024-03-18 02:05:44','账号2','姓名2','123456','file/yonghuTouxiang2.jpg','男','19819881112'),(13,'2024-03-18 02:05:44','账号3','姓名3','123456','file/yonghuTouxiang3.jpg','男','19819881113'),(14,'2024-03-18 02:05:44','账号4','姓名4','123456','file/yonghuTouxiang4.jpg','男','19819881114'),(15,'2024-03-18 02:05:44','账号5','姓名5','123456','file/yonghuTouxiang5.jpg','男','19819881115'),(16,'2024-03-18 02:05:44','账号6','姓名6','123456','file/yonghuTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
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
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `yuangongmima` varchar(200) NOT NULL COMMENT '员工密码',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangongzhanghao` (`yuangongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2024-03-18 02:05:44','员工账号1','员工姓名1','123456','file/yuangongTouxiang1.jpg','男','19819881111'),(22,'2024-03-18 02:05:44','员工账号2','员工姓名2','123456','file/yuangongTouxiang2.jpg','男','19819881112'),(23,'2024-03-18 02:05:44','员工账号3','员工姓名3','123456','file/yuangongTouxiang3.jpg','男','19819881113'),(24,'2024-03-18 02:05:44','员工账号4','员工姓名4','123456','file/yuangongTouxiang4.jpg','男','19819881114'),(25,'2024-03-18 02:05:44','员工账号5','员工姓名5','123456','file/yuangongTouxiang5.jpg','男','19819881115'),(26,'2024-03-18 02:05:44','员工账号6','员工姓名6','123456','file/yuangongTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianbaoxiu`
--

DROP TABLE IF EXISTS `zaixianbaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianbaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `danyuan` varchar(200) DEFAULT NULL COMMENT '单元',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiushijian` datetime DEFAULT NULL COMMENT '报修时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `yuangongzhanghao` varchar(200) DEFAULT NULL COMMENT '员工账号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='在线报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianbaoxiu`
--

LOCK TABLES `zaixianbaoxiu` WRITE;
/*!40000 ALTER TABLE `zaixianbaoxiu` DISABLE KEYS */;
INSERT INTO `zaixianbaoxiu` VALUES (91,'2024-03-18 02:05:44','房屋名称1','楼栋1','单元1','报修内容1','2024-03-18 10:05:44','账号1','姓名1','已维修','员工账号1','员工姓名1','是',''),(92,'2024-03-18 02:05:44','房屋名称2','楼栋2','单元2','报修内容2','2024-03-18 10:05:44','账号2','姓名2','已维修','员工账号2','员工姓名2','是',''),(93,'2024-03-18 02:05:44','房屋名称3','楼栋3','单元3','报修内容3','2024-03-18 10:05:44','账号3','姓名3','已维修','员工账号3','员工姓名3','是',''),(94,'2024-03-18 02:05:44','房屋名称4','楼栋4','单元4','报修内容4','2024-03-18 10:05:44','账号4','姓名4','已维修','员工账号4','员工姓名4','是',''),(95,'2024-03-18 02:05:44','房屋名称5','楼栋5','单元5','报修内容5','2024-03-18 10:05:44','账号5','姓名5','已维修','员工账号5','员工姓名5','是',''),(96,'2024-03-18 02:05:44','房屋名称6','楼栋6','单元6','报修内容6','2024-03-18 10:05:44','账号6','姓名6','已维修','员工账号6','员工姓名6','是','');
/*!40000 ALTER TABLE `zaixianbaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianjiaofei`
--

DROP TABLE IF EXISTS `zaixianjiaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianjiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeibianhao` varchar(200) DEFAULT NULL COMMENT '缴费编号',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  `jiaofeijine` double NOT NULL COMMENT '缴费金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yuangongzhanghao` varchar(200) DEFAULT NULL COMMENT '员工账号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaofeibianhao` (`jiaofeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='在线缴费';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianjiaofei`
--

LOCK TABLES `zaixianjiaofei` WRITE;
/*!40000 ALTER TABLE `zaixianjiaofei` DISABLE KEYS */;
INSERT INTO `zaixianjiaofei` VALUES (101,'2024-03-18 02:05:44','1111111111','账号1','姓名1','物业费',1,'备注1','2024-03-18 10:05:44','员工账号1','员工姓名1','未支付'),(102,'2024-03-18 02:05:44','2222222222','账号2','姓名2','物业费',2,'备注2','2024-03-18 10:05:44','员工账号2','员工姓名2','未支付'),(103,'2024-03-18 02:05:44','3333333333','账号3','姓名3','物业费',3,'备注3','2024-03-18 10:05:44','员工账号3','员工姓名3','未支付'),(104,'2024-03-18 02:05:44','4444444444','账号4','姓名4','物业费',4,'备注4','2024-03-18 10:05:44','员工账号4','员工姓名4','未支付'),(105,'2024-03-18 02:05:44','5555555555','账号5','姓名5','物业费',5,'备注5','2024-03-18 10:05:44','员工账号5','员工姓名5','未支付'),(106,'2024-03-18 02:05:44','6666666666','账号6','姓名6','物业费',6,'备注6','2024-03-18 10:05:44','员工账号6','员工姓名6','未支付');
/*!40000 ALTER TABLE `zaixianjiaofei` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 13:13:24
