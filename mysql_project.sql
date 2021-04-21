-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `contact` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (7,'Vikas','Paswan','vikas.paswan@gmail.com',1801195),(8,'Aayush','Maurya','aayush.maurya@gmail.com',1901002),(9,'Abhinandan','Kumar','abhinandan.kumar@gmail.com',1901004),(10,'Abhinav','Sharma','abhinav.sharma@gmail.com',1901006),(11,'Abhishek','Kumar','abhishek.kumar@gmail.com',1901008),(12,'Badagala','Sriharsha','badagala.sriharsha@gmail.com',1901050),(13,'Chikke','Srujan','chikke.srujan@gmail.com',1901055),(14,'Devansh','Pant','devansh.pant@gmail.com',1901058),(15,'Gaurav','Gupta','gaurav.gupta@gmail.com',1901068),(16,'Harmanjeet','Singh','harmanjeet.singh@gmail.com',1901071),(17,'Ishan','Acharyya','ishan.acharyya@gmail.com',1901077),(18,'ISLAWATHU','PAVANI','islawathu.pavani@gmail.com',1901078),(19,'Jadi','Pujita','jadi.pujita@gmail.com',1901079),(20,'Vinay','Kenguva','vinay.kenguva@gmail.com',1901088),(21,'M.V.S.Sai','Abhiram','sai.abhiram@gmail.com',1901099),(22,'Nikhil','Maurya','nikhil.maurya@gmail.com',1901104),(23,'M','Bharadwajrathod','bharadwaj.rathod@gmail.com',1901108),(24,'Meghna','Singh','meghna.singh@gmail.com',1901109),(25,'Navneet','Ranjan','navneet.ranjan@gmail.com',1901118),(26,'Sangaja','Patel','sangaja.patel@gmail.com',1901168),(27,'Sanit','Roy','sanit.roy@gmail.com',1901170),(28,'Shobhit','Belwal','shobhit.belwal@gmail.com',1901191),(29,'Yatn','Bangad','yatn.bangad@gmail.com',1901222),(30,'Yashraj','Singh Rathore','yashraj.rathore@gmail.com',1901221),(31,'Yarababugari','Mohammed Javeed','yarababugari.javeed@gmail.com',1901220);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add agent',7,'add_agent'),(26,'Can change agent',7,'change_agent'),(27,'Can delete agent',7,'delete_agent'),(28,'Can view agent',7,'view_agent'),(29,'Can add buyer',8,'add_buyer'),(30,'Can change buyer',8,'change_buyer'),(31,'Can delete buyer',8,'delete_buyer'),(32,'Can view buyer',8,'view_buyer'),(33,'Can add login',9,'add_login'),(34,'Can change login',9,'change_login'),(35,'Can delete login',9,'delete_login'),(36,'Can view login',9,'view_login'),(37,'Can add off login',10,'add_offlogin'),(38,'Can change off login',10,'change_offlogin'),(39,'Can delete off login',10,'delete_offlogin'),(40,'Can view off login',10,'view_offlogin'),(41,'Can add owner',11,'add_owner'),(42,'Can change owner',11,'change_owner'),(43,'Can delete owner',11,'delete_owner'),(44,'Can view owner',11,'view_owner'),(45,'Can add property',12,'add_property'),(46,'Can change property',12,'change_property'),(47,'Can delete property',12,'delete_property'),(48,'Can view property',12,'view_property'),(49,'Can add tran rent',13,'add_tranrent'),(50,'Can change tran rent',13,'change_tranrent'),(51,'Can delete tran rent',13,'delete_tranrent'),(52,'Can view tran rent',13,'view_tranrent'),(53,'Can add tran sale',14,'add_transale'),(54,'Can change tran sale',14,'change_transale'),(55,'Can delete tran sale',14,'delete_transale'),(56,'Can view tran sale',14,'view_transale');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$Qv2pFQjtINpm$7f3da4hSviuOSix0v5lfdVM1uOQwlTM0+PNwXVZm1VY=','2021-04-18 02:08:50.338015',1,'manan','','','manan.co.in@gmail.com',1,1,'2021-03-30 16:59:29.089999');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `contact` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,'Kushagra','Agarwal','kushagra.agarwal@gmail.com',1801096),(2,'Lakshmi','Priya Pampati','priya.pampati@gmail.com',1801097),(3,'Lokesh','Daga','lokesh.daga@gmail.com',1801099),(4,'Mansi','Sahu','mansi.sahu@gmail.com',1801102),(5,'Manul','Singh Parihar','manul.singh@gmail.com',1801103),(6,'Naman','Patidar','naman.patidar@gmail.com',1801108),(7,'Namit','Goel','namit.goel@gmail.com',1801109),(8,'Neelabh','Shukla','neelabh.shukla@gmail.com',1801110),(9,'Nihar','Pawar','nihar.pawar@gmail.com',1801112),(10,'Nitesh','Kumar Dubey','nitesh.kumar@gmail.com',1801115),(11,'Ojasv','Singh','ojasv.singh@gmail.com',1801116),(12,'Pradyumna','Bhardwaj','pradyumna.bhardwaj@gmail.com',1801124),(13,'Prasun','Kumar','prasun.kumar@gmail.com',1801126),(14,'Prateek','Jain','prateek.jain@gmail.com',1801127),(15,'PREMCHANDRA','SINGH','premchandra.singh@gmail.com',1801130),(16,'Prince','Kumar','prince.kumar@gmail.com',1801131),(17,'Priyanshu','Anand','priyanshu.anand@gmail.com',1801132),(18,'Puneet','Verma','puneet.verma@gmail.com',1801133),(19,'Rahul','Gupta','rahul.gupta@gmail.com',1801134),(20,'Raj','Aryan','raj.aryan@gmail.com',1801135),(21,'Raj','Ranjan','raj.ranjan@gmail.com',1801136),(22,'Ravindra','Singh Sisodiya','ravindra.singh@gmail.com',1801138),(23,'Richik','Chanda','richik.chanda@gmail.com',1801139),(24,'Rishabh','Niranjan','rishabh.niranjan@gmail.com',1801140),(25,'Rishabh','Yadav','rishabh.yadav@gmail.com',1801141),(26,'Rishav','Raj','rishav.raj@gmail.com',1801142),(27,'Rishu','Raj','rishu.raj@gmal.com',1801143),(28,'Roshan','Kumar','roshan.kumar@gmali.com',1801145),(29,'SACHIN','AGARWAL','sachin.agarwal@gmail.com',1801146),(30,'Sahil','Khan','sahil.khan@gmail.com',1801148),(31,'Saksham','Tomar','saksham.tomar@gmail.com',1801150),(32,'Sameer','Kumar Kushwaha','sameer.kushwaha@gmail.com',1801151),(33,'Samidha','Singh','samidha.singh@gmail.com',1801152),(34,'Samir','Boro','samir.boro@gmail.com',1801153),(35,'Sanchit','Kumar','sanchit.kumar@gmail.com',1801155),(36,'Sanjeev','Kumar','sanjeev.kumar@gmail.com',1801156),(37,'Sayan','Kar','sayan.kar@gmail.com',1801162),(38,'Shantanu','Singh','shantanu.singh@gmail.com',1801163),(39,'Shantnu','Bhalla','shantnu.bhalla@gmail.com',1801164),(40,'Shivam','Kumar','shivam.kumar@gmail.com',1801166),(41,'Shivang','Mishra','shivang.mishra@gmail.com',1801167),(42,'Shobhit','Singh','shobhit.singh@gmail.com',1801168),(43,'Shreyansh','Singh Tomar','shreyansh.singh@gmail.com',1801169),(44,'Siddhant','Jha','siddhant.jha@gmail.com',1801172),(45,'Siddhartha','Avijit Bose','siddhartha.bose@gmail.com',1801174),(46,'Sohan','Lal Gupta','sohan.gupta@gmail.com',1801175),(47,'Soumyajit','Deb','soumyajit.deb@gmail.com',1801176),(48,'Sudhanshu','Rai','sudhanshu.raj@gmail.com',1801179),(49,'Sumesh','Thakur','sumesh.thakur@gmail.com',1801180),(50,'Suryansh','Singh','suryansh.singh@gmail.com',1801181),(51,'Swapnil','Aman','swapnil.aman@gmail.com',1801182),(52,'T.Naik','Rahul Roy','rahul.roy@gmail.com',1801184),(53,'THIRUMURUGAN','R','thirumurugan.r@gmail.com',1801185),(54,'nivas','reddy','nivas.reddy@gmail.com',1801186),(55,'Tushar','Singh','tushar@gmail.com',1801187),(56,'Tushar','bhartiya','tushar.b@gmail.com',1801188),(57,'UTKARSH','KUMAR','utkarsh.kumar@gmail.com',1801190),(58,'Utkarsh','Mishra','utkarsh.mishra@gmail.com',1801191),(59,'Vishal','choudhary','vishal.choudhary@gmail.com',1801197),(60,'Yash','Agarwal','yash.agarwal@gmail.com',1801199),(61,'Yash','Kothari','yash.kothari@gmail.com',1801200),(62,'Yashwanth','Manivannan','yashwanth@gmail.com',1801202),(63,'ATMAKURU','VENKATA SUBRAMANYA DH','atmakuru@gmail.com',1810037),(64,'Azmeera','Rajkumar','azmeera.rajkumar@gmail.com',1801042),(65,'Abhimanyu','Kumar Gupta','abhimanyu@gmail.com',1801001),(66,'Abhinav','Singh','abhinav.singh@gmail.com',1801004),(67,'Abhishek','kumar','abhishek.kumar@gmail.com',1801005),(68,'Achal','Dixit','achal.dixit@gmail.com',1801007),(69,'Aditya','Raj Chauhan','aditya.raj@gmail.com',1801008),(70,'Akash','Kapil','akash.kapil@gmail.com',1801012);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-02 12:36:29.309379','1','Agent object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-04-03 13:16:24.414755','1','Agent object (1)',3,'',7,1),(3,'2021-04-03 13:16:36.061621','2','Agent object (2)',1,'[{\"added\": {}}]',7,1),(4,'2021-04-03 13:16:46.352462','2','Agent object (2)',3,'',7,1),(5,'2021-04-03 13:22:53.099568','6','Manan Gyanchandani',1,'[{\"added\": {}}]',7,1),(6,'2021-04-03 13:23:01.337590','6','Manan Gyanchandani',3,'',7,1),(7,'2021-04-03 13:25:05.608990','7','Vikas Paswan',1,'[{\"added\": {}}]',7,1),(8,'2021-04-03 13:25:53.600858','8','Aayush Maurya',1,'[{\"added\": {}}]',7,1),(9,'2021-04-03 13:26:39.155694','9','Abhinandan Kumar',1,'[{\"added\": {}}]',7,1),(10,'2021-04-03 13:27:06.384949','10','Abhinav Sharma',1,'[{\"added\": {}}]',7,1),(11,'2021-04-03 13:27:46.640920','11','Abhishek Kumar',1,'[{\"added\": {}}]',7,1),(12,'2021-04-03 13:30:17.989461','12','Badagala Sriharsha',1,'[{\"added\": {}}]',7,1),(13,'2021-04-03 13:31:06.594657','13','Chikke Srujan',1,'[{\"added\": {}}]',7,1),(14,'2021-04-03 13:31:45.490801','14','Devansh Pant',1,'[{\"added\": {}}]',7,1),(15,'2021-04-03 13:32:25.367045','15','Gaurav Gupta',1,'[{\"added\": {}}]',7,1),(16,'2021-04-03 13:33:03.215857','16','Harmanjeet Singh',1,'[{\"added\": {}}]',7,1),(17,'2021-04-03 13:33:42.838848','17','Ishan Acharyya',1,'[{\"added\": {}}]',7,1),(18,'2021-04-03 13:34:16.584485','18','ISLAWATHU PAVANI',1,'[{\"added\": {}}]',7,1),(19,'2021-04-03 13:34:48.741130','19','Jadi Pujita',1,'[{\"added\": {}}]',7,1),(20,'2021-04-03 13:35:28.072150','20','Vinay Kenguva',1,'[{\"added\": {}}]',7,1),(21,'2021-04-03 13:36:13.180419','21','M.V.S.Sai Abhiram',1,'[{\"added\": {}}]',7,1),(22,'2021-04-03 13:37:12.985774','22','Nikhil Maurya',1,'[{\"added\": {}}]',7,1),(23,'2021-04-03 13:37:49.049637','23','M Bharadwajrathod',1,'[{\"added\": {}}]',7,1),(24,'2021-04-03 13:38:25.271216','24','Meghna Singh',1,'[{\"added\": {}}]',7,1),(25,'2021-04-03 13:39:03.004798','25','Navneet Ranjan',1,'[{\"added\": {}}]',7,1),(26,'2021-04-03 13:39:46.372275','26','Sangaja Patel',1,'[{\"added\": {}}]',7,1),(27,'2021-04-03 13:40:08.249282','27','Sanit Roy',1,'[{\"added\": {}}]',7,1),(28,'2021-04-03 13:44:34.482161','28','Shobhit Belwal',1,'[{\"added\": {}}]',7,1),(29,'2021-04-03 13:44:59.339110','29','Yatn Bangad',1,'[{\"added\": {}}]',7,1),(30,'2021-04-03 13:45:38.668993','30','Yashraj Singh Rathore',1,'[{\"added\": {}}]',7,1),(31,'2021-04-03 13:46:21.701690','31','Yarababugari Mohammed Javeed',1,'[{\"added\": {}}]',7,1),(32,'2021-04-03 13:48:16.701473','1','Kushagra Agarwal',1,'[{\"added\": {}}]',8,1),(33,'2021-04-03 13:49:11.401975','2','Lakshmi Priya Pampati',1,'[{\"added\": {}}]',8,1),(34,'2021-04-03 13:53:29.547446','3','Lokesh Daga',1,'[{\"added\": {}}]',8,1),(35,'2021-04-03 13:56:34.129403','4','Mansi Sahu',1,'[{\"added\": {}}]',8,1),(36,'2021-04-03 13:57:06.101459','5','Manul Singh Parihar',1,'[{\"added\": {}}]',8,1),(37,'2021-04-03 13:57:26.381199','6','Naman Patidar',1,'[{\"added\": {}}]',8,1),(38,'2021-04-03 13:57:52.450615','7','Namit Goel',1,'[{\"added\": {}}]',8,1),(39,'2021-04-03 14:00:14.353309','8','Neelabh Shukla',1,'[{\"added\": {}}]',8,1),(40,'2021-04-03 14:00:53.498465','9','Nihar Pawar',1,'[{\"added\": {}}]',8,1),(41,'2021-04-03 14:03:07.171515','10','Nitesh Kumar Dubey',1,'[{\"added\": {}}]',8,1),(42,'2021-04-03 14:03:31.056110','11','Ojasv Singh',1,'[{\"added\": {}}]',8,1),(43,'2021-04-03 14:03:57.595557','12','Pradyumna Bhardwaj',1,'[{\"added\": {}}]',8,1),(44,'2021-04-03 14:04:18.848007','13','Prasun Kumar',1,'[{\"added\": {}}]',8,1),(45,'2021-04-03 14:04:46.063166','14','Prateek Jain',1,'[{\"added\": {}}]',8,1),(46,'2021-04-03 14:05:16.436294','15','PREMCHANDRA SINGH',1,'[{\"added\": {}}]',8,1),(47,'2021-04-03 14:05:43.917304','16','Prince Kumar',1,'[{\"added\": {}}]',8,1),(48,'2021-04-03 14:06:07.460715','17','Priyanshu Anand',1,'[{\"added\": {}}]',8,1),(49,'2021-04-03 14:06:43.896044','18','Puneet Verma',1,'[{\"added\": {}}]',8,1),(50,'2021-04-03 14:07:05.904166','19','Rahul Gupta',1,'[{\"added\": {}}]',8,1),(51,'2021-04-03 14:07:27.137160','20','Raj Aryan',1,'[{\"added\": {}}]',8,1),(52,'2021-04-03 14:07:51.414054','21','Raj Ranjan',1,'[{\"added\": {}}]',8,1),(53,'2021-04-03 14:08:19.771928','22','Ravindra Singh Sisodiya',1,'[{\"added\": {}}]',8,1),(54,'2021-04-03 14:08:43.949234','23','Richik Chanda',1,'[{\"added\": {}}]',8,1),(55,'2021-04-03 14:09:11.894707','24','Rishabh Niranjan',1,'[{\"added\": {}}]',8,1),(56,'2021-04-03 14:09:37.254047','25','Rishabh Yadav',1,'[{\"added\": {}}]',8,1),(57,'2021-04-03 14:09:59.741473','26','Rishav Raj',1,'[{\"added\": {}}]',8,1),(58,'2021-04-03 14:10:20.440025','27','Rishu Raj',1,'[{\"added\": {}}]',8,1),(59,'2021-04-03 14:10:52.157634','28','Roshan Kumar',1,'[{\"added\": {}}]',8,1),(60,'2021-04-03 14:11:19.412013','29','SACHIN AGARWAL',1,'[{\"added\": {}}]',8,1),(61,'2021-04-03 14:11:48.371047','30','Sahil Khan',1,'[{\"added\": {}}]',8,1),(62,'2021-04-03 14:12:09.158164','31','Saksham Tomar',1,'[{\"added\": {}}]',8,1),(63,'2021-04-03 14:12:44.618895','32','Sameer Kumar Kushwaha',1,'[{\"added\": {}}]',8,1),(64,'2021-04-03 14:13:12.167593','33','Samidha Singh',1,'[{\"added\": {}}]',8,1),(65,'2021-04-03 14:13:47.690494','34','Samir Boro',1,'[{\"added\": {}}]',8,1),(66,'2021-04-03 14:14:31.394955','35','Sanchit Kumar',1,'[{\"added\": {}}]',8,1),(67,'2021-04-03 14:14:51.898669','36','Sanjeev Kumar',1,'[{\"added\": {}}]',8,1),(68,'2021-04-03 14:15:10.355236','37','Sayan Kar',1,'[{\"added\": {}}]',8,1),(69,'2021-04-03 14:15:35.448852','38','Shantanu Singh',1,'[{\"added\": {}}]',8,1),(70,'2021-04-03 14:16:08.811331','39','Shantnu Bhalla',1,'[{\"added\": {}}]',8,1),(71,'2021-04-03 14:17:11.404318','40','Shivam Kumar',1,'[{\"added\": {}}]',8,1),(72,'2021-04-03 14:17:30.996977','41','Shivang Mishra',1,'[{\"added\": {}}]',8,1),(73,'2021-04-03 14:17:52.342575','42','Shobhit Singh',1,'[{\"added\": {}}]',8,1),(74,'2021-04-03 14:18:09.448367','43','Shreyansh Singh Tomar',1,'[{\"added\": {}}]',8,1),(75,'2021-04-03 14:18:41.029258','44','Siddhant Jha',1,'[{\"added\": {}}]',8,1),(76,'2021-04-03 14:19:06.411924','45','Siddhartha Avijit Bose',1,'[{\"added\": {}}]',8,1),(77,'2021-04-03 14:19:27.849224','46','Sohan Lal Gupta',1,'[{\"added\": {}}]',8,1),(78,'2021-04-03 14:19:47.179775','47','Soumyajit Deb',1,'[{\"added\": {}}]',8,1),(79,'2021-04-03 14:20:08.969972','48','Sudhanshu Rai',1,'[{\"added\": {}}]',8,1),(80,'2021-04-03 14:20:30.090755','49','Sumesh Thakur',1,'[{\"added\": {}}]',8,1),(81,'2021-04-03 14:20:50.318883','50','Suryansh Singh',1,'[{\"added\": {}}]',8,1),(82,'2021-04-03 14:57:17.395425','51','Swapnil Aman',1,'[{\"added\": {}}]',8,1),(83,'2021-04-03 14:57:49.479110','52','T.Naik Rahul Roy',1,'[{\"added\": {}}]',8,1),(84,'2021-04-03 14:58:24.385882','53','THIRUMURUGAN R',1,'[{\"added\": {}}]',8,1),(85,'2021-04-03 14:58:47.572731','54','nivas reddy',1,'[{\"added\": {}}]',8,1),(86,'2021-04-03 14:59:26.241531','55','Tushar Singh',1,'[{\"added\": {}}]',8,1),(87,'2021-04-03 14:59:53.495832','56','Tushar bhartiya',1,'[{\"added\": {}}]',8,1),(88,'2021-04-03 15:00:13.821559','57','UTKARSH KUMAR',1,'[{\"added\": {}}]',8,1),(89,'2021-04-03 15:00:36.158233','58','Utkarsh Mishra',1,'[{\"added\": {}}]',8,1),(90,'2021-04-03 15:01:05.546165','59','Vishal choudhary',1,'[{\"added\": {}}]',8,1),(91,'2021-04-03 15:02:48.857595','60','Yash Agarwal',1,'[{\"added\": {}}]',8,1),(92,'2021-04-03 15:03:12.626648','61','Yash Kothari',1,'[{\"added\": {}}]',8,1),(93,'2021-04-03 15:03:34.553810','62','Yashwanth Manivannan',1,'[{\"added\": {}}]',8,1),(94,'2021-04-03 15:04:02.557617','63','ATMAKURU VENKATA SUBRAMANYA DH',1,'[{\"added\": {}}]',8,1),(95,'2021-04-03 15:04:27.948844','64','Azmeera Rajkumar',1,'[{\"added\": {}}]',8,1),(96,'2021-04-03 15:17:27.349974','65','Abhimanyu Kumar Gupta',1,'[{\"added\": {}}]',8,1),(97,'2021-04-03 15:18:03.285962','66','Abhinav Singh',1,'[{\"added\": {}}]',8,1),(98,'2021-04-03 15:18:32.831170','67','Abhishek kumar',1,'[{\"added\": {}}]',8,1),(99,'2021-04-03 15:19:00.304356','68','Achal Dixit',1,'[{\"added\": {}}]',8,1),(100,'2021-04-03 15:19:39.758172','69','Aditya Raj Chauhan',1,'[{\"added\": {}}]',8,1),(101,'2021-04-03 15:20:04.201366','70','Akash Kapil',1,'[{\"added\": {}}]',8,1),(102,'2021-04-03 16:03:06.801072','manan','manan',3,'',10,1),(103,'2021-04-05 14:53:50.302359','1','Manjeet Kumar',1,'[{\"added\": {}}]',11,1),(104,'2021-04-05 14:54:16.581991','2','MD AURANGJEB',1,'[{\"added\": {}}]',11,1),(105,'2021-04-05 14:54:33.627296','3','Navya Nakka',1,'[{\"added\": {}}]',11,1),(106,'2021-04-05 14:54:56.876472','4','Om Prakash Yadav',1,'[{\"added\": {}}]',11,1),(107,'2021-04-05 14:55:14.565755','5','Omkar Chute',1,'[{\"added\": {}}]',11,1),(108,'2021-04-05 14:55:36.992061','6','Padala Pradeepkumar',1,'[{\"added\": {}}]',11,1),(109,'2021-04-05 14:55:53.865583','7','Pranami Hazarika',1,'[{\"added\": {}}]',11,1),(110,'2021-04-05 14:56:11.226939','8','Robin G',1,'[{\"added\": {}}]',11,1),(111,'2021-04-05 14:56:29.544213','9','Saurabh Singh',1,'[{\"added\": {}}]',11,1),(112,'2021-04-05 14:56:57.422789','10','Siddharth Rajawat',1,'[{\"added\": {}}]',11,1),(113,'2021-04-05 14:57:18.647282','11','Ajit Singh',1,'[{\"added\": {}}]',11,1),(114,'2021-04-05 14:57:59.897979','12','A Hemanth',1,'[{\"added\": {}}]',11,1),(115,'2021-04-05 14:58:21.015219','13','Divy Pandey',1,'[{\"added\": {}}]',11,1),(116,'2021-04-05 14:58:40.140204','14','Divyam Jain',1,'[{\"added\": {}}]',11,1),(117,'2021-04-05 14:58:59.607374','15','Vishesh Mishra',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'webapp','agent'),(8,'webapp','buyer'),(9,'webapp','login'),(10,'webapp','offlogin'),(11,'webapp','owner'),(12,'webapp','property'),(13,'webapp','tranrent'),(14,'webapp','transale');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-03-30 16:57:10.456462'),(2,'auth','0001_initial','2021-03-30 16:57:10.730737'),(3,'admin','0001_initial','2021-03-30 16:57:12.019831'),(4,'admin','0002_logentry_remove_auto_add','2021-03-30 16:57:12.303904'),(5,'admin','0003_logentry_add_action_flag_choices','2021-03-30 16:57:12.315658'),(6,'contenttypes','0002_remove_content_type_name','2021-03-30 16:57:12.517445'),(7,'auth','0002_alter_permission_name_max_length','2021-03-30 16:57:12.652623'),(8,'auth','0003_alter_user_email_max_length','2021-03-30 16:57:12.693766'),(9,'auth','0004_alter_user_username_opts','2021-03-30 16:57:12.708460'),(10,'auth','0005_alter_user_last_login_null','2021-03-30 16:57:12.816209'),(11,'auth','0006_require_contenttypes_0002','2021-03-30 16:57:12.822087'),(12,'auth','0007_alter_validators_add_error_messages','2021-03-30 16:57:12.834822'),(13,'auth','0008_alter_user_username_max_length','2021-03-30 16:57:12.945513'),(14,'auth','0009_alter_user_last_name_max_length','2021-03-30 16:57:13.052281'),(15,'auth','0010_alter_group_name_max_length','2021-03-30 16:57:13.103224'),(16,'auth','0011_update_proxy_permissions','2021-03-30 16:57:13.118893'),(17,'auth','0012_alter_user_first_name_max_length','2021-03-30 16:57:13.241336'),(18,'sessions','0001_initial','2021-03-30 16:57:13.304029'),(19,'webapp','0001_initial','2021-04-02 12:19:48.227620');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('pdchwde2mr94b6ailm4xflvobjyt13v1','.eJxVjDEOwjAMRe-SGUVJiO2IkZ0zVHHs0AJqpaadKu4OlTrA-t97fzNdXpe-W5vO3SDmYrw5_W6cy1PHHcgjj_fJlmlc5oHtrtiDNnubRF_Xw_076HPrvzUSIkWkdBZykRMwSUVGr4V8AijCHIqPklINrBXAoaugTEFIApj3B8yqN7o:1lSIpW:KPHmnTW7Tpncde-ihf53AFYrkNWI3_LHp-vfOcubLXA','2021-04-16 12:23:14.152600');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `a_id` int NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `a_id` (`a_id`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `agent` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('abhinav','abhinav@123',10),('vikaspaswan','vikas@123',7);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `off_login`
--

DROP TABLE IF EXISTS `off_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `off_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `off_login`
--

LOCK TABLES `off_login` WRITE;
/*!40000 ALTER TABLE `off_login` DISABLE KEYS */;
INSERT INTO `off_login` VALUES ('manan','manan@123'),('sampriti','sampriti@123'),('shivi','shivi@123');
/*!40000 ALTER TABLE `off_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `contact` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Manjeet','Kumar','manjit@gmail.com',1801101),(2,'MD','AURANGJEB','md@gmail.com',1801104),(3,'Navya','Nakka','navya@gmail.com',1801106),(4,'Om','Prakash Yadav','om@gmail.com',1801117),(5,'Omkar','Chute','omkar@gmail.com',1801118),(6,'Padala','Pradeepkumar','padala@gmail.com',1801119),(7,'Pranami','Hazarika','prnami@gmail.com',1801125),(8,'Robin','G','robin@gmail.com',1801144),(9,'Saurabh','Singh','saurabh@gmail.com',1801160),(10,'Siddharth','Rajawat','sid@gmail.com',1801173),(11,'Ajit','Singh','ajit@gmail.com',1801010),(12,'A','Hemanth','hemanth.a@gmail.com',1801015),(13,'Divy','Pandey','divy@gmail.com',1801056),(14,'Divyam','Jain','divyam@gmail.com',1801057),(15,'Vishesh','Mishra','vishesh@gmail.com',1801198);
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `L_date` date NOT NULL,
  `adress` varchar(255) NOT NULL,
  `bhk` int NOT NULL,
  `P_size` int NOT NULL,
  `P_status` binary(1) NOT NULL,
  `P_type` binary(1) NOT NULL,
  `P_tag` binary(1) NOT NULL,
  `P_sug_price` int NOT NULL,
  `bathrooms` int NOT NULL,
  `P_desc` text,
  `o_ID` int NOT NULL,
  `a_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `a_ID` (`a_ID`),
  KEY `o_ID` (`o_ID`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`a_ID`) REFERENCES `agent` (`ID`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`o_ID`) REFERENCES `owner` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'2021-08-03','L-28 Tulsidas colony Varanasi UP',0,1750,_binary 'N',_binary 'H',_binary 'S',13957,1,'Countryside with fresh air and environment',12,7),(2,'2021-09-16','A-95 Nirala Nagar Varanasi UP ',0,1408,_binary 'A',_binary 'F',_binary 'S',31722,1,'Very beautiful propery with amaing decor',2,16),(3,'2021-12-09','B-23 Godaulia Varanasi UP ',0,1804,_binary 'A',_binary 'A',_binary 'S',17620,1,'Very beautiful propery with amaing decor',7,23),(4,'2021-02-23','W-34 Bank Colony Varanasi UP ',2,1677,_binary 'A',_binary 'F',_binary 'S',24913,2,'Very beautiful propery with amaing decor',6,24),(5,'2021-07-03','B-98 ShivPuri Varanasi UP ',3,1310,_binary 'A',_binary 'H',_binary 'S',37533,1,'Very beautiful propery with amaing decor',3,16),(6,'2021-02-17','N-56 Sundarpur Varanasi UP ',3,1924,_binary 'N',_binary 'A',_binary 'R',14232,1,'Beautiful seaside view',6,9),(7,'2021-12-05','M-98 Maulvibagh Varanasi UP ',3,1713,_binary 'N',_binary 'A',_binary 'S',23094,2,'Very beautiful propery with amaing decor',5,7),(8,'2021-06-14','L-99 Rasulghad Varanasi UP ',0,1382,_binary 'N',_binary 'A',_binary 'R',7726,1,'Very beautiful propery with amaing decor',12,19),(9,'2021-02-02','M-67 Varanasi UP ',0,1864,_binary 'N',_binary 'A',_binary 'S',33702,0,'Very beautiful propery with amaing decor',2,10),(10,'2021-05-03','P-1401 Kalyani devi Allahabad UP',1,1933,_binary 'A',_binary 'A',_binary 'S',29534,2,'Very beautiful propery with amaing decor',13,19),(11,'2021-04-08','E-89 Mullah colony Allahabad UP',1,1550,_binary 'A',_binary 'A',_binary 'R',29969,2,'Very beautiful propery with amaing decor',13,14),(12,'2021-12-15','T-98 Balson chauraha Allahabad UP',0,1068,_binary 'N',_binary 'H',_binary 'R',24414,2,'Very beautiful propery with amaing decor',4,10),(13,'2021-12-10','V-76 Civil Lines Allahabad UP',1,1742,_binary 'N',_binary 'A',_binary 'R',10010,0,'Very beautiful propery with amaing decor',6,16),(14,'2021-11-15','Z-199 Colonelganj Allahabad UP',2,1979,_binary 'A',_binary 'F',_binary 'R',35649,1,'Very beautiful propery with amaing decor',2,15),(15,'2021-04-10','P-453 Kareli Allahabad UP',2,1115,_binary 'A',_binary 'F',_binary 'R',19609,2,'Very beautiful propery with amaing decor',1,29),(16,'2021-12-28','G-45 Old Katra Allahabd UP',0,1658,_binary 'A',_binary 'F',_binary 'R',20607,0,'Very beautiful propery with amaing decor',1,20),(17,'2021-12-11','V-23 Chowk Allahabad UP',3,1164,_binary 'N',_binary 'F',_binary 'S',19764,0,'Very beautiful propery with amaing decor',1,19),(18,'2021-06-14','B-24 Ashok Nagar Allahabad UP',3,1579,_binary 'A',_binary 'F',_binary 'S',24325,2,'Very beautiful propery with amaing decor',11,27),(19,'2021-02-03','N-45 Johnston Ganj Allahabad UP',1,1251,_binary 'A',_binary 'H',_binary 'S',18629,0,'Very beautiful propery with amaing decor',11,19),(20,'2021-05-05','K-98 George Town Allahabad UP',1,1875,_binary 'A',_binary 'A',_binary 'S',10000,2,'Very beautiful propery with amaing decor',3,29),(21,'2021-12-10','O-97 Kidwai Nagar Kanpur UP',2,1009,_binary 'A',_binary 'F',_binary 'R',25994,0,'Very beautiful propery with amaing decor',6,28),(22,'2021-09-02','W-66 Govind Nagar Kanpur UP',2,1149,_binary 'A',_binary 'F',_binary 'R',37181,2,'Very beautiful propery with amaing decor',5,8),(23,'2021-05-03','X-65 Yashoda Nagar Kanpur UP',0,1582,_binary 'N',_binary 'A',_binary 'R',23954,0,'Very beautiful propery with amaing decor',12,13),(24,'2021-05-28','V-123 Swaroop Nagar Kanpur UP',2,1923,_binary 'N',_binary 'A',_binary 'S',35482,0,'Very beautiful propery with amaing decor',1,10),(25,'2021-01-12','P-45 Ramadevi Kanpur UP',2,1111,_binary 'A',_binary 'H',_binary 'R',10219,0,'Very beautiful propery with amaing decor',11,13),(26,'2021-06-10','B-456 Shastri Nagar Kanpur UP',1,1371,_binary 'A',_binary 'A',_binary 'R',29588,1,'Very beautiful propery with amaing decor',11,23),(27,'2021-02-11','K-675 Krishna Nagar Kanpur UP',2,1032,_binary 'A',_binary 'H',_binary 'S',18553,1,'Very beautiful propery with amaing decor',6,7),(28,'2021-02-22','Z-08 Babu Purva Kanpur UP',1,1065,_binary 'N',_binary 'A',_binary 'S',26653,2,'Very beautiful propery with amaing decor',3,19),(29,'2021-02-18','R-4 IT Park Street Guwahati Assam',0,1105,_binary 'A',_binary 'A',_binary 'R',21883,0,'Very beautiful propery with amaing decor',6,18),(30,'2021-08-21','A-76 Jalukbari Guwahati Assam',1,1164,_binary 'A',_binary 'A',_binary 'S',27740,0,'Very beautiful propery with amaing decor',15,10),(31,'2021-04-08','J-09 Amingaon Guwahati Assam',3,1673,_binary 'A',_binary 'F',_binary 'S',11310,2,'Very beautiful propery with amaing decor',5,13),(32,'2021-08-17','V-34 Paltan Bazar Guwahati Assam',1,1515,_binary 'A',_binary 'F',_binary 'R',7358,0,'Very beautiful propery with amaing decor',5,28),(33,'2021-03-12','P-87 Maligaon Guwahati Assam',1,1222,_binary 'A',_binary 'A',_binary 'S',11790,2,'Very beautiful propery with amaing decor',11,24),(34,'2021-11-05','T-78 Ulubari Guwahati Assam',1,1616,_binary 'N',_binary 'F',_binary 'S',24917,2,'Very beautiful propery with amaing decor',5,19),(35,'2021-04-05','B-65 Sundarbari Guwahati Assam',3,1086,_binary 'A',_binary 'A',_binary 'S',18076,0,'Very beautiful propery with amaing decor',9,7),(36,'2021-05-14','W-03 Boragaon Guwahati Assam',0,1899,_binary 'N',_binary 'A',_binary 'R',9137,2,'Very beautiful propery with amaing decor',13,24),(37,'2021-01-07','K-43 Ahom gaon Guwahati Assam',1,1510,_binary 'A',_binary 'H',_binary 'S',30147,1,'Very beautiful propery with amaing decor',8,27),(38,'2021-12-17','K-2999 Pandit Purwa Lucknow UP',3,1589,_binary 'A',_binary 'A',_binary 'S',29632,2,'Very beautiful propery with amaing decor',3,11),(39,'2021-03-12','Y-98 Alamabagh Lucknow UP',1,1311,_binary 'A',_binary 'A',_binary 'R',15648,0,'Very beautiful propery with amaing decor',8,28),(40,'2021-02-21','G-12 Hazratganj Lucknow UP',2,1953,_binary 'A',_binary 'F',_binary 'S',13154,1,'Very beautiful propery with amaing decor',10,11),(41,'2021-07-16','H-19 Ali Ganj Lucknow UP',0,1722,_binary 'A',_binary 'H',_binary 'S',9954,2,'Very beautiful propery with amaing decor',6,22),(42,'2021-12-03','O-27 Vikas Nagar Lucknow UP',2,1666,_binary 'N',_binary 'F',_binary 'R',6565,2,'Very beautiful propery with amaing decor',7,12),(43,'2021-11-14','G-78 Indira Nagar Lucknow UP',2,1257,_binary 'A',_binary 'F',_binary 'S',15107,1,'Very beautiful propery with amaing decor',4,27),(44,'2021-11-22','F-32 Gomti Nagar Lucknow UP',1,1401,_binary 'A',_binary 'H',_binary 'R',30184,2,'Very beautiful propery with amaing decor',9,28),(45,'2021-04-14','Q-57 Charbagh Lucknow UP',2,1200,_binary 'N',_binary 'A',_binary 'S',11256,1,'Very beautiful propery with amaing decor',4,23),(46,'2021-06-28','L-99 Mahanagar Lucknow UP',1,1905,_binary 'A',_binary 'F',_binary 'S',24673,0,'Very beautiful propery with amaing decor',2,9),(47,'2021-04-20','W-88 Aishbagh Lucknow UP',1,1270,_binary 'N',_binary 'A',_binary 'R',24122,0,'Very beautiful propery with amaing decor',13,19),(48,'2021-09-11','E-128 Sanjay Nagar Lucknow UP',2,1735,_binary 'A',_binary 'H',_binary 'S',18605,0,'Very beautiful propery with amaing decor',8,31),(49,'2021-06-27','M-34 Aminabad Lucknow UP',3,1454,_binary 'A',_binary 'F',_binary 'S',15921,1,'Very beautiful propery with amaing decor',13,23),(50,'2021-11-14','I-66 Lalbagh Lucknow UP',3,1011,_binary 'A',_binary 'F',_binary 'R',25716,2,'Very beautiful propery with amaing decor',13,15),(51,'2021-09-09','S-13 Civil Lines Lucknow UP',1,1883,_binary 'A',_binary 'F',_binary 'R',11874,0,'Very beautiful propery with amaing decor',13,17),(52,'2021-10-08','G-26 Hasanganj Lucknow UP',0,1560,_binary 'N',_binary 'A',_binary 'S',12119,0,'Very beautiful propery with amaing decor',5,31),(53,'2021-05-02','R-77 Teen Murti Marg Area NewDelhi Delhi',3,1301,_binary 'A',_binary 'H',_binary 'R',17399,0,'Very beautiful propery with amaing decor',11,18),(54,'2021-05-01','J-16 Kakrola NewDelhi Delhi',0,1839,_binary 'N',_binary 'A',_binary 'R',19083,2,'Very beautiful propery with amaing decor',9,21),(55,'2021-02-12','I-17 Karala NewDelhi Delhi',2,1370,_binary 'A',_binary 'H',_binary 'S',6647,2,'Very beautiful propery with amaing decor',4,27),(56,'2021-12-06','A-21 Rohini NewDelhi Delhi',1,1995,_binary 'A',_binary 'A',_binary 'S',26107,2,'Very beautiful propery with amaing decor',11,23),(57,'2021-04-08','B- 76 Paschim Vihar NewDelhi Delhi',3,1425,_binary 'A',_binary 'A',_binary 'R',19402,2,'Very beautiful propery with amaing decor',6,22),(58,'2021-12-11','Z-83 Janakpuri NewDelhi Delhi',3,1539,_binary 'A',_binary 'A',_binary 'S',17866,2,'Very beautiful propery with amaing decor',12,18),(59,'2021-11-20','Y-03 Mayapuri NewDelhi Delhi',3,1961,_binary 'A',_binary 'H',_binary 'R',13782,1,'Very beautiful propery with amaing decor',4,27),(60,'2021-02-23','X-33 Shakurpur NewDelhi Delhi',2,1688,_binary 'A',_binary 'F',_binary 'R',16003,0,'Very beautiful propery with amaing decor',14,23),(61,'2021-11-25','H-69 Mukherjee Nagar NewDelhi Delhi',0,1295,_binary 'A',_binary 'H',_binary 'S',32607,2,'Very beautiful propery with amaing decor',15,28),(62,'2021-03-24','K-34 Vasant Vihar NewDelhi Delhi',1,1023,_binary 'A',_binary 'A',_binary 'S',30556,0,'Very beautiful propery with amaing decor',3,27),(63,'2021-08-11','P-96 Hauz Khas NewDelhi Delhi',0,1297,_binary 'A',_binary 'H',_binary 'S',15091,0,'Very beautiful propery with amaing decor',5,26),(64,'2021-12-09','P-111 Karol Bagh NewDelhi Delhi',3,1656,_binary 'N',_binary 'F',_binary 'S',13660,0,'Very beautiful propery with amaing decor',5,27),(65,'2021-03-28','T-44 Mayur Vihar NewDelhi Delhi',1,1144,_binary 'A',_binary 'H',_binary 'S',11005,2,'Very beautiful propery with amaing decor',15,18),(66,'2021-03-16','Q-06 Vivek Vihar NewDelhi Delhi',1,1750,_binary 'N',_binary 'F',_binary 'R',13118,1,'Very beautiful propery with amaing decor',14,24),(67,'2021-03-17','F-673 Krishna Nagar NewDelhi Delhi',3,1018,_binary 'A',_binary 'F',_binary 'R',32348,0,'Very beautiful propery with amaing decor',6,25),(68,'2021-10-17','V-53 Sahibabad NewDelhi Delhi',2,1886,_binary 'A',_binary 'F',_binary 'R',26982,2,'Very beautiful propery with amaing decor',9,23),(69,'2021-02-26','R-512 Begum Pur NewDelhi Delhi',0,1717,_binary 'A',_binary 'F',_binary 'S',13589,0,'Very beautiful propery with amaing decor',5,22),(70,'2021-07-12','S-45 Ram Gulam Marg Mumbai Maharashtra',1,1982,_binary 'A',_binary 'F',_binary 'R',30281,0,'Very beautiful propery with amaing decor',14,31),(71,'2021-11-18','A-09 Parel Mumbai Maharashtra',1,1079,_binary 'N',_binary 'A',_binary 'R',24431,2,'Very beautiful propery with amaing decor',8,27),(72,'2021-03-03','J-88 Sion Mumbai Maharashtra',3,1972,_binary 'A',_binary 'H',_binary 'S',25366,2,'Very beautiful propery with amaing decor',4,22),(73,'2021-07-15','M-34 Chembur Mumbai Maharashtra',0,1123,_binary 'A',_binary 'A',_binary 'R',8737,1,'Very beautiful propery with amaing decor',8,23),(74,'2021-12-21','X-66 Wadala Mumbai Maharashtra',0,1970,_binary 'A',_binary 'A',_binary 'S',6527,2,'Very beautiful propery with amaing decor',11,17),(75,'2021-03-25','Z-22 Trombay Mumbai Maharashtra',2,1245,_binary 'A',_binary 'F',_binary 'R',26713,1,'Very beautiful propery with amaing decor',4,28),(76,'2021-02-08','C-57 Mankhurd Mumbai Maharashtra',1,1825,_binary 'A',_binary 'F',_binary 'S',22255,2,'Very beautiful propery with amaing decor',12,22),(77,'2021-01-06','H-89 Andheri West Mumbai Maharashtra',2,1392,_binary 'A',_binary 'H',_binary 'S',32960,0,'Very beautiful propery with amaing decor',8,9),(78,'2021-12-22','F-76 Powai Mumbai Maharashtra',0,1671,_binary 'A',_binary 'H',_binary 'S',36505,0,'Very beautiful propery with amaing decor',9,21),(79,'2021-11-10','K-341 Madh Mumbai Maharashtra',3,1097,_binary 'N',_binary 'A',_binary 'S',7377,2,'Very beautiful propery with amaing decor',1,17),(80,'2021-01-10','O-765 Mulund West Mumbai Maharashtra',3,1554,_binary 'N',_binary 'H',_binary 'S',20257,1,'Very beautiful propery with amaing decor',2,14),(81,'2021-01-10','G-56 Mulund East Mumbai Maharashtra',1,1709,_binary 'A',_binary 'A',_binary 'R',23057,1,'Very beautiful propery with amaing decor',14,11),(82,'2021-04-20','T-93 Goregaon Mumbai Maharashtra',3,1300,_binary 'A',_binary 'H',_binary 'R',12750,0,'Very beautiful propery with amaing decor',15,27),(83,'2021-09-21','V-87 Malvani Mumbai Maharashtra',3,1946,_binary 'A',_binary 'A',_binary 'R',13075,0,'Very beautiful propery with amaing decor',10,10),(84,'2021-01-14','W-67 Kandivali Mumbai Maharashtra',1,1638,_binary 'A',_binary 'F',_binary 'R',26752,0,'Very beautiful propery with amaing decor',6,30),(85,'2021-01-25','Y-05 Malad Mumbai Maharashtra',2,1933,_binary 'N',_binary 'F',_binary 'R',33357,2,'Very beautiful propery with amaing decor',10,29),(86,'2021-06-17','L-33 Worli Mumbai Maharashtra',0,1501,_binary 'A',_binary 'F',_binary 'S',31974,0,'Very beautiful propery with amaing decor',12,28),(87,'2021-07-24','C-515 Girgaon Mumbai Maharashtra',1,1900,_binary 'N',_binary 'F',_binary 'S',13087,0,'Very beautiful propery with amaing decor',5,22),(88,'2021-01-18','E-77 Lal Baug Mumbai Maharashtra',3,1655,_binary 'A',_binary 'A',_binary 'R',36521,1,'Very beautiful propery with amaing decor',12,9),(89,'2021-06-09','A-22 Dharmapuri Tajganj Agra UP',0,1870,_binary 'A',_binary 'H',_binary 'S',26024,1,'Very beautiful propery with amaing decor',12,24),(90,'2021-11-02','A-98 Dayalbagh Agra UP',3,1946,_binary 'A',_binary 'H',_binary 'S',10112,2,'Very beautiful propery with amaing decor',11,19),(91,'2021-07-23','Z-65 Shahganj Agra UP',1,1862,_binary 'A',_binary 'A',_binary 'S',14388,2,'Very beautiful propery with amaing decor',10,25),(92,'2021-10-27','H-54 Khandari Agra UP',3,1126,_binary 'A',_binary 'H',_binary 'R',25456,2,'Very beautiful propery with amaing decor',8,9),(93,'2021-02-28','K-43 Moti Vihar Agra UP',3,1191,_binary 'A',_binary 'A',_binary 'R',11626,2,'Very beautiful propery with amaing decor',8,20),(94,'2021-10-11','E-32 Gautam Nagar Agra UP',2,1308,_binary 'A',_binary 'H',_binary 'R',32929,1,'Very beautiful propery with amaing decor',3,26),(95,'2021-08-07','Q-09 Maharana Pratap Nagar Bhopal MP',1,1261,_binary 'A',_binary 'A',_binary 'R',20617,1,'Very beautiful propery with amaing decor',3,24),(96,'2021-03-06','W-01 Mira Nagar Bhopal MP',3,1999,_binary 'N',_binary 'H',_binary 'S',15757,0,'Very beautiful propery with amaing decor',6,22),(97,'2021-08-05','Q-84 Lalghati Bhopal MP',0,1363,_binary 'A',_binary 'H',_binary 'S',22858,2,'Very beautiful propery with amaing decor',5,9),(98,'2021-06-11','V-818 Habib Ganj Bhopal MP',2,1665,_binary 'A',_binary 'H',_binary 'S',36222,0,'Very beautiful propery with amaing decor',15,30),(99,'2021-03-12','S-232 Khanugaon Bhopal MP',1,1425,_binary 'A',_binary 'F',_binary 'S',14156,1,'Very beautiful propery with amaing decor',9,9),(100,'2021-01-18','U-46 Piplani Bhopal MP',2,1837,_binary 'N',_binary 'A',_binary 'S',27273,1,'Very beautiful propery with amaing decor',1,17);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tran_rent`
--

DROP TABLE IF EXISTS `tran_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tran_rent` (
  `TR_ID` int NOT NULL AUTO_INCREMENT,
  `rent` int NOT NULL,
  `st_date` date NOT NULL,
  `end_date` date NOT NULL,
  `a_id` int NOT NULL,
  `b_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`TR_ID`),
  KEY `a_id` (`a_id`),
  KEY `b_id` (`b_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `tran_rent_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `agent` (`ID`),
  CONSTRAINT `tran_rent_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `buyer` (`ID`),
  CONSTRAINT `tran_rent_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `property` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=875 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tran_rent`
--

LOCK TABLES `tran_rent` WRITE;
/*!40000 ALTER TABLE `tran_rent` DISABLE KEYS */;
INSERT INTO `tran_rent` VALUES (100,33357,'2021-07-19','2021-07-31',29,11,85),(108,10010,'2021-04-23','2021-04-30',16,11,13),(121,13118,'2021-09-14','2021-09-30',24,19,66),(234,6565,'2021-11-29','2021-11-30',12,63,42),(271,24122,'2021-05-30','2021-05-31',19,70,47),(345,14232,'2021-01-05','2021-01-31',9,47,6),(564,19083,'2021-12-28','2021-12-31',21,66,54),(675,24431,'2021-12-10','2021-12-31',27,25,71),(689,7726,'2021-08-25','2021-08-31',19,11,8),(799,23954,'2021-12-27','2021-12-31',13,40,23),(865,24414,'2021-03-06','2021-03-31',10,48,12),(874,9137,'2021-04-15','2021-04-30',24,40,36);
/*!40000 ALTER TABLE `tran_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tran_sale`
--

DROP TABLE IF EXISTS `tran_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tran_sale` (
  `TS_ID` int NOT NULL AUTO_INCREMENT,
  `sell_price` int NOT NULL,
  `s_date` date NOT NULL,
  `a_id` int NOT NULL,
  `b_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`TS_ID`),
  KEY `a_id` (`a_id`),
  KEY `b_id` (`b_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `tran_sale_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `agent` (`ID`),
  CONSTRAINT `tran_sale_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `buyer` (`ID`),
  CONSTRAINT `tran_sale_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `property` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8928 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tran_sale`
--

LOCK TABLES `tran_sale` WRITE;
/*!40000 ALTER TABLE `tran_sale` DISABLE KEYS */;
INSERT INTO `tran_sale` VALUES (894,35482,'2021-03-06',10,10,24),(999,27273,'2020-08-24',17,70,100),(1273,13087,'2021-11-29',22,31,87),(1906,13957,'2021-05-11',7,4,1),(2618,33702,'2021-12-28',10,6,9),(2917,26653,'2021-04-23',19,12,28),(3547,13660,'2021-09-14',27,17,64),(3718,19764,'2021-05-30',19,11,17),(3797,15757,'2021-12-10',22,43,96),(3827,23094,'2021-01-05',7,5,7),(4527,12119,'2021-09-04',31,19,52),(4829,27273,'2021-10-20',17,25,100),(5648,7377,'2021-12-27',17,52,79),(6864,20257,'2021-04-15',14,65,80),(7186,24917,'2021-07-19',19,12,34),(8927,11256,'2021-08-25',23,14,45);
/*!40000 ALTER TABLE `tran_sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:37:01
