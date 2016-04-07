-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bedrock
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Current Database: `bedrock`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bedrock` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bedrock`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add source',7,'add_source'),(20,'Can change source',7,'change_source'),(21,'Can delete source',7,'delete_source'),(22,'Can add thumbnail',8,'add_thumbnail'),(23,'Can change thumbnail',8,'change_thumbnail'),(24,'Can delete thumbnail',8,'delete_thumbnail'),(25,'Can add thumbnail dimensions',9,'add_thumbnaildimensions'),(26,'Can change thumbnail dimensions',9,'change_thumbnaildimensions'),(27,'Can delete thumbnail dimensions',9,'delete_thumbnaildimensions'),(28,'Can add category',10,'add_category'),(29,'Can change category',10,'change_category'),(30,'Can delete category',10,'delete_category'),(31,'Can add product',11,'add_product'),(32,'Can change product',11,'change_product'),(33,'Can delete product',11,'delete_product'),(34,'Can add location',12,'add_location'),(35,'Can change location',12,'change_location'),(36,'Can delete location',12,'delete_location'),(37,'Can add location picture',13,'add_locationpicture'),(38,'Can change location picture',13,'change_locationpicture'),(39,'Can delete location picture',13,'delete_locationpicture'),(40,'Can add job',14,'add_job'),(41,'Can change job',14,'change_job'),(42,'Can delete job',14,'delete_job'),(43,'Can add gallery item',15,'add_galleryitem'),(44,'Can change gallery item',15,'change_galleryitem'),(45,'Can delete gallery item',15,'delete_galleryitem'),(46,'Can add staff member',16,'add_staffmember'),(47,'Can change staff member',16,'change_staffmember'),(48,'Can delete staff member',16,'delete_staffmember'),(49,'Can add project type',17,'add_projecttype'),(50,'Can change project type',17,'change_projecttype'),(51,'Can delete project type',17,'delete_projecttype'),(52,'Can add project',18,'add_project'),(53,'Can change project',18,'change_project'),(54,'Can delete project',18,'delete_project'),(55,'Can add content page',19,'add_contentpage'),(56,'Can change content page',19,'change_contentpage'),(57,'Can delete content page',19,'delete_contentpage'),(58,'Can add menu item',20,'add_menuitem'),(59,'Can change menu item',20,'change_menuitem'),(60,'Can delete menu item',20,'delete_menuitem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$w19NXAJYcytW$pdrJUXxl7pnm8VqctAYBHgojsTEEbexT7SdebkHkTLw=','2016-04-06 19:18:06',1,'elliott','','','elliott.ohara@gmail.com',1,1,'2016-04-06 19:17:48');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-04-06 19:20:58','1','1',1,'Added.',15,1),(2,'2016-04-06 19:21:06','1','1',2,'Changed large and preview.',15,1),(3,'2016-04-06 19:24:44','2','1',1,'Added.',15,1),(4,'2016-04-06 19:24:52','2','1',2,'Changed large.',15,1),(5,'2016-04-07 00:45:25','1','Home',1,'Added.',20,1),(6,'2016-04-07 00:45:54','1','Home',2,'Changed slug_en and slug_es.',20,1),(7,'2016-04-07 00:48:59','2','Products',1,'Added.',20,1),(8,'2016-04-07 00:49:44','3','Showcase',1,'Added.',20,1),(9,'2016-04-07 00:51:44','4','Jobs',1,'Added.',20,1),(10,'2016-04-07 00:52:06','3','Showcase',2,'Changed sort_order.',20,1),(11,'2016-04-07 00:53:12','5','Contact',1,'Added.',20,1),(12,'2016-04-07 00:54:22','6','About Us',1,'Added.',20,1),(13,'2016-04-07 13:35:51','1','Natural Stone',1,'Added.',19,1),(14,'2016-04-07 13:38:55','2','Landscaping',1,'Added.',19,1),(15,'2016-04-07 13:41:21','3','Customer Service',1,'Added.',19,1),(16,'2016-04-07 13:42:16','1','Natural Stone',2,'Changed name_es.',19,1),(17,'2016-04-07 13:45:04','4','Manufactured Stone',1,'Added.',19,1),(18,'2016-04-07 13:46:44','5','Services',1,'Added.',19,1),(19,'2016-04-07 13:52:01','2','Square Pool',2,'Changed name_en.',15,1),(20,'2016-04-07 13:52:18','2','Square Pool',2,'Changed sort_order.',15,1),(21,'2016-04-07 13:52:29','1','2',2,'Changed name_en and slug_en.',15,1),(22,'2016-04-07 13:52:40','1','2',2,'Changed sort_order.',15,1),(23,'2016-04-07 13:54:27','3','3',1,'Added.',15,1),(24,'2016-04-07 13:54:57','4','4',1,'Added.',15,1),(25,'2016-04-07 13:55:33','5','5',1,'Added.',15,1),(26,'2016-04-07 13:56:47','6','6',1,'Added.',15,1),(27,'2016-04-07 13:57:46','7','7',1,'Added.',15,1),(28,'2016-04-07 13:58:30','8','8',1,'Added.',15,1),(29,'2016-04-07 14:02:07','1','Rock 1',1,'Added.',12,1),(30,'2016-04-07 14:02:50','1','Rock 1',2,'Added location picture \"LocationPicture object\".',12,1),(31,'2016-04-07 14:03:22','1','Rock 1',2,'Added location picture \"LocationPicture object\".',12,1),(32,'2016-04-07 14:03:56','1','Rock 1',2,'Added location picture \"LocationPicture object\".',12,1),(33,'2016-04-07 14:06:49','2','Rock 2',1,'Added.',12,1),(34,'2016-04-07 14:09:07','3','Rock 3',1,'Added.',12,1),(35,'2016-04-07 14:11:06','4','Rock 4',1,'Added.',12,1),(36,'2016-04-07 14:16:42','1','Aggregates',1,'Added.',10,1),(37,'2016-04-07 14:17:57','2','Pavers',1,'Added.',10,1),(38,'2016-04-07 14:19:48','2','Pavers',2,'Changed name_es, slug_es and image.',10,1),(39,'2016-04-07 14:21:16','3','Patio',1,'Added.',10,1),(40,'2016-04-07 14:24:04','4','Masonry Tools',1,'Added.',10,1),(41,'2016-04-07 14:25:00','2','Pavers',2,'Changed cropped, short_description_en and short_description_es.',10,1),(42,'2016-04-07 14:28:06','5','Chopped / Drystack',1,'Added.',10,1),(43,'2016-04-07 14:31:12','6','Boulders',1,'Added.',10,1),(44,'2016-04-07 14:33:14','7','Thin Veneer',1,'Added.',10,1),(45,'2016-04-07 14:34:05','3','Patio',2,'Changed short_description_es.',10,1),(46,'2016-04-07 14:35:08','5','Chopped / Drystack',2,'Changed image.',10,1),(47,'2016-04-07 14:43:32','1','Kerzon Nickens',1,'Added.',16,1),(48,'2016-04-07 14:43:53','2','Matt Teifke',1,'Added.',16,1),(49,'2016-04-07 14:44:11','3','Melissa Soliz',1,'Added.',16,1),(50,'2016-04-07 14:44:17','1','Kerzon Nickens',2,'Changed sort_order.',16,1),(51,'2016-04-07 14:45:55','1','Buff Peach',1,'Added.',11,1),(52,'2016-04-07 14:46:45','2','Decomposed Granite',1,'Added.',11,1),(53,'2016-04-07 14:49:17','3','Fossil Blend',1,'Added.',11,1),(54,'2016-04-07 14:50:50','4','White Limestone',1,'Added.',11,1),(55,'2016-04-07 14:52:20','5','Tumbled',1,'Added.',11,1),(56,'2016-04-07 14:53:49','6','Tx Moss Rock',1,'Added.',11,1),(57,'2016-04-07 14:57:16','7','Tumbled Choc Gold',1,'Added.',11,1),(58,'2016-04-07 15:00:18','8','Ocean Mist',1,'Added.',11,1),(59,'2016-04-07 15:01:35','9','Black Bassalt',1,'Added.',11,1),(60,'2016-04-07 15:02:56','10','Lueders Blend',1,'Added.',11,1),(61,'2016-04-07 15:03:30','11','Limestone',1,'Added.',11,1),(62,'2016-04-07 15:04:35','12','Cambridge',1,'Added.',11,1),(63,'2016-04-07 15:05:34','13','Sandstone Mix',1,'Added.',11,1),(64,'2016-04-07 15:06:43','14','Hill Country',1,'Added.',11,1),(65,'2016-04-07 15:08:03','15','Granite',1,'Added.',11,1),(66,'2016-04-07 15:09:08','16','Old World',1,'Added.',11,1),(67,'2016-04-07 15:10:34','17','Choc Gold Blue',1,'Added.',11,1),(68,'2016-04-07 15:12:09','18','Choc Gold',1,'Added.',11,1),(69,'2016-04-07 15:13:43','19','Washed Rock',1,'Added.',11,1),(70,'2016-04-07 15:15:30','20','Buffed Peach',1,'Added.',11,1),(71,'2016-04-07 15:16:24','21','Penn. Lilac',1,'Added.',11,1),(72,'2016-04-07 15:18:32','22','OK. River Carmel',1,'Added.',11,1),(73,'2016-04-07 15:18:36','22','OK. River Carmel',2,'No fields changed.',11,1),(74,'2016-04-07 15:19:22','23','Lueders Roughback',1,'Added.',11,1),(75,'2016-04-07 15:19:52','24','Santa Clara',1,'Added.',11,1),(76,'2016-04-07 15:20:55','25','Pea Gravel',1,'Added.',11,1),(77,'2016-04-07 15:22:00','26','Ok Mix',1,'Added.',11,1),(78,'2016-04-07 15:22:43','27','Fairland Pink',1,'Added.',11,1),(79,'2016-04-07 15:24:19','28','Leuders Choc Slabs',1,'Added.',11,1),(80,'2016-04-07 15:25:03','29','Choc Gold',1,'Added.',11,1),(81,'2016-04-07 15:25:55','30','Az River Rock',1,'Added.',11,1),(82,'2016-04-07 15:27:59','31','Mex Beach Pebbles',1,'Added.',11,1),(83,'2016-04-07 15:39:07','31','Mex Beach Pebbles (Red)',2,'Changed name_en.',11,1),(84,'2016-04-07 15:44:13','32','Creme Sawn',1,'Added.',11,1),(85,'2016-04-07 15:46:28','33','AZ Sunset',1,'Added.',11,1),(86,'2016-04-07 15:47:54','34','Khaki',1,'Added.',11,1),(87,'2016-04-07 15:49:24','35','Black Mexican',1,'Added.',11,1),(88,'2016-04-07 15:51:06','36','Lueders Fossil Slabs',1,'Added.',11,1),(89,'2016-04-07 15:52:41','37','Okie Ledge',1,'Added.',11,1),(90,'2016-04-07 15:54:07','38','OK Sandstone',1,'Added.',11,1),(91,'2016-04-07 15:54:46','39','Cafe',1,'Added.',11,1),(92,'2016-04-07 15:55:37','40','Classic Oak',1,'Added.',11,1),(93,'2016-04-07 15:56:26','41','Ok Sunset',1,'Added.',11,1),(94,'2016-04-07 15:57:23','42','Tumbled Mix',1,'Added.',11,1),(95,'2016-04-07 16:00:36','1','Pools',1,'Added.',17,1),(96,'2016-04-07 16:01:49','1','Pools',2,'Changed cropped, description_en and description_es.',17,1),(97,'2016-04-07 16:04:19','2','Outdoor Kitchens',1,'Added.',17,1),(98,'2016-04-07 16:06:38','3','Water Features',1,'Added.',17,1),(99,'2016-04-07 16:08:24','4','Exterior Stone',1,'Added.',17,1),(100,'2016-04-07 16:09:21','3','Water Features',2,'Changed image.',17,1),(101,'2016-04-07 16:09:42','3','Water Features',2,'Changed cropped.',17,1),(102,'2016-04-07 16:12:22','1','Pools',2,'Added project \"Palm Pool\".',17,1),(103,'2016-04-07 16:13:39','1','Pools',2,'Added project \"Retaining Wall\". Changed cropped for project \"Palm Pool\".',17,1),(104,'2016-04-07 16:15:35','1','Pools',2,'Added project \"Tumbled Pavers\". Changed cropped for project \"Retaining Wall\".',17,1),(105,'2016-04-07 16:17:16','1','Pools',2,'Added project \"Tumbled Pavers\". Changed name, name_en, name_es, slug, slug_en, slug_es and cropped for project \"Water Slide\".',17,1),(106,'2016-04-07 16:18:26','1','Pools',2,'Added project \"Limestone Coping\". Changed cropped for project \"Tumbled Pavers\".',17,1),(107,'2016-04-07 16:20:34','2','Outdoor Kitchens',2,'Changed cropped. Added project \"Limestone Grill\".',17,1),(108,'2016-04-07 16:21:41','2','Outdoor Kitchens',2,'Added project \"Oklahoma\". Changed cropped for project \"Limestone Grill\".',17,1),(109,'2016-04-07 16:22:49','2','Outdoor Kitchens',2,'Added project \"Oklahoma Grill\". Changed cropped for project \"Oklahoma\".',17,1),(110,'2016-04-07 16:23:32','2','Outdoor Kitchens',2,'Changed image for project \"Oklahoma Grill\".',17,1),(111,'2016-04-07 16:23:56','2','Outdoor Kitchens',2,'Changed cropped for project \"Oklahoma Grill\".',17,1),(112,'2016-04-07 16:25:41','3','Water Features',2,'Added project \"Chopped Fountain\".',17,1),(113,'2016-04-07 16:38:06','3','Water Features',2,'Added project \"Sandstone Waterfall\". Changed cropped for project \"Chopped Fountain\".',17,1),(114,'2016-04-07 16:39:23','3','Water Features',2,'Added project \"Wall Waterfall\".',17,1),(115,'2016-04-07 16:40:15','3','Water Features',2,'Added project \"Bridge\". Changed cropped for project \"Wall Waterfall\".',17,1),(116,'2016-04-07 16:42:01','3','Water Features',2,'Added project \"OK Waterfall\". Changed cropped for project \"Bridge\".',17,1),(117,'2016-04-07 16:43:05','3','Water Features',2,'Added project \"Water Walkway\".',17,1),(118,'2016-04-07 16:44:18','3','Water Features',2,'Added project \"Helix\". Changed cropped for project \"Water Walkway\".',17,1),(119,'2016-04-07 16:47:05','4','Exterior Stone',2,'Changed cropped. Added project \"Stone Turrets\".',17,1),(120,'2016-04-07 16:48:06','4','Exterior Stone',2,'Added project \"Limestone House\". Changed cropped for project \"Stone Turrets\".',17,1),(121,'2016-04-07 16:48:56','4','Exterior Stone',2,'Added project \"Oklahoma House\".',17,1),(122,'2016-04-07 16:49:37','4','Exterior Stone',2,'Added project \"Office\". Changed cropped for project \"Oklahoma House\".',17,1),(123,'2016-04-07 16:50:19','4','Exterior Stone',2,'Added project \"Arch\".',17,1),(124,'2016-04-07 16:51:09','4','Exterior Stone',2,'Added project \"OK Entry\".',17,1),(125,'2016-04-07 16:52:19','4','Exterior Stone',2,'Added project \"Chocolate Arch\".',17,1),(126,'2016-04-07 16:53:20','4','Exterior Stone',2,'Added project \"Retaining Wall\".',17,1),(127,'2016-04-07 16:55:21','2','Rock 2',2,'Added location picture \"LocationPicture object\".',12,1),(128,'2016-04-07 16:55:42','2','Rock 2',2,'Added location picture \"LocationPicture object\".',12,1),(129,'2016-04-07 16:56:10','2','Rock 2',2,'Added location picture \"LocationPicture object\".',12,1),(130,'2016-04-07 16:56:29','2','Rock 2',2,'Added location picture \"LocationPicture object\".',12,1),(131,'2016-04-07 16:56:53','2','Rock 2',2,'Added location picture \"LocationPicture object\".',12,1),(132,'2016-04-07 16:57:22','3','Rock 3',2,'Added location picture \"LocationPicture object\".',12,1),(133,'2016-04-07 16:57:40','3','Rock 3',2,'Added location picture \"LocationPicture object\".',12,1),(134,'2016-04-07 16:57:59','3','Rock 3',2,'Added location picture \"LocationPicture object\".',12,1),(135,'2016-04-07 16:58:16','3','Rock 3',2,'Added location picture \"LocationPicture object\".',12,1),(136,'2016-04-07 16:58:40','4','Rock 4',2,'Added location picture \"LocationPicture object\".',12,1),(137,'2016-04-07 16:58:57','4','Rock 4',2,'Added location picture \"LocationPicture object\".',12,1),(138,'2016-04-07 16:59:17','4','Rock 4',2,'Added location picture \"LocationPicture object\".',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'easy_thumbnails','source'),(8,'easy_thumbnails','thumbnail'),(9,'easy_thumbnails','thumbnaildimensions'),(6,'sessions','session'),(10,'web','category'),(19,'web','contentpage'),(15,'web','galleryitem'),(14,'web','job'),(12,'web','location'),(13,'web','locationpicture'),(20,'web','menuitem'),(11,'web','product'),(18,'web','project'),(17,'web','projecttype'),(16,'web','staffmember');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-04-06 19:15:56'),(2,'auth','0001_initial','2016-04-06 19:15:56'),(3,'admin','0001_initial','2016-04-06 19:15:56'),(4,'admin','0002_logentry_remove_auto_add','2016-04-06 19:15:57'),(5,'contenttypes','0002_remove_content_type_name','2016-04-06 19:15:57'),(6,'auth','0002_alter_permission_name_max_length','2016-04-06 19:15:57'),(7,'auth','0003_alter_user_email_max_length','2016-04-06 19:15:57'),(8,'auth','0004_alter_user_username_opts','2016-04-06 19:15:57'),(9,'auth','0005_alter_user_last_login_null','2016-04-06 19:15:57'),(10,'auth','0006_require_contenttypes_0002','2016-04-06 19:15:57'),(11,'auth','0007_alter_validators_add_error_messages','2016-04-06 19:15:57'),(12,'easy_thumbnails','0001_initial','2016-04-06 19:15:57'),(13,'easy_thumbnails','0002_thumbnaildimensions','2016-04-06 19:15:57'),(14,'sessions','0001_initial','2016-04-06 19:15:57'),(15,'web','0001_initial','2016-04-06 19:15:57'),(16,'web','0002_auto_20150310_1710','2016-04-06 19:15:57'),(17,'web','0003_auto_20150311_1247','2016-04-06 19:15:57'),(18,'web','0004_auto_20150311_1510','2016-04-06 19:15:57'),(19,'web','0005_auto_20150311_1743','2016-04-06 19:15:57'),(20,'web','0006_auto_20150312_1502','2016-04-06 19:15:58'),(21,'web','0007_auto_20150312_2027','2016-04-06 19:15:58'),(22,'web','0008_auto_20150317_1250','2016-04-06 19:15:58'),(23,'web','0009_remove_galleryitem_preview','2016-04-06 19:15:58'),(24,'web','0010_auto_20150317_1534','2016-04-06 19:15:58'),(25,'web','0011_galleryitem_preview','2016-04-06 19:15:58'),(26,'web','0012_auto_20150318_1222','2016-04-06 19:15:58'),(27,'web','0013_auto_20150318_1839','2016-04-06 19:15:58'),(28,'web','0014_auto_20150319_0200','2016-04-06 19:15:59'),(29,'web','0015_auto_20150324_1759','2016-04-06 19:15:59'),(30,'web','0016_auto_20150325_1355','2016-04-06 19:15:59'),(31,'web','0017_auto_20150326_1848','2016-04-06 19:15:59'),(32,'web','0018_auto_20150330_1846','2016-04-06 19:15:59'),(33,'web','0019_auto_20150402_1348','2016-04-06 19:15:59'),(34,'web','0020_auto_20150402_1420','2016-04-06 19:15:59'),(35,'web','0021_auto_20150403_1609','2016-04-06 19:15:59'),(36,'web','0022_staffmember_title','2016-04-06 19:15:59'),(37,'web','0023_auto_20160331_1408','2016-04-06 19:16:00'),(38,'web','0024_auto_20160331_1417','2016-04-06 19:16:00'),(39,'web','0025_auto_20160331_1433','2016-04-06 19:16:01'),(40,'web','0026_auto_20160331_1434','2016-04-06 19:16:01');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('jbmxcm99tax3xfzzi4tt45sbvnwjy0gu','MTFhYTBkN2RmMjQ4MmVmYmFkMzgwZTNjNDBkOTdmOTcyNTIyOGQ3ZDp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDA1NWQxZDZjODkyMDc2NzljOTNiZWRjZjZmZDY4ZTJiZDNlYWZmOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2016-04-21 14:37:27');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'63c77af23a93fcbac67418e6938048ca','gallery/IMO101.jpg','2016-04-06 19:20:58'),(2,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0191_copyp5x7.tif','2016-04-06 19:24:44'),(3,'63c77af23a93fcbac67418e6938048ca','contentpage/natural_stone_1460036151.78.jpg','2016-04-07 13:35:55'),(4,'63c77af23a93fcbac67418e6938048ca','contentpage/landscaping_1460036334.46.tif','2016-04-07 13:39:10'),(5,'63c77af23a93fcbac67418e6938048ca','contentpage/customer_service_1460036481.46.JPG','2016-04-07 13:41:23'),(6,'63c77af23a93fcbac67418e6938048ca','contentpage/manufactured_stone_1460036704.13.jpg','2016-04-07 13:45:14'),(7,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0858p8x12.tif','2016-04-07 13:55:35'),(8,'63c77af23a93fcbac67418e6938048ca','gallery/Land110.jpg','2016-04-07 13:55:36'),(9,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0433p5x7.tif','2016-04-07 13:55:36'),(10,'63c77af23a93fcbac67418e6938048ca','gallery/PP103.tif','2016-04-07 13:58:36'),(11,'63c77af23a93fcbac67418e6938048ca','gallery/WF110.jpg','2016-04-07 13:58:38'),(12,'63c77af23a93fcbac67418e6938048ca','gallery/PP101.tif','2016-04-07 13:58:38'),(13,'63c77af23a93fcbac67418e6938048ca','product/no_image.jpeg','2016-04-07 14:02:07'),(14,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037770.14.JPG','2016-04-07 14:02:51'),(15,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037801.94.JPG','2016-04-07 14:03:24'),(16,'63c77af23a93fcbac67418e6938048ca','category/aggregates_1460038602.68.jpg','2016-04-07 14:17:11'),(17,'63c77af23a93fcbac67418e6938048ca','category/pavers_1460038787.97.jpg','2016-04-07 14:19:48'),(18,'63c77af23a93fcbac67418e6938048ca','category/masonry_tools_1460039043.99.jpg','2016-04-07 14:24:04'),(19,'63c77af23a93fcbac67418e6938048ca','category/patio_1460038876.03.jpg','2016-04-07 14:24:04'),(20,'63c77af23a93fcbac67418e6938048ca','category/boulders_1460039472.8.jpg','2016-04-07 14:31:13'),(21,'63c77af23a93fcbac67418e6938048ca','category/thin_veneer_1460039594.73.jpg','2016-04-07 14:33:15'),(22,'63c77af23a93fcbac67418e6938048ca','category/chopped_/_drystack_1460039708.2.jpg','2016-04-07 14:35:08'),(23,'63c77af23a93fcbac67418e6938048ca','product/decomposed_granite_1460040405.7.jpg','2016-04-07 14:48:19'),(24,'63c77af23a93fcbac67418e6938048ca','product/buff_peach_1460040355.02.jpg','2016-04-07 14:48:19'),(25,'63c77af23a93fcbac67418e6938048ca','product/fossil_blend_1460040557.69.JPG','2016-04-07 14:49:27'),(26,'63c77af23a93fcbac67418e6938048ca','product/white_limestone_1460040650.23.jpg','2016-04-07 14:50:52'),(27,'63c77af23a93fcbac67418e6938048ca','product/tumbled_1460040740.82.jpg','2016-04-07 14:54:13'),(28,'63c77af23a93fcbac67418e6938048ca','product/tx_moss_rock_1460040829.4.jpg','2016-04-07 14:54:44'),(29,'63c77af23a93fcbac67418e6938048ca','product/ocean_mist_1460041218.53.jpg','2016-04-07 15:00:18'),(30,'63c77af23a93fcbac67418e6938048ca','product/tumbled_choc_gold_1460041035.88.jpg','2016-04-07 15:00:31'),(31,'63c77af23a93fcbac67418e6938048ca','product/limestone_1460041410.8.jpg','2016-04-07 15:18:05'),(32,'63c77af23a93fcbac67418e6938048ca','product/granite_1460041682.78.jpg','2016-04-07 15:18:05'),(33,'63c77af23a93fcbac67418e6938048ca','product/penn._lilac_1460042184.03.jpg','2016-04-07 15:18:05'),(34,'63c77af23a93fcbac67418e6938048ca','product/ok._river_carmel_1460042312.15.jpg','2016-04-07 15:18:32'),(35,'63c77af23a93fcbac67418e6938048ca','product/cambridge_1460041475.14.jpg','2016-04-07 15:28:35'),(36,'63c77af23a93fcbac67418e6938048ca','product/old_world_1460041748.25.jpg','2016-04-07 15:28:35'),(37,'63c77af23a93fcbac67418e6938048ca','product/lueders_blend_1460041376.67.jpg','2016-04-07 15:28:48'),(38,'63c77af23a93fcbac67418e6938048ca','product/sandstone_mix_1460041533.89.jpg','2016-04-07 15:28:48'),(39,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_blue_1460041834.69.jpg','2016-04-07 15:28:48'),(40,'63c77af23a93fcbac67418e6938048ca','product/lueders_roughback_1460042361.93.jpg','2016-04-07 15:28:49'),(41,'63c77af23a93fcbac67418e6938048ca','product/ok_mix_1460042520.81.JPG','2016-04-07 15:28:49'),(42,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460042702.05.jpg','2016-04-07 15:28:50'),(43,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460041929.61.jpg','2016-04-07 15:29:04'),(44,'63c77af23a93fcbac67418e6938048ca','product/santa_clara_1460042391.8.jpg','2016-04-07 15:29:04'),(45,'63c77af23a93fcbac67418e6938048ca','product/leuders_choc_slabs_1460042659.46.jpg','2016-04-07 15:29:04'),(46,'63c77af23a93fcbac67418e6938048ca','product/mex_beach_pebbles_1460042879.48.jpg','2016-04-07 15:38:33'),(47,'63c77af23a93fcbac67418e6938048ca','product/az_river_rock_1460042755.1.jpg','2016-04-07 15:38:33'),(48,'63c77af23a93fcbac67418e6938048ca','product/fairland_pink_1460042563.72.jpg','2016-04-07 15:38:34'),(49,'63c77af23a93fcbac67418e6938048ca','product/pea_gravel_1460042455.22.jpg','2016-04-07 15:38:34'),(50,'63c77af23a93fcbac67418e6938048ca','product/buffed_peach_1460042130.24.JPG','2016-04-07 15:38:35'),(51,'63c77af23a93fcbac67418e6938048ca','product/washed_rock_1460042023.41.jpg','2016-04-07 15:38:35'),(52,'63c77af23a93fcbac67418e6938048ca','product/hill_country_1460041603.1.jpg','2016-04-07 15:38:36'),(53,'63c77af23a93fcbac67418e6938048ca','product/black_bassalt_1460041295.11.jpg','2016-04-07 15:38:37'),(54,'63c77af23a93fcbac67418e6938048ca','product/creme_sawn_1460043853.61.JPG','2016-04-07 15:51:41'),(55,'63c77af23a93fcbac67418e6938048ca','product/az_sunset_1460043988.27.JPG','2016-04-07 15:51:41'),(56,'63c77af23a93fcbac67418e6938048ca','product/khaki_1460044074.75.JPG','2016-04-07 15:51:42'),(57,'63c77af23a93fcbac67418e6938048ca','product/black_mexican_1460044164.12.jpg','2016-04-07 15:51:42'),(58,'63c77af23a93fcbac67418e6938048ca','product/lueders_fossil_slabs_1460044266.15.jpg','2016-04-07 15:51:42'),(59,'63c77af23a93fcbac67418e6938048ca','product/tumbled_mix_1460044642.36.jpg','2016-04-07 15:57:34'),(60,'63c77af23a93fcbac67418e6938048ca','product/ok_sunset_1460044585.77.jpg','2016-04-07 15:57:34'),(61,'63c77af23a93fcbac67418e6938048ca','product/classic_oak_1460044537.05.jpg','2016-04-07 15:57:34'),(62,'63c77af23a93fcbac67418e6938048ca','product/cafe_1460044486.83.JPG','2016-04-07 15:57:34'),(63,'63c77af23a93fcbac67418e6938048ca','product/ok_sandstone_1460044447.68.jpg','2016-04-07 15:57:35'),(64,'63c77af23a93fcbac67418e6938048ca','product/okie_ledge_1460044361.56.jpg','2016-04-07 15:57:35'),(65,'63c77af23a93fcbac67418e6938048ca','projecttype/pools_1460044835.91.tif','2016-04-07 16:00:44'),(66,'63c77af23a93fcbac67418e6938048ca','projecttype/outdoor_kitchens_1460045058.93.jpg','2016-04-07 16:08:27'),(67,'63c77af23a93fcbac67418e6938048ca','projecttype/exterior_stone_1460045304.25.jpg','2016-04-07 16:08:27'),(68,'63c77af23a93fcbac67418e6938048ca','projecttype/water_features_1460045360.68.JPG','2016-04-07 16:09:23'),(69,'63c77af23a93fcbac67418e6938048ca','project/palm_pool_1460045541.84.tif','2016-04-07 16:12:23'),(70,'63c77af23a93fcbac67418e6938048ca','project/retaining_wall_1460045618.2.tif','2016-04-07 16:13:44'),(71,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045735.33.tif','2016-04-07 16:15:37'),(72,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045835.19.tif','2016-04-07 16:17:19'),(73,'63c77af23a93fcbac67418e6938048ca','project/limestone_coping_1460045906.87.jpg','2016-04-07 16:18:37'),(74,'63c77af23a93fcbac67418e6938048ca','project/limestone_grill_1460046034.31.jpg','2016-04-07 16:20:35'),(75,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_1460046101.13.tif','2016-04-07 16:21:42'),(76,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_grill_1460046210.62.tif','2016-04-07 16:23:36'),(77,'63c77af23a93fcbac67418e6938048ca','project/chopped_fountain_1460046341.05.jpg','2016-04-07 16:25:41'),(78,'63c77af23a93fcbac67418e6938048ca','project/sandstone_waterfall_1460047086.37.jpg','2016-04-07 16:38:09'),(79,'63c77af23a93fcbac67418e6938048ca','project/wall_waterfall_1460047163.32.JPG','2016-04-07 16:39:25'),(80,'63c77af23a93fcbac67418e6938048ca','project/bridge_1460047215.25.tif','2016-04-07 16:40:18'),(81,'63c77af23a93fcbac67418e6938048ca','project/ok_waterfall_1460047321.18.JPG','2016-04-07 16:42:03'),(82,'63c77af23a93fcbac67418e6938048ca','project/water_walkway_1460047384.69.jpg','2016-04-07 16:43:09'),(83,'63c77af23a93fcbac67418e6938048ca','project/stone_turrets_1460047625.15.JPG','2016-04-07 16:47:06'),(84,'63c77af23a93fcbac67418e6938048ca','project/limestone_house_1460047686.26.jpg','2016-04-07 16:48:07'),(85,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_house_1460047735.73.JPG','2016-04-07 16:48:58'),(86,'63c77af23a93fcbac67418e6938048ca','project/office_1460047777.18.jpg','2016-04-07 16:49:39'),(87,'63c77af23a93fcbac67418e6938048ca','project/arch_1460047818.42.jpg','2016-04-07 16:50:21'),(88,'63c77af23a93fcbac67418e6938048ca','project/ok_entry_1460047869.55.jpg','2016-04-07 16:51:11'),(89,'63c77af23a93fcbac67418e6938048ca','project/chocolate_arch_1460047938.74.jpg','2016-04-07 16:52:21'),(90,'63c77af23a93fcbac67418e6938048ca','project/retaining_wall_1460047999.55.jpg','2016-04-07 16:53:22'),(91,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037835.45.JPG','2016-04-07 16:54:28'),(92,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048121.3.JPG','2016-04-07 16:55:24'),(93,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048141.64.JPG','2016-04-07 16:55:44'),(94,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048169.08.JPG','2016-04-07 16:56:11'),(95,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048189.06.JPG','2016-04-07 16:56:32'),(96,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_3_1460048242.15.JPG','2016-04-07 16:57:24'),(97,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_3_1460048260.24.JPG','2016-04-07 16:57:42'),(98,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_3_1460048278.13.JPG','2016-04-07 16:58:01'),(99,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_4_1460048320.41.JPG','2016-04-07 16:58:42'),(100,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_4_1460048337.17.JPG','2016-04-07 16:58:59'),(101,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048213.09.JPG','2016-04-07 16:59:22');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` (`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  CONSTRAINT `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'63c77af23a93fcbac67418e6938048ca','gallery/IMO101.jpg.300x300_q85_detail_upscale.jpg','2016-04-06 19:20:58',1),(2,'63c77af23a93fcbac67418e6938048ca','gallery/IMO101.jpg.430x360_q85_box-133,0,669,536_crop_detail.jpg','2016-04-06 19:21:09',1),(3,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0191_copyp5x7.tif.300x300_q85_detail_upscale.jpg','2016-04-06 19:24:44',2),(4,'63c77af23a93fcbac67418e6938048ca','gallery/IMO101.jpg.1440x675_q85_box-0,136,800,511_crop_detail.jpg','2016-04-06 19:25:03',1),(5,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0191_copyp5x7.tif.1440x675_q85_box-0,210,2100,1194_crop_detail.jpg','2016-04-06 19:25:04',2),(6,'63c77af23a93fcbac67418e6938048ca','gallery/IMO101.jpg.40x40_q85_box-133,0,669,536_crop_detail.jpg','2016-04-06 19:25:04',1),(7,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0191_copyp5x7.tif.40x40_q85_box-350,0,1750,1400_crop_detail.jpg','2016-04-06 19:25:05',2),(8,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0191_copyp5x7.tif.430x360_q85_box-350,0,1750,1400_crop_detail.jpg','2016-04-07 00:44:06',2),(9,'63c77af23a93fcbac67418e6938048ca','contentpage/natural_stone_1460036151.78.jpg.400x300_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 13:35:55',3),(10,'63c77af23a93fcbac67418e6938048ca','contentpage/landscaping_1460036334.46.tif.400x300_q85_box-117,0,1983,1400_crop_detail.jpg','2016-04-07 13:39:10',4),(11,'63c77af23a93fcbac67418e6938048ca','contentpage/customer_service_1460036481.46.JPG.400x300_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 13:41:23',5),(12,'63c77af23a93fcbac67418e6938048ca','contentpage/natural_stone_1460036151.78.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 13:42:07',3),(13,'63c77af23a93fcbac67418e6938048ca','contentpage/manufactured_stone_1460036704.13.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 13:45:14',6),(14,'63c77af23a93fcbac67418e6938048ca','contentpage/customer_service_1460036481.46.JPG.220x165_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 13:47:05',5),(15,'63c77af23a93fcbac67418e6938048ca','contentpage/landscaping_1460036334.46.tif.220x165_q85_box-117,0,1983,1400_crop_detail.jpg','2016-04-07 13:47:23',4),(16,'63c77af23a93fcbac67418e6938048ca','contentpage/natural_stone_1460036151.78.jpg.220x165_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 13:47:35',3),(17,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0858p8x12.tif.1440x675_q85_box-0,252,3600,1940_crop_detail.jpg','2016-04-07 13:55:35',7),(18,'63c77af23a93fcbac67418e6938048ca','gallery/Land110.jpg.1440x675_q85_box-0,1209,4550,3341_crop_detail.jpg','2016-04-07 13:55:36',8),(19,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0433p5x7.tif.1440x675_q85_box-0,120,2100,1104_crop_detail.jpg','2016-04-07 13:55:36',9),(20,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0858p8x12.tif.40x40_q85_box-704,0,2896,2192_crop_detail.jpg','2016-04-07 13:55:37',7),(21,'63c77af23a93fcbac67418e6938048ca','gallery/Land110.jpg.40x40_q85_box-0,0,4550,4550_crop_detail.jpg','2016-04-07 13:55:38',8),(22,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0433p5x7.tif.40x40_q85_box-438,0,1662,1224_crop_detail.jpg','2016-04-07 13:55:38',9),(23,'63c77af23a93fcbac67418e6938048ca','gallery/PP103.tif.1440x675_q85_box-0,356,3600,2044_crop_detail.jpg','2016-04-07 13:58:36',10),(24,'63c77af23a93fcbac67418e6938048ca','gallery/WF110.jpg.1440x675_q85_box-0,1684,7000,4966_crop_detail.jpg','2016-04-07 13:58:38',11),(25,'63c77af23a93fcbac67418e6938048ca','gallery/PP101.tif.1440x675_q85_box-0,356,3600,2044_crop_detail.jpg','2016-04-07 13:58:38',12),(26,'63c77af23a93fcbac67418e6938048ca','gallery/PP103.tif.40x40_q85_box-600,0,3000,2400_crop_detail.jpg','2016-04-07 13:58:39',10),(27,'63c77af23a93fcbac67418e6938048ca','gallery/WF110.jpg.40x40_q85_box-175,0,6825,6650_crop_detail.jpg','2016-04-07 13:58:40',11),(28,'63c77af23a93fcbac67418e6938048ca','gallery/PP101.tif.40x40_q85_box-600,0,3000,2400_crop_detail.jpg','2016-04-07 13:58:41',12),(29,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0858p8x12.tif.430x360_q85_box-704,0,2896,2192_crop_detail.jpg','2016-04-07 13:59:51',7),(30,'63c77af23a93fcbac67418e6938048ca','gallery/Land110.jpg.430x360_q85_box-0,0,4550,4550_crop_detail.jpg','2016-04-07 13:59:52',8),(31,'63c77af23a93fcbac67418e6938048ca','gallery/_MG_0433p5x7.tif.430x360_q85_box-438,0,1662,1224_crop_detail.jpg','2016-04-07 13:59:52',9),(32,'63c77af23a93fcbac67418e6938048ca','gallery/PP103.tif.430x360_q85_box-600,0,3000,2400_crop_detail.jpg','2016-04-07 13:59:52',10),(33,'63c77af23a93fcbac67418e6938048ca','gallery/WF110.jpg.430x360_q85_box-175,0,6825,6650_crop_detail.jpg','2016-04-07 13:59:54',11),(34,'63c77af23a93fcbac67418e6938048ca','gallery/PP101.tif.430x360_q85_box-600,0,3000,2400_crop_detail.jpg','2016-04-07 13:59:55',12),(35,'63c77af23a93fcbac67418e6938048ca','product/no_image.jpeg.300x300_q85_detail_upscale.jpg','2016-04-07 14:02:07',13),(36,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037770.14.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 14:02:51',14),(37,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037801.94.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 14:03:24',15),(38,'63c77af23a93fcbac67418e6938048ca','category/aggregates_1460038602.68.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:17:11',16),(39,'63c77af23a93fcbac67418e6938048ca','product/no_image.jpeg.430x360_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 14:17:58',13),(40,'63c77af23a93fcbac67418e6938048ca','category/aggregates_1460038602.68.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:17:58',16),(41,'63c77af23a93fcbac67418e6938048ca','category/pavers_1460038787.97.jpg.430x360_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 14:19:48',17),(42,'63c77af23a93fcbac67418e6938048ca','category/masonry_tools_1460039043.99.jpg.430x360_q85_box-24,0,374,263_crop_detail.jpg','2016-04-07 14:24:04',18),(43,'63c77af23a93fcbac67418e6938048ca','category/patio_1460038876.03.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:24:04',19),(44,'63c77af23a93fcbac67418e6938048ca','category/pavers_1460038787.97.jpg.220x165_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 14:24:07',17),(45,'63c77af23a93fcbac67418e6938048ca','category/patio_1460038876.03.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:24:07',19),(46,'63c77af23a93fcbac67418e6938048ca','category/masonry_tools_1460039043.99.jpg.220x165_q85_box-24,0,374,263_crop_detail.jpg','2016-04-07 14:24:07',18),(47,'63c77af23a93fcbac67418e6938048ca','category/pavers_1460038787.97.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 14:24:27',17),(48,'63c77af23a93fcbac67418e6938048ca','category/pavers_1460038787.97.jpg.430x360_q85_box-31,11,371,266_crop_detail.jpg','2016-04-07 14:25:00',17),(49,'63c77af23a93fcbac67418e6938048ca','category/pavers_1460038787.97.jpg.220x165_q85_box-31,11,371,266_crop_detail.jpg','2016-04-07 14:25:04',17),(50,'63c77af23a93fcbac67418e6938048ca','category/boulders_1460039472.8.jpg.430x360_q85_box-45,0,755,533_crop_detail.jpg','2016-04-07 14:31:13',20),(51,'63c77af23a93fcbac67418e6938048ca','category/thin_veneer_1460039594.73.jpg.430x360_q85_box-30,0,270,180_crop_detail.jpg','2016-04-07 14:33:15',21),(52,'63c77af23a93fcbac67418e6938048ca','product/no_image.jpeg.220x165_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 14:33:39',13),(53,'63c77af23a93fcbac67418e6938048ca','category/boulders_1460039472.8.jpg.220x165_q85_box-45,0,755,533_crop_detail.jpg','2016-04-07 14:33:39',20),(54,'63c77af23a93fcbac67418e6938048ca','category/thin_veneer_1460039594.73.jpg.220x165_q85_box-30,0,270,180_crop_detail.jpg','2016-04-07 14:33:39',21),(55,'63c77af23a93fcbac67418e6938048ca','category/patio_1460038876.03.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 14:33:59',19),(56,'63c77af23a93fcbac67418e6938048ca','category/chopped_/_drystack_1460039708.2.jpg.430x360_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 14:35:08',22),(57,'63c77af23a93fcbac67418e6938048ca','category/chopped_/_drystack_1460039708.2.jpg.220x165_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 14:35:12',22),(58,'63c77af23a93fcbac67418e6938048ca','product/no_image.jpeg.430x360_q85_crop_detail.jpg','2016-04-07 14:43:15',13),(59,'63c77af23a93fcbac67418e6938048ca','product/decomposed_granite_1460040405.7.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:48:19',23),(60,'63c77af23a93fcbac67418e6938048ca','product/buff_peach_1460040355.02.jpg.430x360_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 14:48:19',24),(61,'63c77af23a93fcbac67418e6938048ca','product/fossil_blend_1460040557.69.JPG.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:49:27',25),(62,'63c77af23a93fcbac67418e6938048ca','product/fossil_blend_1460040557.69.JPG.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:49:27',25),(63,'63c77af23a93fcbac67418e6938048ca','product/decomposed_granite_1460040405.7.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:49:33',23),(64,'63c77af23a93fcbac67418e6938048ca','product/decomposed_granite_1460040405.7.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:49:33',23),(65,'63c77af23a93fcbac67418e6938048ca','product/fossil_blend_1460040557.69.JPG.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:50:01',25),(66,'63c77af23a93fcbac67418e6938048ca','product/white_limestone_1460040650.23.jpg.430x360_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 14:50:52',26),(67,'63c77af23a93fcbac67418e6938048ca','product/tumbled_1460040740.82.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:54:13',27),(68,'63c77af23a93fcbac67418e6938048ca','product/tumbled_1460040740.82.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:54:14',27),(69,'63c77af23a93fcbac67418e6938048ca','product/buff_peach_1460040355.02.jpg.800x600_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 14:54:19',24),(70,'63c77af23a93fcbac67418e6938048ca','product/buff_peach_1460040355.02.jpg.220x165_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 14:54:19',24),(71,'63c77af23a93fcbac67418e6938048ca','product/white_limestone_1460040650.23.jpg.800x600_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 14:54:33',26),(72,'63c77af23a93fcbac67418e6938048ca','product/white_limestone_1460040650.23.jpg.220x165_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 14:54:34',26),(73,'63c77af23a93fcbac67418e6938048ca','product/tx_moss_rock_1460040829.4.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:54:44',28),(74,'63c77af23a93fcbac67418e6938048ca','product/tx_moss_rock_1460040829.4.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 14:54:44',28),(75,'63c77af23a93fcbac67418e6938048ca','product/ocean_mist_1460041218.53.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 15:00:18',29),(76,'63c77af23a93fcbac67418e6938048ca','product/ocean_mist_1460041218.53.jpg.430x360_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:00:31',29),(77,'63c77af23a93fcbac67418e6938048ca','product/tumbled_choc_gold_1460041035.88.jpg.430x360_q85_box-23,0,377,266_crop_detail.jpg','2016-04-07 15:00:31',30),(78,'63c77af23a93fcbac67418e6938048ca','product/tx_moss_rock_1460040829.4.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:00:32',28),(79,'63c77af23a93fcbac67418e6938048ca','product/tumbled_1460040740.82.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:00:33',27),(80,'63c77af23a93fcbac67418e6938048ca','product/limestone_1460041410.8.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:18:05',31),(81,'63c77af23a93fcbac67418e6938048ca','product/limestone_1460041410.8.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:18:05',31),(82,'63c77af23a93fcbac67418e6938048ca','product/granite_1460041682.78.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:18:05',32),(83,'63c77af23a93fcbac67418e6938048ca','product/granite_1460041682.78.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:18:05',32),(84,'63c77af23a93fcbac67418e6938048ca','product/penn._lilac_1460042184.03.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:18:05',33),(85,'63c77af23a93fcbac67418e6938048ca','product/penn._lilac_1460042184.03.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:18:05',33),(86,'63c77af23a93fcbac67418e6938048ca','product/ok._river_carmel_1460042312.15.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 15:18:32',34),(87,'63c77af23a93fcbac67418e6938048ca','product/ok._river_carmel_1460042312.15.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:27:34',34),(88,'63c77af23a93fcbac67418e6938048ca','product/ok._river_carmel_1460042312.15.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:27:34',34),(89,'63c77af23a93fcbac67418e6938048ca','product/cambridge_1460041475.14.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:35',35),(90,'63c77af23a93fcbac67418e6938048ca','product/cambridge_1460041475.14.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:35',35),(91,'63c77af23a93fcbac67418e6938048ca','product/old_world_1460041748.25.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:35',36),(92,'63c77af23a93fcbac67418e6938048ca','product/old_world_1460041748.25.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:36',36),(93,'63c77af23a93fcbac67418e6938048ca','product/tumbled_choc_gold_1460041035.88.jpg.800x600_q85_box-23,0,377,266_crop_detail.jpg','2016-04-07 15:28:47',30),(94,'63c77af23a93fcbac67418e6938048ca','product/tumbled_choc_gold_1460041035.88.jpg.220x165_q85_box-23,0,377,266_crop_detail.jpg','2016-04-07 15:28:47',30),(95,'63c77af23a93fcbac67418e6938048ca','product/lueders_blend_1460041376.67.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:48',37),(96,'63c77af23a93fcbac67418e6938048ca','product/lueders_blend_1460041376.67.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:48',37),(97,'63c77af23a93fcbac67418e6938048ca','product/sandstone_mix_1460041533.89.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:48',38),(98,'63c77af23a93fcbac67418e6938048ca','product/sandstone_mix_1460041533.89.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:48',38),(99,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_blue_1460041834.69.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:48',39),(100,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_blue_1460041834.69.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:48',39),(101,'63c77af23a93fcbac67418e6938048ca','product/lueders_roughback_1460042361.93.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:49',40),(102,'63c77af23a93fcbac67418e6938048ca','product/lueders_roughback_1460042361.93.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:49',40),(103,'63c77af23a93fcbac67418e6938048ca','product/ok_mix_1460042520.81.JPG.800x600_q85_box-22,0,378,267_crop_detail.jpg','2016-04-07 15:28:49',41),(104,'63c77af23a93fcbac67418e6938048ca','product/ok_mix_1460042520.81.JPG.220x165_q85_box-22,0,378,267_crop_detail.jpg','2016-04-07 15:28:49',41),(105,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460042702.05.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:50',42),(106,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460042702.05.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:28:50',42),(107,'63c77af23a93fcbac67418e6938048ca','product/ocean_mist_1460041218.53.jpg.800x600_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:29:03',29),(108,'63c77af23a93fcbac67418e6938048ca','product/ocean_mist_1460041218.53.jpg.220x165_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:29:03',29),(109,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460041929.61.jpg.800x600_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:29:04',43),(110,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460041929.61.jpg.220x165_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:29:04',43),(111,'63c77af23a93fcbac67418e6938048ca','product/santa_clara_1460042391.8.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:29:04',44),(112,'63c77af23a93fcbac67418e6938048ca','product/santa_clara_1460042391.8.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:29:04',44),(113,'63c77af23a93fcbac67418e6938048ca','product/leuders_choc_slabs_1460042659.46.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:29:04',45),(114,'63c77af23a93fcbac67418e6938048ca','product/leuders_choc_slabs_1460042659.46.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:29:04',45),(115,'63c77af23a93fcbac67418e6938048ca','product/mex_beach_pebbles_1460042879.48.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:33',46),(116,'63c77af23a93fcbac67418e6938048ca','product/az_river_rock_1460042755.1.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:33',47),(117,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460042702.05.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:33',42),(118,'63c77af23a93fcbac67418e6938048ca','product/leuders_choc_slabs_1460042659.46.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:34',45),(119,'63c77af23a93fcbac67418e6938048ca','product/fairland_pink_1460042563.72.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:34',48),(120,'63c77af23a93fcbac67418e6938048ca','product/ok_mix_1460042520.81.JPG.430x360_q85_box-22,0,378,267_crop_detail.jpg','2016-04-07 15:38:34',41),(121,'63c77af23a93fcbac67418e6938048ca','product/pea_gravel_1460042455.22.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:34',49),(122,'63c77af23a93fcbac67418e6938048ca','product/santa_clara_1460042391.8.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:34',44),(123,'63c77af23a93fcbac67418e6938048ca','product/lueders_roughback_1460042361.93.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:34',40),(124,'63c77af23a93fcbac67418e6938048ca','product/ok._river_carmel_1460042312.15.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:35',34),(125,'63c77af23a93fcbac67418e6938048ca','product/penn._lilac_1460042184.03.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:35',33),(126,'63c77af23a93fcbac67418e6938048ca','product/buffed_peach_1460042130.24.JPG.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:35',50),(127,'63c77af23a93fcbac67418e6938048ca','product/washed_rock_1460042023.41.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:35',51),(128,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_1460041929.61.jpg.430x360_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:38:35',43),(129,'63c77af23a93fcbac67418e6938048ca','product/choc_gold_blue_1460041834.69.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:36',39),(130,'63c77af23a93fcbac67418e6938048ca','product/old_world_1460041748.25.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:36',36),(131,'63c77af23a93fcbac67418e6938048ca','product/granite_1460041682.78.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:36',32),(132,'63c77af23a93fcbac67418e6938048ca','product/hill_country_1460041603.1.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:36',52),(133,'63c77af23a93fcbac67418e6938048ca','product/sandstone_mix_1460041533.89.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:36',38),(134,'63c77af23a93fcbac67418e6938048ca','product/cambridge_1460041475.14.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:36',35),(135,'63c77af23a93fcbac67418e6938048ca','product/limestone_1460041410.8.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:37',31),(136,'63c77af23a93fcbac67418e6938048ca','product/lueders_blend_1460041376.67.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:37',37),(137,'63c77af23a93fcbac67418e6938048ca','product/black_bassalt_1460041295.11.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:38:37',53),(138,'63c77af23a93fcbac67418e6938048ca','product/mex_beach_pebbles_1460042879.48.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 15:38:58',46),(139,'63c77af23a93fcbac67418e6938048ca','product/creme_sawn_1460043853.61.JPG.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:41',54),(140,'63c77af23a93fcbac67418e6938048ca','product/creme_sawn_1460043853.61.JPG.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:41',54),(141,'63c77af23a93fcbac67418e6938048ca','product/az_sunset_1460043988.27.JPG.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:41',55),(142,'63c77af23a93fcbac67418e6938048ca','product/az_sunset_1460043988.27.JPG.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',55),(143,'63c77af23a93fcbac67418e6938048ca','product/khaki_1460044074.75.JPG.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',56),(144,'63c77af23a93fcbac67418e6938048ca','product/khaki_1460044074.75.JPG.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',56),(145,'63c77af23a93fcbac67418e6938048ca','product/black_mexican_1460044164.12.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',57),(146,'63c77af23a93fcbac67418e6938048ca','product/black_mexican_1460044164.12.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',57),(147,'63c77af23a93fcbac67418e6938048ca','product/lueders_fossil_slabs_1460044266.15.jpg.800x600_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',58),(148,'63c77af23a93fcbac67418e6938048ca','product/lueders_fossil_slabs_1460044266.15.jpg.220x165_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:51:42',58),(149,'63c77af23a93fcbac67418e6938048ca','product/tumbled_mix_1460044642.36.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:57:34',59),(150,'63c77af23a93fcbac67418e6938048ca','product/ok_sunset_1460044585.77.jpg.430x360_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:57:34',60),(151,'63c77af23a93fcbac67418e6938048ca','product/classic_oak_1460044537.05.jpg.430x360_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:57:34',61),(152,'63c77af23a93fcbac67418e6938048ca','product/cafe_1460044486.83.JPG.430x360_q85_box-0,0,778,584_crop_detail.jpg','2016-04-07 15:57:34',62),(153,'63c77af23a93fcbac67418e6938048ca','product/ok_sandstone_1460044447.68.jpg.430x360_q85_box-0,0,3456,2592_crop_detail.jpg','2016-04-07 15:57:35',63),(154,'63c77af23a93fcbac67418e6938048ca','product/okie_ledge_1460044361.56.jpg.430x360_q85_box-0,0,640,480_crop_detail.jpg','2016-04-07 15:57:35',64),(155,'63c77af23a93fcbac67418e6938048ca','product/lueders_fossil_slabs_1460044266.15.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:57:35',58),(156,'63c77af23a93fcbac67418e6938048ca','product/black_mexican_1460044164.12.jpg.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:57:35',57),(157,'63c77af23a93fcbac67418e6938048ca','product/khaki_1460044074.75.JPG.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:57:35',56),(158,'63c77af23a93fcbac67418e6938048ca','product/az_sunset_1460043988.27.JPG.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:57:35',55),(159,'63c77af23a93fcbac67418e6938048ca','product/creme_sawn_1460043853.61.JPG.430x360_q85_box-0,0,400,300_crop_detail.jpg','2016-04-07 15:57:35',54),(160,'63c77af23a93fcbac67418e6938048ca','projecttype/pools_1460044835.91.tif.220x165_q85_box-117,0,1983,1400_crop_detail.jpg','2016-04-07 16:00:44',65),(161,'63c77af23a93fcbac67418e6938048ca','projecttype/pools_1460044835.91.tif.430x360_q85_box-117,0,1983,1400_crop_detail.jpg','2016-04-07 16:01:08',65),(162,'63c77af23a93fcbac67418e6938048ca','projecttype/pools_1460044835.91.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:01:11',65),(163,'63c77af23a93fcbac67418e6938048ca','projecttype/pools_1460044835.91.tif.220x165_q85_box-119,0,1986,1400_crop_detail.jpg','2016-04-07 16:01:54',65),(164,'63c77af23a93fcbac67418e6938048ca','projecttype/outdoor_kitchens_1460045058.93.jpg.220x165_q85_box-27,0,453,320_crop_detail.jpg','2016-04-07 16:08:27',66),(165,'63c77af23a93fcbac67418e6938048ca','projecttype/exterior_stone_1460045304.25.jpg.220x165_q85_box-132,0,668,402_crop_detail.jpg','2016-04-07 16:08:27',67),(166,'63c77af23a93fcbac67418e6938048ca','projecttype/pools_1460044835.91.tif.430x360_q85_box-119,0,1986,1400_crop_detail.jpg','2016-04-07 16:09:03',65),(167,'63c77af23a93fcbac67418e6938048ca','projecttype/outdoor_kitchens_1460045058.93.jpg.430x360_q85_box-27,0,453,320_crop_detail.jpg','2016-04-07 16:09:03',66),(168,'63c77af23a93fcbac67418e6938048ca','projecttype/exterior_stone_1460045304.25.jpg.430x360_q85_box-132,0,668,402_crop_detail.jpg','2016-04-07 16:09:03',67),(169,'63c77af23a93fcbac67418e6938048ca','projecttype/water_features_1460045360.68.JPG.430x360_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 16:09:23',68),(170,'63c77af23a93fcbac67418e6938048ca','projecttype/water_features_1460045360.68.JPG.220x165_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 16:09:24',68),(171,'63c77af23a93fcbac67418e6938048ca','projecttype/water_features_1460045360.68.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:09:32',68),(172,'63c77af23a93fcbac67418e6938048ca','projecttype/water_features_1460045360.68.JPG.430x360_q85_box-0,27,2012,1536_crop_detail.jpg','2016-04-07 16:09:44',68),(173,'63c77af23a93fcbac67418e6938048ca','projecttype/water_features_1460045360.68.JPG.220x165_q85_box-0,27,2012,1536_crop_detail.jpg','2016-04-07 16:09:45',68),(174,'63c77af23a93fcbac67418e6938048ca','project/palm_pool_1460045541.84.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:12:23',69),(175,'63c77af23a93fcbac67418e6938048ca','project/palm_pool_1460045541.84.tif.800x600_q85_box-200,0,3400,2400_crop_detail.jpg','2016-04-07 16:13:27',69),(176,'63c77af23a93fcbac67418e6938048ca','project/palm_pool_1460045541.84.tif.220x165_q85_box-200,0,3400,2400_crop_detail.jpg','2016-04-07 16:13:27',69),(177,'63c77af23a93fcbac67418e6938048ca','project/retaining_wall_1460045618.2.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:13:44',70),(178,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045735.33.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:15:37',71),(179,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045835.19.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:17:19',72),(180,'63c77af23a93fcbac67418e6938048ca','project/palm_pool_1460045541.84.tif.800x600_q85_box-204,0,3404,2400_crop_detail.jpg','2016-04-07 16:18:32',69),(181,'63c77af23a93fcbac67418e6938048ca','project/palm_pool_1460045541.84.tif.220x165_q85_box-204,0,3404,2400_crop_detail.jpg','2016-04-07 16:18:33',69),(182,'63c77af23a93fcbac67418e6938048ca','project/retaining_wall_1460045618.2.tif.800x600_q85_box-336,0,3264,2192_crop_detail.jpg','2016-04-07 16:18:34',70),(183,'63c77af23a93fcbac67418e6938048ca','project/retaining_wall_1460045618.2.tif.220x165_q85_box-336,0,3264,2192_crop_detail.jpg','2016-04-07 16:18:35',70),(184,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045735.33.tif.800x600_q85_box-217,0,1878,1246_crop_detail.jpg','2016-04-07 16:18:35',71),(185,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045735.33.tif.220x165_q85_box-217,0,1878,1246_crop_detail.jpg','2016-04-07 16:18:36',71),(186,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045835.19.tif.800x600_q85_box-204,0,3404,2400_crop_detail.jpg','2016-04-07 16:18:36',72),(187,'63c77af23a93fcbac67418e6938048ca','project/tumbled_pavers_1460045835.19.tif.220x165_q85_box-204,0,3404,2400_crop_detail.jpg','2016-04-07 16:18:37',72),(188,'63c77af23a93fcbac67418e6938048ca','project/limestone_coping_1460045906.87.jpg.800x600_q85_box-83,0,1417,1000_crop_detail.jpg','2016-04-07 16:18:37',73),(189,'63c77af23a93fcbac67418e6938048ca','project/limestone_coping_1460045906.87.jpg.220x165_q85_box-83,0,1417,1000_crop_detail.jpg','2016-04-07 16:18:38',73),(190,'63c77af23a93fcbac67418e6938048ca','projecttype/outdoor_kitchens_1460045058.93.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:19:52',66),(191,'63c77af23a93fcbac67418e6938048ca','project/limestone_grill_1460046034.31.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:20:35',74),(192,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_1460046101.13.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:21:42',75),(193,'63c77af23a93fcbac67418e6938048ca','projecttype/outdoor_kitchens_1460045058.93.jpg.430x360_q85_box-27,0,454,320_crop_detail.jpg','2016-04-07 16:22:49',66),(194,'63c77af23a93fcbac67418e6938048ca','projecttype/outdoor_kitchens_1460045058.93.jpg.220x165_q85_box-27,0,454,320_crop_detail.jpg','2016-04-07 16:22:57',66),(195,'63c77af23a93fcbac67418e6938048ca','project/limestone_grill_1460046034.31.jpg.800x600_q85_box-85,0,1418,1000_crop_detail.jpg','2016-04-07 16:22:59',74),(196,'63c77af23a93fcbac67418e6938048ca','project/limestone_grill_1460046034.31.jpg.220x165_q85_box-85,0,1418,1000_crop_detail.jpg','2016-04-07 16:22:59',74),(197,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_1460046101.13.tif.800x600_q85_box-42,0,2058,1510_crop_detail.jpg','2016-04-07 16:23:00',75),(198,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_1460046101.13.tif.220x165_q85_box-42,0,2058,1510_crop_detail.jpg','2016-04-07 16:23:00',75),(199,'63c77af23a93fcbac67418e6938048ca','product/no_image.jpeg.800x600_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 16:23:00',13),(200,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_grill_1460046210.62.tif.800x600_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 16:23:36',76),(201,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_grill_1460046210.62.tif.220x165_q85_box-0,28,225,197_crop_detail.jpg','2016-04-07 16:23:37',76),(202,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_grill_1460046210.62.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:23:45',76),(203,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_grill_1460046210.62.tif.800x600_q85_box-420,0,3588,2376_crop_detail.jpg','2016-04-07 16:24:01',76),(204,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_grill_1460046210.62.tif.220x165_q85_box-420,0,3588,2376_crop_detail.jpg','2016-04-07 16:24:02',76),(205,'63c77af23a93fcbac67418e6938048ca','project/chopped_fountain_1460046341.05.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:25:41',77),(206,'63c77af23a93fcbac67418e6938048ca','project/sandstone_waterfall_1460047086.37.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:38:09',78),(207,'63c77af23a93fcbac67418e6938048ca','project/wall_waterfall_1460047163.32.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:39:25',79),(208,'63c77af23a93fcbac67418e6938048ca','project/bridge_1460047215.25.tif.300x300_q85_detail_upscale.jpg','2016-04-07 16:40:18',80),(209,'63c77af23a93fcbac67418e6938048ca','project/ok_waterfall_1460047321.18.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:42:03',81),(210,'63c77af23a93fcbac67418e6938048ca','project/water_walkway_1460047384.69.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:43:09',82),(211,'63c77af23a93fcbac67418e6938048ca','projecttype/exterior_stone_1460045304.25.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:44:50',67),(212,'63c77af23a93fcbac67418e6938048ca','project/stone_turrets_1460047625.15.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:47:06',83),(213,'63c77af23a93fcbac67418e6938048ca','project/limestone_house_1460047686.26.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:48:07',84),(214,'63c77af23a93fcbac67418e6938048ca','project/oklahoma_house_1460047735.73.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:48:58',85),(215,'63c77af23a93fcbac67418e6938048ca','project/office_1460047777.18.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:49:39',86),(216,'63c77af23a93fcbac67418e6938048ca','project/arch_1460047818.42.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:50:21',87),(217,'63c77af23a93fcbac67418e6938048ca','project/ok_entry_1460047869.55.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:51:11',88),(218,'63c77af23a93fcbac67418e6938048ca','project/chocolate_arch_1460047938.74.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:52:21',89),(219,'63c77af23a93fcbac67418e6938048ca','project/retaining_wall_1460047999.55.jpg.300x300_q85_detail_upscale.jpg','2016-04-07 16:53:22',90),(220,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037770.14.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:54:26',14),(221,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037770.14.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:54:26',14),(222,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037801.94.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:54:27',15),(223,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037801.94.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:54:27',15),(224,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037835.45.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:54:28',91),(225,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_1_1460037835.45.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:54:28',91),(226,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048121.3.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:55:24',92),(227,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048141.64.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:55:44',93),(228,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048169.08.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:56:11',94),(229,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048189.06.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:56:32',95),(230,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_3_1460048242.15.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:57:24',96),(231,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_3_1460048260.24.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:57:42',97),(232,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_3_1460048278.13.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:58:01',98),(233,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_4_1460048320.41.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:58:42',99),(234,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_4_1460048337.17.JPG.300x300_q85_detail_upscale.jpg','2016-04-07 16:58:59',100),(235,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048121.3.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:18',92),(236,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048121.3.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:19',92),(237,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048141.64.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:19',93),(238,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048141.64.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:20',93),(239,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048169.08.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:20',94),(240,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048169.08.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:21',94),(241,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048189.06.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:21',95),(242,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048189.06.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:22',95),(243,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048213.09.JPG.800x600_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:22',101),(244,'63c77af23a93fcbac67418e6938048ca','locationpicture/rock_2_1460048213.09.JPG.220x165_q85_box-0,0,3264,2448_crop_detail.jpg','2016-04-07 16:59:23',101);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumb_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_category`
--

DROP TABLE IF EXISTS `web_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `homepage_position` int(11) DEFAULT NULL,
  `image` varchar(100),
  `cropped` varchar(255) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_category`
--

LOCK TABLES `web_category` WRITE;
/*!40000 ALTER TABLE `web_category` DISABLE KEYS */;
INSERT INTO `web_category` VALUES (1,'Aggregates','aggregates',5,NULL,'category/aggregates_1460038602.68.jpg','0,0,400,300','Aggregates can serve many purposes in a design. Functionally, not only do they prevent water runoff and erosion, but they can also prevent weed growth and retain moisture, saving dramatic amounts of water. Visually, when paired with the correct plants or other accent pieces they can provide a dramatic contrast in color and texture, and take your landscape from nice to amazing. \r\n\r\nTake a few minutes and browse through just a small selection of the aggregate products we offer on site at Bedrock Stone & Design.','Aggregates products add visual interest while helping prevent runoff or weed growth on a landscape project.','Aggregates can serve many purposes in a design. Functionally, not only do they prevent water runoff and erosion, but they can also prevent weed growth and retain moisture, saving dramatic amounts of water. Visually, when paired with the correct plants or other accent pieces they can provide a dramatic contrast in color and texture, and take your landscape from nice to amazing. \r\n\r\nTake a few minutes and browse through just a small selection of the aggregate products we offer on site at Bedrock Stone & Design.',NULL,'Aggregates','Agregados','Aggregates products add visual interest while helping prevent runoff or weed growth on a landscape project.','productos agregados añaden interés visual mientras que ayuda a evitar que se escurra o el crecimiento de malas hierbas en un proyecto de paisaje .','aggregates','aggregates'),(2,'Pavers','pavers',500,NULL,'category/pavers_1460038787.97.jpg','31,11,371,266',NULL,'Pavers provide the convenience of a uniform size and thickness of a product with the beauty of natural stone.',NULL,NULL,'Pavers','Pavimentadoras','Pavers provide the convenience of a uniform size and thickness of a product with the beauty of natural stone.','Pavimentadoras ofrecen la comodidad de un tamaño uniforme y el espesor de un producto con la belleza de la piedra natural .','pavers','pavers'),(3,'Patio','patio',1,NULL,'category/patio_1460038876.03.jpg','0,0,400,300','Natural stone adds amazing depth and color to a backyard patio. At Bedrock Stone & Design we carry patio stone from Oklahoma, Texas, Mexico and Pennsylvania in many different colors and textures. Whether you\'re building a small walkway or a huge backyard entertaining area, the patio stone we carry will move your project from nice to stunning.\r\n\r\nTake a look at just a small selection of what we carry in our Austin, Tx locations.','Nothing beats the beauty of a natural stone patio.','Natural stone adds amazing depth and color to a backyard patio. At Bedrock Stone & Design we carry patio stone from Oklahoma, Texas, Mexico and Pennsylvania in many different colors and textures. Whether you\'re building a small walkway or a huge backyard entertaining area, the patio stone we carry will move your project from nice to stunning.\r\n\r\nTake a look at just a small selection of what we carry in our Austin, Tx locations.',NULL,'Patio','Patio','Nothing beats the beauty of a natural stone patio.','Nada es mejor que la belleza de un patio de piedra natural.','patio',''),(4,'Masonry Tools','masonry_tools',500,3,'category/masonry_tools_1460039043.99.jpg','24,0,374,263',NULL,'Bedrock Stone & Design is proud to features full supply of masonry tools at great prices for the convenience of the masons we\'re so happy to have as customers.',NULL,NULL,'Masonry Tools','Herramienta de Albañilería','Bedrock Stone & Design is proud to features full supply of masonry tools at great prices for the convenience of the masons we\'re so happy to have as customers.','Bedrock Stone & Design está orgulloso de características suministro completo de herramientas de albañilería a muy buenos precios para la comodidad de los albañiles que estamos tan felices de tener como clientes.','masonry_tools','masonry_tools'),(5,'Chopped / Drystack','chopped_block',3,NULL,'category/chopped_/_drystack_1460039708.2.jpg','0,28,225,197','Retaining walls not only help prevent erosion, but, when built properly, with natural chopped stone from Bedrock Stone & Design, they can be stunning addition to your landscape.  Natural chopped stone also can add a beautiful border to a flower bed that can add texture and contrast to an already beautiful landscape.\r\n\r\nWe offer chopped block in sizes from 2\"x4\" to 12\"x12\" in limestone, Oklahoma Sandstone, Texas Sandstone and others at our yards in Austin, Tx.  Browse some of them here.','For retaining walls or borders, natural chopped block adds color and interest to a landscape design.','Retaining walls not only help prevent erosion, but, when built properly, with natural chopped stone from Bedrock Stone & Design, they can be stunning addition to your landscape.  Natural chopped stone also can add a beautiful border to a flower bed that can add texture and contrast to an already beautiful landscape.\r\n\r\nWe offer chopped block in sizes from 2\"x4\" to 12\"x12\" in limestone, Oklahoma Sandstone, Texas Sandstone and others at our yards in Austin, Tx.  Browse some of them here.','Muros de contención no sólo ayudan a prevenir la erosión, pero , cuando se construyó correctamente, con piedra natural picada de roca de fondo de piedra y diseño, que puede ser impresionante , además de su paisaje. piedra picada natural también puede añadir una frontera hermosa de un macizo de flores que se pueden añadir textura y contraste a una ya hermoso paisaje .\r\n\r\nOfrecemos bloque picado en tamaños de 2 \"x 4 \" a 12 \"x 12 \" en piedra caliza , piedra arenisca de Oklahoma , Texas arenisca y otros en nuestros patios en Austin , Tx . Ver algunos de ellos aquí.','Chopped / Drystack','Picada / Seco De','For retaining walls or borders, natural chopped block adds color and interest to a landscape design.','Para muros de contención o fronteras , bloque picada naturales añade color e interés a un diseño del paisaje .','chopped_block','chopped_block'),(6,'Boulders','boulders',2,NULL,'category/boulders_1460039472.8.jpg','45,0,755,533','Natural boulders add the next level of visual interest to a landscape.  At Bedrock Stone & Design we carry a wide variety of boulders from areas like Oklahoma, Arkansas, Texas, Pennsylvania in unique shapes, sizes and colors. There is little that adds as much wow factor to a landscape as a well placed natural boulder. \r\n\r\nBrowse just a few samples of the wide variety of boulders we carry at our locations in Austin, Tx.','Natural boulders add depth and interest to your landscape design.','Natural boulders add the next level of visual interest to a landscape.  At Bedrock Stone & Design we carry a wide variety of boulders from areas like Oklahoma, Arkansas, Texas, Pennsylvania in unique shapes, sizes and colors. There is little that adds as much wow factor to a landscape as a well placed natural boulder. \r\n\r\nBrowse just a few samples of the wide variety of boulders we carry at our locations in Austin, Tx.','Piedras naturales se suman al siguiente nivel de interés visual a un paisaje . En Bedrock Stone & Design contamos con una amplia variedad de cantos rodados de las zonas como Oklahoma , Arkansas , Texas , Pennsylvania en formas únicas , tamaños y colores . Es poco lo que se suma la mayor cantidad factor sorpresa a un paisaje como una roca natural bien colocado .\r\n\r\nExplorar sólo algunos ejemplos de la gran variedad de cantos rodados que llevamos en nuestras ubicaciones en Austin , Tx .','Boulders','Cantos Rodados','Natural boulders add depth and interest to your landscape design.','Piedras naturales añaden profundidad e interés a su diseño del paisaje .','boulders','boulders'),(7,'Thin Veneer','thin_veneer',2,2,'category/thin_veneer_1460039594.73.jpg','30,0,270,180','Thin veneer gets you the best of both worlds. You get the character, texture and color of natural rock with a weight that is comparable to many manufactured products. Bedrock Stone & Design is the largest supplier in the Austin, Tx area. \r\n\r\nPlease take a few moments to browse through a small selection of the Thin Veneer products we carry.','Thin Veneer\'s relatively light-weight application broadens your options when considering the best location for this beautiful, easy to use product.','Thin veneer gets you the best of both worlds. You get the character, texture and color of natural rock with a weight that is comparable to many manufactured products. Bedrock Stone & Design is the largest supplier in the Austin, Tx area. \r\n\r\nPlease take a few moments to browse through a small selection of the Thin Veneer products we carry.','Fino barniz que saca lo mejor de ambos mundos . Que obtenga el carácter , la textura y el color de la roca natural con un peso que es comparable al de muchos productos manufacturados. Bedrock Stone & Diseño es el mayor proveedor en el área de Austin , Tx .\r\n\r\nPor favor tome unos momentos para navegar a través de una pequeña selección de los productos de chapa fina que llevamos.','Thin Veneer','Chapa Delgada','Thin Veneer\'s relatively light-weight application broadens your options when considering the best location for this beautiful, easy to use product.','Aplicación relativamente ligero de chapa fina amplía sus opciones cuando se considera la mejor ubicación para este hermoso producto fácil de usar.','thin_veneer','thin_veneer');
/*!40000 ALTER TABLE `web_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_contentpage`
--

DROP TABLE IF EXISTS `web_contentpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_contentpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `cropped` varchar(255) NOT NULL,
  `homepage_position` int(11) DEFAULT NULL,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_contentpage`
--

LOCK TABLES `web_contentpage` WRITE;
/*!40000 ALTER TABLE `web_contentpage` DISABLE KEYS */;
INSERT INTO `web_contentpage` VALUES (1,'Natural Stone','Just about any design product can be made more elegant with the addition of Natural Stone. In an interior design, adding a natural stone wall has the effect of bringing some of the outdoors in, and adds texture and color that is almost impossible to mimic with manufactured materials. Very little adds elegance to a living room like a natural stone fire hearth around a fireplace. \r\n\r\nOutdoors, natural stone borders made of some of Bedrock\'s chopped block can offer a great barrier to weeds and help define an area while adding color and interest. Our boulders can be placed in beds or laws or even added to entertaining areas for informal seating. Aggregates add a weed barrier and help prevent erosion and retain moisture, saving money on water bills.','Natural stone adds color, depth and visual interest to any project. At Bedrock Stone & Design, we pride ourselves in carrying the largest selection of natural stone products in Central Texas.','natural_stone',1,'contentpage/natural_stone_1460036151.78.jpg','0,0,3456,2592',1,'Just about any design product can be made more elegant with the addition of Natural Stone. In an interior design, adding a natural stone wall has the effect of bringing some of the outdoors in, and adds texture and color that is almost impossible to mimic with manufactured materials. Very little adds elegance to a living room like a natural stone fire hearth around a fireplace. \r\n\r\nOutdoors, natural stone borders made of some of Bedrock\'s chopped block can offer a great barrier to weeds and help define an area while adding color and interest. Our boulders can be placed in beds or laws or even added to entertaining areas for informal seating. Aggregates add a weed barrier and help prevent erosion and retain moisture, saving money on water bills.','Casi cualquier producto de diseño se puede hacer más elegante con la adición de la Piedra Natural . En un diseño de interiores , la adición de un muro de piedra natural tiene el efecto de traer algunos de actividades al aire libre en , y añade textura y color que es casi imposible de imitar con materiales manufacturados. Muy poco añade elegancia a una sala de estar como un hogar de piedra natural de incendios alrededor de una chimenea .\r\n\r\nAl aire libre, las fronteras naturales de piedra hechas de algunos de bloques de roca de fondo picada pueden ofrecer una gran barrera para las malas hierbas y ayudar a definir una zona al tiempo que añade color e interés . Nuestros cantos rodados pueden ser colocados en camas o leyes o incluso añaden a entretener a las zonas de asientos informales . Los agregados añaden una barrera de hierba y ayudan a prevenir la erosión y conservar la humedad , ahorrando dinero en las facturas de agua .','Natural Stone','Piedra Natural','Natural stone adds color, depth and visual interest to any project. At Bedrock Stone & Design, we pride ourselves in carrying the largest selection of natural stone products in Central Texas.','La piedra natural añade color , profundidad e interés visual a cualquier proyecto. En Bedrock Stone & Design , nos enorgullecemos en la realización de la mayor selección de productos de piedra natural en el centro de Texas .','natural_stone','natural_stone'),(2,'Landscaping','With 4 convenient locations, Bedrock Stone & Design carries the largest supply of landscape supplies in the Austin, TX area. \r\n\r\nWhether you\'re looking for patio stone, boulders, concrete, or aggregates, we\'re sure to have the landscaping supplies you need. Please take a few minutes to browse our site and give us a call at 512-266-8080!','Bedrock Stone & Design is a leading landscaping supplier in the Austin, TX area.','landscaping_supplies',2,'contentpage/landscaping_1460036334.46.tif','117,0,1983,1400',2,'With 4 convenient locations, Bedrock Stone & Design carries the largest supply of landscape supplies in the Austin, TX area. \r\n\r\nWhether you\'re looking for patio stone, boulders, concrete, or aggregates, we\'re sure to have the landscaping supplies you need. Please take a few minutes to browse our site and give us a call at 512-266-8080!','Con 4 lugares convenientes, Bedrock Stone & Diseño lleva la mayor oferta de fuentes del paisaje en el área de Austin, TX .\r\n\r\nYa sea que esté buscando Patio de piedra , rocas, concreto o agregados, estamos seguros de tener los suministros de jardinería que necesita. Por favo, tome unos minutos para navegar por nuestro sitio y nos dan una llamada al 512-266-8080!','Landscaping','Paisajismo','Bedrock Stone & Design is a leading landscaping supplier in the Austin, TX area.','Lecho de roca de piedra y Diseño es un proveedor líder de jardinería en el área de Austin , TX .','landscaping_supplies','landscaping_supplies'),(3,'Customer Service','No one understands the industry like the staff at Bedrock Stone & Design. Whatever your design need, our representatives have most likely dealt with it before. They can walk you though our many on site displays to show you examples of our product used in real world applications, or help your browse through our on site kiosk systems that show not only our products, but projects in which they\'ve been used.\r\n\r\nCome check us out! You\'ll be glad you did!','At Bedrock Stone & Design, we pride ourself at being the local leader in customer service.','customer_service',500,'contentpage/customer_service_1460036481.46.JPG','0,0,3456,2592',3,'No one understands the industry like the staff at Bedrock Stone & Design. Whatever your design need, our representatives have most likely dealt with it before. They can walk you though our many on site displays to show you examples of our product used in real world applications, or help your browse through our on site kiosk systems that show not only our products, but projects in which they\'ve been used.\r\n\r\nCome check us out! You\'ll be glad you did!','Nadie entiende la industria como el personal de la roca de fondo de piedra y diseño . Sea cual sea su necesidad de diseño , nuestros representantes han tratado más probable que antes. Pueden caminar a pesar de nuestros muchos en el sitio muestra a mostrar ejemplos de nuestro producto utilizados en aplicaciones del mundo real, o ayudar a su navegar a través de nuestro sitio en sistemas de quiosco que muestran no sólo nuestros productos, sino proyectos en los que hemos sido utilizados .\r\n\r\nVen a visitarnos ! Te alegrarás de haberlo hecho!','Customer Service','Servicio al Cliente','At Bedrock Stone & Design, we pride ourself at being the local leader in customer service.','En Bedrock Stone & Design, estamos orgullosos de nosotros mismos a ser el líder local de atención al cliente .','customer_service','customer_service'),(4,'Manufactured Stone','At Bedrock Stone & Design, our manufactured stone\'s colors are unsurpassed in the industry. Each stone and brick is literally hand painted piece-by-piece by highly-trained industry leading artisans. We use only the highest quality natural mineral oxides to infuse the surface with rich, authentic tones. When you take a closer look at Eldorado Stone you will see the unmatched depth and variation of colors; hints of rust, mossy greens, russet browns and golden umbers.\r\n\r\nEvery piece of our manufactured stone is cast from a special mold of an actual natural stone. Craftsmen sort through tons of stone, piece by piece, selecting only the rocks that complement each other and have just the right shape, texture, size and detail. Our state of the art mold manufacturing facility is able to capture every textural detail down to the most finite level.','For the occasion when natural stone just won\'t cut it, Bedrock Stone & Design carries a line of manufactured stones that will be sure to fit your design needs.','manufactured_stone',500,'contentpage/manufactured_stone_1460036704.13.jpg','81,0,634,415',NULL,'At Bedrock Stone & Design, our manufactured stone\'s colors are unsurpassed in the industry. Each stone and brick is literally hand painted piece-by-piece by highly-trained industry leading artisans. We use only the highest quality natural mineral oxides to infuse the surface with rich, authentic tones. When you take a closer look at Eldorado Stone you will see the unmatched depth and variation of colors; hints of rust, mossy greens, russet browns and golden umbers.\r\n\r\nEvery piece of our manufactured stone is cast from a special mold of an actual natural stone. Craftsmen sort through tons of stone, piece by piece, selecting only the rocks that complement each other and have just the right shape, texture, size and detail. Our state of the art mold manufacturing facility is able to capture every textural detail down to the most finite level.','En roca de fondo de piedra y diseño, los colores de nuestra piedra artificial son sin igual en la industria . Cada piedra y ladrillo es, literalmente, pintados a mano pieza por pieza por artesanos líderes en la industria altamente capacitados . Utilizamos sólo los óxidos minerales naturales de la mejor calidad para infundir la superficie con tonos intensos y auténticos . Cuando se echa un vistazo más de cerca a Eldorado Piedra verá la profundidad sin igual y una variación de colores ; toques de óxido, verdes musgo , marrones rojizos y dorados umbers .\r\n\r\nCada pieza de nuestra piedra fabricada se echa de un molde especial de una piedra natural real. Artesanos especie a través de toneladas de piedra , pieza por pieza, seleccionando sólo las rocas que se complementan entre sí y tienen sólo el derecho forma, textura , tamaño y detalle . Nuestro estado de la instalación de arte de fabricación de moldes es capaz de capturar todos los detalles de textura hasta el nivel más finito.','Manufactured Stone','Fabricado Piedra','For the occasion when natural stone just won\'t cut it, Bedrock Stone & Design carries a line of manufactured stones that will be sure to fit your design needs.','Para la ocasión, cuando la piedra natural simplemente no se corte, Bedrock Stone & Design lleva una línea de piedras que serán fabricados seguro para adaptarse a sus necesidades de diseño.','manufactured_stone','manufactured_stone'),(5,'Services','24 hour shipping includes Greater Austin and surrounding cities, San Antonio, Lake Travis, Dripping Springs, Greater Marble Falls, George Town etc. Call to confirm your city. We will usually get it there the same day or within 24 hours!',NULL,'services',500,'contentpage/services_1460036804.53.jpg','14,0,236,167',NULL,'24 hour shipping includes Greater Austin and surrounding cities, San Antonio, Lake Travis, Dripping Springs, Greater Marble Falls, George Town etc. Call to confirm your city. We will usually get it there the same day or within 24 hours!','24 horas de envío incluye metropolitana de Austin y ciudades de los alrededores , San Antonio , el lago Travis , Dripping Springs , Gran Marble Falls, George Town , etc. Llame para confirmar su ciudad. por lo general vamos a llegar allí el mismo día o dentro de las 24 horas !','Services','Servicios',NULL,NULL,'services','services');
/*!40000 ALTER TABLE `web_contentpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_galleryitem`
--

DROP TABLE IF EXISTS `web_galleryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_galleryitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `large` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_galleryitem`
--

LOCK TABLES `web_galleryitem` WRITE;
/*!40000 ALTER TABLE `web_galleryitem` DISABLE KEYS */;
INSERT INTO `web_galleryitem` VALUES (1,'2','2',2,'0,136,800,511','gallery/IMO101.jpg','133,0,669,536','1',NULL,'1','1','2','1',NULL,NULL,'2',''),(2,'Square Pool','1',1,'0,210,2100,1194','gallery/_MG_0191_copyp5x7.tif','350,0,1750,1400','1',NULL,'1','1','Square Pool','1',NULL,NULL,'1',''),(3,'3','3',3,'0,252,3600,1940','gallery/_MG_0858p8x12.tif','704,0,2896,2192',NULL,NULL,NULL,NULL,'3','',NULL,NULL,'3',''),(4,'4','4',4,'0,1209,4550,3341','gallery/Land110.jpg','0,0,4550,4550',NULL,NULL,NULL,NULL,'4','',NULL,NULL,'4',''),(5,'5','5',5,'0,120,2100,1104','gallery/_MG_0433p5x7.tif','438,0,1662,1224',NULL,NULL,NULL,NULL,'5','',NULL,NULL,'5',''),(6,'6','6',6,'0,356,3600,2044','gallery/PP103.tif','600,0,3000,2400',NULL,NULL,NULL,NULL,'6','',NULL,NULL,'6',''),(7,'7','7',7,'0,1684,7000,4966','gallery/WF110.jpg','175,0,6825,6650',NULL,NULL,NULL,NULL,'7','',NULL,NULL,'7',''),(8,'8','8',8,'0,356,3600,2044','gallery/PP101.tif','600,0,3000,2400',NULL,NULL,NULL,NULL,'8','',NULL,NULL,'8','');
/*!40000 ALTER TABLE `web_galleryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_job`
--

DROP TABLE IF EXISTS `web_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_job`
--

LOCK TABLES `web_job` WRITE;
/*!40000 ALTER TABLE `web_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_location`
--

DROP TABLE IF EXISTS `web_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `description` longtext,
  `phone_number` varchar(13) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `zip` varchar(5) NOT NULL,
  `cropped` varchar(255) NOT NULL,
  `image` varchar(100),
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_location`
--

LOCK TABLES `web_location` WRITE;
/*!40000 ALTER TABLE `web_location` DISABLE KEYS */;
INSERT INTO `web_location` VALUES (1,'Rock 1','rock_1',1,NULL,'','Austin','3700 Ranch Road 620 North','78734','0,28,225,197','product/no_image.jpeg','At this location, you\'ll find many beautiful displays using our natural stone products. There is a walking path through oak shade trees that features walls made of natural Oklahoma sandstone, landscaping using natural limestone and sandstone boulders and beautiful patios made of Mexican and Oklahoma Sandstone. Taking a tour of this location is sure to give you many ideas for your project. Come visit us today!','Established in 2003, Rock 1 is one of the longest running rock yards in the Austin, TX area.','At this location, you\'ll find many beautiful displays using our natural stone products. There is a walking path through oak shade trees that features walls made of natural Oklahoma sandstone, landscaping using natural limestone and sandstone boulders and beautiful patios made of Mexican and Oklahoma Sandstone. Taking a tour of this location is sure to give you many ideas for your project. Come visit us today!','En este lugar , encontrará muchas hermosas muestras usando nuestros productos de piedra natural . Hay un camino que recorre a través de los árboles de sombra de roble que cuenta con paredes hechas de piedra arenisca natural de Oklahoma , el paisajismo con piedra caliza natural y cantos rodados de arenisca y bellos patios hechos de piedra arenisca de México y Oklahoma . Hacer un recorrido de este lugar es seguro que le dará muchas ideas para su proyecto . Visítenos hoy!','Rock 1','Rock 1','Established in 2003, Rock 1 is one of the longest running rock yards in the Austin, TX area.','Establecido en 2003 , Roca 1 es uno de los astilleros más largos de roca en ejecución en el área de Austin , TX .','rock_1',''),(2,'Rock 2','rock_2',2,NULL,'512-288-0505','Austin','9401 Highway 290 West','78736','0,28,225,197','product/no_image.jpeg','In addition it has a tumbler on site to allow you to select your own stone and have it tumbled, adding character to your design.  It also boasts a large assortment of masonry tools to make your project just a bit easier. Check out our Rock II location, you\'ll be glad you did','Located conveniently on Highway 290 in Austin, TX, Bedrock Stone & Design II has the amazing selection of natural stone products you expect from Bedrock Stone & Design.','In addition it has a tumbler on site to allow you to select your own stone and have it tumbled, adding character to your design.  It also boasts a large assortment of masonry tools to make your project just a bit easier. Check out our Rock II location, you\'ll be glad you did','Además dispone de un vaso en el sitio que le permite seleccionar su propia piedra y hacer que se desplomó , añadiendo carácter a su diseño. Además, cuenta con una gran variedad de herramientas de albañilería para hacer su proyecto un poco más fácil. Visita nuestra ubicación Roca II , se le alegra que usted lo hizo','Rock 2','Rock 2','Located conveniently on Highway 290 in Austin, TX, Bedrock Stone & Design II has the amazing selection of natural stone products you expect from Bedrock Stone & Design.','Situado convenientemente en la autopista 290 en Austin , TX , Bedrock Stone & Design II tiene la increíble selección de productos de piedra natural se pueden esperar de Bedrock Stone & Design.','rock_2',''),(3,'Rock 3','rock_3',3,NULL,'512-263-2288','Bee Cave','13652 Hwy 71 West','78738','0,28,225,197','product/no_image.jpeg','Located conveniently on 71 in Bee Caves, Texas, Bedrock Stone and Design III has a huge selection of natural patio stone and natural chopped stone as well as a large selection of aggregate products. If you\'re in the Spicewood, Texas are or Lakeway area, this location is convenient for you and offers the product line you\'ve come to expect from Bedrock Stone & Design.','Bedrock Stone & Design III is our Highway 71 location.','Located conveniently on 71 in Bee Caves, Texas, Bedrock Stone and Design III has a huge selection of natural patio stone and natural chopped stone as well as a large selection of aggregate products. If you\'re in the Spicewood, Texas are or Lakeway area, this location is convenient for you and offers the product line you\'ve come to expect from Bedrock Stone & Design.','Ubicado convenientemente en 71 en Bee Cuevas , Texas, Bedrock Stone y Diseño III tiene una gran selección de patio de piedra natural y piedra natural picada , así como una gran selección de productos agregados . Si estás en la Spicewood , Texas son o área Lakeway , esta ubicación es conveniente para usted y ofrece la línea de productos que ha llegado a esperar de Bedrock Stone & Design.','Rock 3','Rock 3','Bedrock Stone & Design III is our Highway 71 location.','Lecho de roca de piedra y Diseño III es nuestra ubicación autopista 71 .','rock_3','rock_3'),(4,'Rock 4','rock_4',4,NULL,'','Austin','2209 Ranch Road 620 North','78734','0,28,225,197','product/no_image.jpeg','Our Rock IV location in Austin, Tex features the same line of natural stone products you\'ve come to expect from Bedrock Stone & Design but also a line of specialty stone products that are sure to liven up your project. Come check us out!','Bedrock Stone & Design IV is our newest location in Austin, TX.','Our Rock IV location in Austin, Tex features the same line of natural stone products you\'ve come to expect from Bedrock Stone & Design but also a line of specialty stone products that are sure to liven up your project. Come check us out!','Nuestra ubicación de la roca IV en Austin , Tex cuenta con la misma línea de productos de piedra natural que ha llegado a esperar de roca de fondo de piedra y diseño sino también una línea de productos de piedra de la especialidad que son seguros para darle vida a su proyecto. Ven a visitarnos!','Rock 4','Rock 4','Bedrock Stone & Design IV is our newest location in Austin, TX.','Lecho de roca de piedra y Diseño IV es nuestra nueva ubicación en Austin , TX .','rock_4','rock_4');
/*!40000 ALTER TABLE `web_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_locationpicture`
--

DROP TABLE IF EXISTS `web_locationpicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_locationpicture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `cropped` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_locationpicture_location_id_3c9417f8_fk_web_location_id` (`location_id`),
  CONSTRAINT `web_locationpicture_location_id_3c9417f8_fk_web_location_id` FOREIGN KEY (`location_id`) REFERENCES `web_location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_locationpicture`
--

LOCK TABLES `web_locationpicture` WRITE;
/*!40000 ALTER TABLE `web_locationpicture` DISABLE KEYS */;
INSERT INTO `web_locationpicture` VALUES (1,'locationpicture/rock_1_1460037770.14.JPG','0,0,3264,2448',1),(2,'locationpicture/rock_1_1460037801.94.JPG','0,0,3264,2448',1),(3,'locationpicture/rock_1_1460037835.45.JPG','0,0,3264,2448',1),(4,'locationpicture/rock_2_1460048121.3.JPG','0,0,3264,2448',2),(5,'locationpicture/rock_2_1460048141.64.JPG','0,0,3264,2448',2),(6,'locationpicture/rock_2_1460048169.08.JPG','0,0,3264,2448',2),(7,'locationpicture/rock_2_1460048189.06.JPG','0,0,3264,2448',2),(8,'locationpicture/rock_2_1460048213.09.JPG','0,0,3264,2448',2),(9,'locationpicture/rock_3_1460048242.15.JPG','0,0,3264,2448',3),(10,'locationpicture/rock_3_1460048260.24.JPG','0,0,3264,2448',3),(11,'locationpicture/rock_3_1460048278.13.JPG','0,0,3264,2448',3),(12,'locationpicture/rock_3_1460048296.06.JPG','0,0,3264,2448',3),(13,'locationpicture/rock_4_1460048320.41.JPG','0,0,3264,2448',4),(14,'locationpicture/rock_4_1460048337.17.JPG','0,0,3264,2448',4),(15,'locationpicture/rock_4_1460048356.2.JPG','0,0,3264,2448',4);
/*!40000 ALTER TABLE `web_locationpicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_menuitem`
--

DROP TABLE IF EXISTS `web_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`),
  KEY `web_menuitem_parent_id_808e6f11_uniq` (`parent_id`),
  CONSTRAINT `web_menuitem_parent_id_808e6f11_fk_web_menuitem_id` FOREIGN KEY (`parent_id`) REFERENCES `web_menuitem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_menuitem`
--

LOCK TABLES `web_menuitem` WRITE;
/*!40000 ALTER TABLE `web_menuitem` DISABLE KEYS */;
INSERT INTO `web_menuitem` VALUES (1,'Home',NULL,NULL,'/',1,NULL,NULL,NULL,'Home','Casa',NULL,NULL,'/','/'),(2,'Products',NULL,'View our products','/products/',2,NULL,NULL,NULL,'Products','Productos','View our products','ver productos','/products/',''),(3,'Showcase',NULL,NULL,'/showcase/',3,NULL,NULL,NULL,'Showcase','Escaparate',NULL,NULL,'/showcase/','/showcase/'),(4,'Jobs',NULL,NULL,'/jobs/',4,NULL,NULL,NULL,'Jobs','Trabajos',NULL,NULL,'/jobs/','/jobs/'),(5,'Contact',NULL,NULL,'/contact/',5,NULL,NULL,NULL,'Contact','Contacto',NULL,NULL,'/contact/','/contact/'),(6,'About Us',NULL,NULL,'/about/',5,5,NULL,NULL,'About Us','Sobre nosotros',NULL,NULL,'/about/','/about/');
/*!40000 ALTER TABLE `web_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_product`
--

DROP TABLE IF EXISTS `web_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(100),
  `cropped` varchar(255) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`),
  KEY `web_product_category_id_45570ba5_fk_web_category_id` (`category_id`),
  CONSTRAINT `web_product_category_id_45570ba5_fk_web_category_id` FOREIGN KEY (`category_id`) REFERENCES `web_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_product`
--

LOCK TABLES `web_product` WRITE;
/*!40000 ALTER TABLE `web_product` DISABLE KEYS */;
INSERT INTO `web_product` VALUES (1,'Buff Peach','',500,3,'product/buff_peach_1460040355.02.jpg','0,0,640,480',NULL,NULL,NULL,NULL,'Buff Peach','Buff melocotón',NULL,NULL,NULL,NULL),(2,'Decomposed Granite','',500,1,'product/decomposed_granite_1460040405.7.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Decomposed Granite','Granito Descompuesto',NULL,NULL,NULL,NULL),(3,'Fossil Blend','',500,7,'product/fossil_blend_1460040557.69.JPG','0,0,400,300',NULL,NULL,NULL,NULL,'Fossil Blend','Mezcla fósiles',NULL,NULL,NULL,NULL),(4,'White Limestone','',500,5,'product/white_limestone_1460040650.23.jpg','0,0,3456,2592',NULL,NULL,NULL,NULL,'White Limestone','Caliza Blanca',NULL,NULL,NULL,NULL),(5,'Tumbled','',500,2,'product/tumbled_1460040740.82.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Tumbled','Tumbled',NULL,NULL,NULL,NULL),(6,'Tx Moss Rock','',500,6,'product/tx_moss_rock_1460040829.4.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Tx Moss Rock','Tx Musgo Roca',NULL,NULL,NULL,NULL),(7,'Tumbled Choc Gold','',500,5,'product/tumbled_choc_gold_1460041035.88.jpg','23,0,377,266',NULL,NULL,NULL,NULL,'Tumbled Choc Gold','Choco Oro Tambo',NULL,NULL,NULL,NULL),(8,'Ocean Mist','',500,3,'product/ocean_mist_1460041218.53.jpg','0,0,640,480',NULL,NULL,NULL,NULL,'Ocean Mist','Niebla do Oceano',NULL,NULL,NULL,NULL),(9,'Black Bassalt','',500,1,'product/black_bassalt_1460041295.11.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Black Bassalt','Negro Bassalt',NULL,NULL,NULL,NULL),(10,'Lueders Blend','',500,5,'product/lueders_blend_1460041376.67.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Lueders Blend','Mezcla Lueders',NULL,NULL,NULL,NULL),(11,'Limestone','',500,6,'product/limestone_1460041410.8.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Limestone','Caliza',NULL,NULL,NULL,NULL),(12,'Cambridge','',500,2,'product/cambridge_1460041475.14.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Cambridge','Cambridge',NULL,NULL,NULL,NULL),(13,'Sandstone Mix','',500,5,'product/sandstone_mix_1460041533.89.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Sandstone Mix','Mezcla Arenisca',NULL,NULL,NULL,NULL),(14,'Hill Country','',500,1,'product/hill_country_1460041603.1.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Hill Country','Colina País',NULL,NULL,NULL,NULL),(15,'Granite','',500,6,'product/granite_1460041682.78.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Granite','Granito',NULL,NULL,NULL,NULL),(16,'Old World','',500,2,'product/old_world_1460041748.25.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Old World','Viejo Mundo',NULL,NULL,NULL,NULL),(17,'Choc Gold Blue','',500,5,'product/choc_gold_blue_1460041834.69.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Choc Gold Blue','Choco Oro Azuel',NULL,NULL,NULL,NULL),(18,'Choc Gold','',500,3,'product/choc_gold_1460041929.61.jpg','0,0,640,480',NULL,NULL,NULL,NULL,'Choc Gold','Choco Oro',NULL,NULL,NULL,NULL),(19,'Washed Rock','',500,1,'product/washed_rock_1460042023.41.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Washed Rock','Roca Lavado',NULL,NULL,NULL,NULL),(20,'Buffed Peach','',500,7,'product/buffed_peach_1460042130.24.JPG','0,0,400,300',NULL,NULL,NULL,NULL,'Buffed Peach','Melocotón Pulimentado',NULL,NULL,NULL,NULL),(21,'Penn. Lilac','',500,6,'product/penn._lilac_1460042184.03.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Penn. Lilac','Lila Penn.',NULL,NULL,NULL,NULL),(22,'OK. River Carmel','',500,6,'product/ok._river_carmel_1460042312.15.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'OK. River Carmel','Río Río',NULL,NULL,NULL,NULL),(23,'Lueders Roughback','',500,5,'product/lueders_roughback_1460042361.93.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Lueders Roughback','Lueders Roughback',NULL,NULL,NULL,NULL),(24,'Santa Clara','',500,3,'product/santa_clara_1460042391.8.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Santa Clara','Santa Clara',NULL,NULL,NULL,NULL),(25,'Pea Gravel','',500,1,'product/pea_gravel_1460042455.22.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Pea Gravel','Grava Guisante',NULL,NULL,NULL,NULL),(26,'Ok Mix','',500,5,'product/ok_mix_1460042520.81.JPG','22,0,378,267',NULL,NULL,NULL,NULL,'Ok Mix','Mezcla de OK',NULL,NULL,NULL,NULL),(27,'Fairland Pink','',500,1,'product/fairland_pink_1460042563.72.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Fairland Pink','Fairland Rosado',NULL,NULL,NULL,NULL),(28,'Leuders Choc Slabs','',500,3,'product/leuders_choc_slabs_1460042659.46.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Leuders Choc Slabs','Choco Losas',NULL,NULL,NULL,NULL),(29,'Choc Gold','',500,5,'product/choc_gold_1460042702.05.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Choc Gold','Choco Oro',NULL,NULL,NULL,NULL),(30,'Az River Rock','',500,1,'product/az_river_rock_1460042755.1.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Az River Rock','Roca Río AZ',NULL,NULL,NULL,NULL),(31,'Mex Beach Pebbles (Red)','',500,1,'product/mex_beach_pebbles_1460042879.48.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Mex Beach Pebbles (Red)','Guijarros Playa de México',NULL,NULL,NULL,NULL),(32,'Creme Sawn','',500,3,'product/creme_sawn_1460043853.61.JPG','0,0,400,300',NULL,NULL,NULL,NULL,'Creme Sawn','Crema aserrada',NULL,NULL,NULL,NULL),(33,'AZ Sunset','',500,3,'product/az_sunset_1460043988.27.JPG','0,0,400,300',NULL,NULL,NULL,NULL,'AZ Sunset','Puesto del Sol',NULL,NULL,NULL,NULL),(34,'Khaki','',500,3,'product/khaki_1460044074.75.JPG','0,0,400,300',NULL,NULL,NULL,NULL,'Khaki','Caqui',NULL,NULL,NULL,NULL),(35,'Black Mexican','',500,3,'product/black_mexican_1460044164.12.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Black Mexican','Mexicano Negro',NULL,NULL,NULL,NULL),(36,'Lueders Fossil Slabs','',500,3,'product/lueders_fossil_slabs_1460044266.15.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Lueders Fossil Slabs','Losas fósiles Lueders',NULL,NULL,NULL,NULL),(37,'Okie Ledge','',500,5,'product/okie_ledge_1460044361.56.jpg','0,0,640,480',NULL,NULL,NULL,NULL,'Okie Ledge','Repisa Okie',NULL,NULL,NULL,NULL),(38,'OK Sandstone','',500,6,'product/ok_sandstone_1460044447.68.jpg','0,0,3456,2592',NULL,NULL,NULL,NULL,'OK Sandstone','Arenisca OK',NULL,NULL,NULL,NULL),(39,'Cafe','',500,3,'product/cafe_1460044486.83.JPG','0,0,778,584',NULL,NULL,NULL,NULL,'Cafe','Cafe',NULL,NULL,NULL,NULL),(40,'Classic Oak','',500,3,'product/classic_oak_1460044537.05.jpg','0,0,640,480',NULL,NULL,NULL,NULL,'Classic Oak','Clásico Roble',NULL,NULL,NULL,NULL),(41,'Ok Sunset','',500,3,'product/ok_sunset_1460044585.77.jpg','0,0,640,480',NULL,NULL,NULL,NULL,'Ok Sunset','Puesta de Sol OK',NULL,NULL,NULL,NULL),(42,'Tumbled Mix','',500,5,'product/tumbled_mix_1460044642.36.jpg','0,0,400,300',NULL,NULL,NULL,NULL,'Tumbled Mix','Mezcla Tambor',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `web_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_project`
--

DROP TABLE IF EXISTS `web_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `image` varchar(100),
  `cropped` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`),
  KEY `web_project_94757cae` (`type_id`),
  CONSTRAINT `web_project_type_id_bf6363fd_fk_web_projecttype_id` FOREIGN KEY (`type_id`) REFERENCES `web_projecttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_project`
--

LOCK TABLES `web_project` WRITE;
/*!40000 ALTER TABLE `web_project` DISABLE KEYS */;
INSERT INTO `web_project` VALUES (1,'Palm Pool','palm_pool',500,'project/palm_pool_1460045541.84.tif','204,0,3404,2400',1,NULL,NULL,NULL,NULL,'Palm Pool','Palma Piscina',NULL,NULL,'palm_pool','palm_pool'),(2,'Retaining Wall','retaining_wall',500,'project/retaining_wall_1460045618.2.tif','336,0,3264,2192',1,NULL,NULL,NULL,NULL,'Retaining Wall','Muro de Contención',NULL,NULL,'retaining_wall','retaining_wall'),(3,'Water Slide','water_slide',500,'project/tumbled_pavers_1460045735.33.tif','217,0,1878,1246',1,NULL,NULL,NULL,NULL,'Water Slide','Tobogán',NULL,NULL,'water_slide','water_slide'),(4,'Tumbled Pavers','tumbled_pavers',500,'project/tumbled_pavers_1460045835.19.tif','204,0,3404,2400',1,NULL,NULL,NULL,NULL,'Tumbled Pavers','Soleras Caídos',NULL,NULL,'tumbled_pavers',''),(5,'Limestone Coping','limestone_coping',500,'project/limestone_coping_1460045906.87.jpg','83,0,1417,1000',1,NULL,NULL,NULL,NULL,'Limestone Coping','Caliza de Afrontamiento',NULL,NULL,'limestone_coping',''),(6,'Limestone Grill','limestone_grill',500,'project/limestone_grill_1460046034.31.jpg','85,0,1418,1000',2,NULL,NULL,NULL,NULL,'Limestone Grill','Caliza Grill',NULL,NULL,'limestone_grill',''),(7,'Oklahoma','oklahoma',500,'project/oklahoma_1460046101.13.tif','42,0,2058,1510',2,NULL,NULL,NULL,NULL,'Oklahoma','Oklahoma',NULL,NULL,'oklahoma',''),(8,'Oklahoma Grill','oklahoma_grill',500,'project/oklahoma_grill_1460046210.62.tif','420,0,3588,2376',2,NULL,NULL,NULL,NULL,'Oklahoma Grill','Parrilla Oklahoma',NULL,NULL,'oklahoma_grill',''),(9,'Chopped Fountain','chopped_fountain',500,'project/chopped_fountain_1460046341.05.jpg','27,0,454,320',3,NULL,NULL,NULL,NULL,'Chopped Fountain','Fuente Picado',NULL,NULL,'chopped_fountain',''),(10,'Sandstone Waterfall','sandstone_waterfall',500,'project/sandstone_waterfall_1460047086.37.jpg','0,700,7000,5950',3,NULL,NULL,NULL,NULL,'Sandstone Waterfall','Cascada Piedra Arenisca',NULL,NULL,'sandstone_waterfall',''),(11,'Wall Waterfall','wall_waterfall',500,'project/wall_waterfall_1460047163.32.JPG','170,0,2831,2000',3,NULL,NULL,NULL,NULL,'Wall Waterfall','Pared de la Cascada',NULL,NULL,'wall_waterfall',''),(12,'Bridge','Bridge',500,'project/bridge_1460047215.25.tif','119,0,1986,1400',3,NULL,NULL,NULL,NULL,'Bridge','Puente',NULL,NULL,'Bridge',''),(13,'OK Waterfall','oklahoma_waterfall',500,'project/ok_waterfall_1460047321.18.JPG','0,0,2048,1536',3,NULL,NULL,NULL,NULL,'OK Waterfall','Cascada OK',NULL,NULL,'oklahoma_waterfall',''),(14,'Water Walkway','water_walkway',500,'project/water_walkway_1460047384.69.jpg','0,615,7700,6385',3,NULL,NULL,NULL,NULL,'Water Walkway','Pasarela Agua',NULL,NULL,'water_walkway',''),(15,'Helix','helix',500,'project/helix_1460047458.23.jpg','9,0,241,174',3,NULL,NULL,NULL,NULL,'Helix','Hélice',NULL,NULL,'helix',''),(16,'Stone Turrets','stone_turrets',500,'project/stone_turrets_1460047625.15.JPG','196,0,3268,2304',4,NULL,NULL,NULL,NULL,'Stone Turrets','Torretas de piedra',NULL,NULL,'stone_turrets',''),(17,'Limestone House','limestone_house',500,'project/limestone_house_1460047686.26.jpg','0,0,2048,1536',4,NULL,NULL,NULL,NULL,'Limestone House','Casa de Caliza',NULL,NULL,'limestone_house',''),(18,'Oklahoma House','oklahoma_house',500,'project/oklahoma_house_1460047735.73.JPG','196,0,3268,2304',4,NULL,NULL,NULL,NULL,'Oklahoma House','Casa Oklahoma',NULL,NULL,'oklahoma_house',''),(19,'Office','office',500,'project/office_1460047777.18.jpg','0,0,3456,2592',4,NULL,NULL,NULL,NULL,'Office','Oficina',NULL,NULL,'office',''),(20,'Arch','arch',500,'project/arch_1460047818.42.jpg','0,0,640,480',4,NULL,NULL,NULL,NULL,'Arch','Arco',NULL,NULL,'arch',''),(21,'OK Entry','entry',500,'project/ok_entry_1460047869.55.jpg','0,0,640,480',4,NULL,NULL,NULL,NULL,'OK Entry','Entrada OK',NULL,NULL,'entry',''),(22,'Chocolate Arch','choc_arch',500,'project/chocolate_arch_1460047938.74.jpg','0,0,3456,2592',4,NULL,NULL,NULL,NULL,'Chocolate Arch','Archo Chocolate',NULL,NULL,'choc_arch',''),(23,'Retaining Wall','retaining_wall',500,'project/retaining_wall_1460047999.55.jpg','0,0,3456,2592',4,NULL,NULL,NULL,NULL,'Retaining Wall','Muro Contención',NULL,NULL,'retaining_wall','');
/*!40000 ALTER TABLE `web_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_projecttype`
--

DROP TABLE IF EXISTS `web_projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_projecttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `image` varchar(100),
  `cropped` varchar(255) NOT NULL,
  `description` longtext,
  `long_description` longtext,
  `short_description` longtext,
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  `description_en` longtext,
  `description_es` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_projecttype`
--

LOCK TABLES `web_projecttype` WRITE;
/*!40000 ALTER TABLE `web_projecttype` DISABLE KEYS */;
INSERT INTO `web_projecttype` VALUES (1,'Pools','pools',1,'projecttype/pools_1460044835.91.tif','119,0,1986,1400','Using natural stone from Bedrock Stone & Design is a sure way to add color, interest and beauty to you pool. Browse some examples here.','Using natural stone from Bedrock Stone & Design is a sure way to add color, interest and beauty to you pool. Browse some examples here.',NULL,'Using natural stone from Bedrock Stone & Design is a sure way to add color, interest and beauty to you pool. Browse some examples here.','El uso de la piedra natural de la roca de fondo Stone & Diseño es una manera segura para añadir color, el interés y belleza a que la piscina. Ver algunos ejemplos aquí.','Pools','Quinielas',NULL,NULL,'pools','pools','Using natural stone from Bedrock Stone & Design is a sure way to add color, interest and beauty to you pool. Browse some examples here.','El uso de la piedra natural de la roca de fondo Stone & Diseño es una manera segura para añadir color, el interés y belleza a que la piscina. Ver algunos ejemplos aquí.'),(2,'Outdoor Kitchens','outdoor_kitchens',2,'projecttype/outdoor_kitchens_1460045058.93.jpg','27,0,454,320','Browse outdoor kitchen designs with natural stone from Bedrock Stone & Design here.','Browse outdoor kitchen designs with natural stone from Bedrock Stone & Design here.',NULL,'Browse outdoor kitchen designs with natural stone from Bedrock Stone & Design here.','Explorar diseños de la cocina al aire libre con piedra natural de roca de fondo de piedra y diseño aquí.','Outdoor Kitchens','Cocinas fuera de',NULL,NULL,'outdoor_kitchens','outdoor_kitchens','Browse outdoor kitchen designs with natural stone from Bedrock Stone & Design here.','Explorar diseños de la cocina al aire libre con piedra natural de roca de fondo de piedra y diseño aquí.'),(3,'Water Features','water_features',500,'projecttype/water_features_1460045360.68.JPG','0,27,2012,1536','Water and Natural stone are compliment each other well in any design. Browse some examples of water features designed with products from Bedrock Stone & Design here.','Water and Natural stone are compliment each other well in any design. Browse some examples of water features designed with products from Bedrock Stone & Design here.',NULL,'Water and Natural stone are compliment each other well in any design. Browse some examples of water features designed with products from Bedrock Stone & Design here.','Agua y piedra natural se complementan bien en cualquier diseño. Ver algunos ejemplos de las características del agua diseñados con productos de Bedrock Stone & Design aquí.','Water Features','Agua Destacado',NULL,NULL,'water_features','water_features','Water and Natural stone are compliment each other well in any design. Browse some examples of water features designed with products from Bedrock Stone & Design here.','Agua y piedra natural se complementan bien en cualquier diseño. Ver algunos ejemplos de las características del agua diseñados con productos de Bedrock Stone & Design aquí.'),(4,'Exterior Stone','exterior_stone',500,'projecttype/exterior_stone_1460045304.25.jpg','133,0,670,402','Bedrock Stone & Design carries a large assortment of natural stone products that look great on the exterior of your residential or commercial building. Browse a few examples of our products below.','Bedrock Stone & Design carries a large assortment of natural stone products that look great on the exterior of your residential or commercial building. Browse a few examples of our products below.',NULL,'Bedrock Stone & Design carries a large assortment of natural stone products that look great on the exterior of your residential or commercial building. Browse a few examples of our products below.','Lecho de roca de piedra y diseño conlleva un gran surtido de productos de piedra natural que se ven muy bien en el exterior de su edificio residencial o comercial. Explorar algunos ejemplos de nuestros productos abajo.','Exterior Stone','Piedra exterior',NULL,NULL,'exterior_stone','exterior_stone','Bedrock Stone & Design carries a large assortment of natural stone products that look great on the exterior of your residential or commercial building. Browse a few examples of our products below.','Lecho de roca de piedra y diseño conlleva un gran surtido de productos de piedra natural que se ven muy bien en el exterior de su edificio residencial o comercial. Explorar algunos ejemplos de nuestros productos abajo.');
/*!40000 ALTER TABLE `web_projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_staffmember`
--

DROP TABLE IF EXISTS `web_staffmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_staffmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `image` varchar(100),
  `show_on_contact_us` tinyint(1) NOT NULL,
  `cropped` varchar(255) NOT NULL,
  `long_description` longtext,
  `short_description` longtext,
  `title` varchar(100),
  `long_description_en` longtext,
  `long_description_es` longtext,
  `name_en` varchar(100),
  `name_es` varchar(100),
  `short_description_en` longtext,
  `short_description_es` longtext,
  `slug_en` varchar(100),
  `slug_es` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_staffmember`
--

LOCK TABLES `web_staffmember` WRITE;
/*!40000 ALTER TABLE `web_staffmember` DISABLE KEYS */;
INSERT INTO `web_staffmember` VALUES (1,'Kerzon Nickens','',1,NULL,'product/no_image.jpeg',1,'0,28,225,197',NULL,NULL,'Owner / President',NULL,NULL,'Kerzon Nickens',NULL,NULL,NULL,NULL,NULL),(2,'Matt Teifke','',2,NULL,'product/no_image.jpeg',1,'0,28,225,197',NULL,NULL,'General Manager',NULL,NULL,'Matt Teifke',NULL,NULL,NULL,NULL,NULL),(3,'Melissa Soliz','',3,NULL,'product/no_image.jpeg',1,'0,28,225,197',NULL,NULL,'Accounting Manager',NULL,NULL,'Melissa Soliz',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `web_staffmember` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-07 17:20:14
