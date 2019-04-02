/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.7.21 : Database - beij
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`beij` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `beij`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add comments',7,'add_comments'),(20,'Can change comments',7,'change_comments'),(21,'Can delete comments',7,'delete_comments'),(22,'Can add hand book',8,'add_handbook'),(23,'Can change hand book',8,'change_handbook'),(24,'Can delete hand book',8,'delete_handbook'),(25,'Can add image',9,'add_image'),(26,'Can change image',9,'change_image'),(27,'Can delete image',9,'delete_image'),(28,'Can add likes',10,'add_likes'),(29,'Can change likes',10,'change_likes'),(30,'Can delete likes',10,'delete_likes'),(31,'Can add posts',11,'add_posts'),(32,'Can change posts',11,'change_posts'),(33,'Can delete posts',11,'delete_posts'),(34,'Can add relations',12,'add_relations'),(35,'Can change relations',12,'change_relations'),(36,'Can delete relations',12,'delete_relations'),(37,'Can add score',13,'add_score'),(38,'Can change score',13,'change_score'),(39,'Can delete score',13,'delete_score'),(40,'Can add sticker',14,'add_sticker'),(41,'Can change sticker',14,'change_sticker'),(42,'Can delete sticker',14,'delete_sticker'),(43,'Can add tape',15,'add_tape'),(44,'Can change tape',15,'change_tape'),(45,'Can delete tape',15,'delete_tape'),(46,'Can add user_info',16,'add_user_info'),(47,'Can change user_info',16,'change_user_info'),(48,'Can delete user_info',16,'delete_user_info'),(49,'Can add writing',17,'add_writing'),(50,'Can change writing',17,'change_writing'),(51,'Can delete writing',17,'delete_writing');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'pbkdf2_sha256$100000$nnwNaypJ8SX1$ymNoqrhPi9aXgp0/nkIBPztsr/hi1USxolZyMTVRl+I=','2019-04-02 09:18:34.170682',1,'25417','','','2541747035@qq.com',1,1,'2019-04-02 09:18:09.606404');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (1,'2019-04-02 09:18:58.646217','1','HandBook object (1)',1,'[{\"added\": {}}]',8,1),(2,'2019-04-02 09:19:26.999429','1','Relations object (1)',1,'[{\"added\": {}}]',12,1);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'user_info','comments'),(8,'user_info','handbook'),(9,'user_info','image'),(10,'user_info','likes'),(11,'user_info','posts'),(12,'user_info','relations'),(13,'user_info','score'),(14,'user_info','sticker'),(15,'user_info','tape'),(16,'user_info','user_info'),(17,'user_info','writing');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2019-04-02 09:16:26.553031'),(2,'auth','0001_initial','2019-04-02 09:16:35.030383'),(3,'admin','0001_initial','2019-04-02 09:16:37.194607'),(4,'admin','0002_logentry_remove_auto_add','2019-04-02 09:16:37.241459'),(5,'contenttypes','0002_remove_content_type_name','2019-04-02 09:16:38.338533'),(6,'auth','0002_alter_permission_name_max_length','2019-04-02 09:16:39.139358'),(7,'auth','0003_alter_user_email_max_length','2019-04-02 09:16:39.962156'),(8,'auth','0004_alter_user_username_opts','2019-04-02 09:16:40.007037'),(9,'auth','0005_alter_user_last_login_null','2019-04-02 09:16:40.665275'),(10,'auth','0006_require_contenttypes_0002','2019-04-02 09:16:40.714144'),(11,'auth','0007_alter_validators_add_error_messages','2019-04-02 09:16:40.761019'),(12,'auth','0008_alter_user_username_max_length','2019-04-02 09:16:42.338838'),(13,'auth','0009_alter_user_last_name_max_length','2019-04-02 09:16:43.229451'),(14,'sessions','0001_initial','2019-04-02 09:16:43.992402'),(15,'user_info','0001_initial','2019-04-02 09:16:49.424872');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('8zfg05dp8bigxpjtvee7apn9k4tzwn17','ZTI0OWYzY2ZhZTllY2NmODQzM2VmMTRiMDg0NDRlOWJmNDc5MzIxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzg4OTI4ZTRjOTVhMTk0YTY0NzZkOGMxZjcxNTE5MDc5ZTIwYmY1In0=','2019-04-16 09:18:34.209586');

/*Table structure for table `user_info_comments` */

DROP TABLE IF EXISTS `user_info_comments`;

CREATE TABLE `user_info_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_content` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_comments` */

/*Table structure for table `user_info_handbook` */

DROP TABLE IF EXISTS `user_info_handbook`;

CREATE TABLE `user_info_handbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handbook_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `handbook_url` varchar(200) COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_info_handbook_created_00986d80` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_handbook` */

insert  into `user_info_handbook`(`id`,`handbook_name`,`handbook_url`,`created`) values (1,'百乐','http://www.weibo.com','2019-04-02'),(2,'sanling','http://www.weibo.com','2019-04-26');

/*Table structure for table `user_info_image` */

DROP TABLE IF EXISTS `user_info_image`;

CREATE TABLE `user_info_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `image_url` varchar(200) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_info_image_created_d36bb942` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_image` */

/*Table structure for table `user_info_likes` */

DROP TABLE IF EXISTS `user_info_likes`;

CREATE TABLE `user_info_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_author` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_likes` */

/*Table structure for table `user_info_posts` */

DROP TABLE IF EXISTS `user_info_posts`;

CREATE TABLE `user_info_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) COLLATE utf8_bin NOT NULL,
  `post_content` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_posts` */

/*Table structure for table `user_info_relations` */

DROP TABLE IF EXISTS `user_info_relations`;

CREATE TABLE `user_info_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_follows_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_relations` */

insert  into `user_info_relations`(`id`,`user_id`,`user_follows_id`) values (1,2,1);

/*Table structure for table `user_info_score` */

DROP TABLE IF EXISTS `user_info_score`;

CREATE TABLE `user_info_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `handbook_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_score` */

/*Table structure for table `user_info_sticker` */

DROP TABLE IF EXISTS `user_info_sticker`;

CREATE TABLE `user_info_sticker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sticker_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `sticker_url` varchar(200) COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_info_sticker_created_7cb10796` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_sticker` */

/*Table structure for table `user_info_tape` */

DROP TABLE IF EXISTS `user_info_tape`;

CREATE TABLE `user_info_tape` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tape_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `tape_url` varchar(200) COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_info_tape_created_02be282f` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_tape` */

/*Table structure for table `user_info_user_info` */

DROP TABLE IF EXISTS `user_info_user_info`;

CREATE TABLE `user_info_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `user_password` varchar(200) COLLATE utf8_bin NOT NULL,
  `user_profile` varchar(200) COLLATE utf8_bin NOT NULL,
  `user_phonenum` varchar(200) COLLATE utf8_bin NOT NULL,
  `image` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_user_info` */

/*Table structure for table `user_info_writing` */

DROP TABLE IF EXISTS `user_info_writing`;

CREATE TABLE `user_info_writing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `writing_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `writing_url` varchar(200) COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_info_writing_created_4d16ee84` (`created`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_info_writing` */

insert  into `user_info_writing`(`id`,`writing_name`,`writing_url`,`created`) values (1,'百乐','http://www.baidu.com','2019-04-02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
