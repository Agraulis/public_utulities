-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_20
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

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
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citizen` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'citizen id',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizen_flat` bigint(20) unsigned NOT NULL COMMENT 'number of flat',
  `citizen_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `last_name_idx` (`last_name`),
  KEY `citizen_email_idx` (`citizen_email`),
  KEY `fk_citizen_flat` (`citizen_flat`),
  CONSTRAINT `fk_citizen_flat` FOREIGN KEY (`citizen_flat`) REFERENCES `flats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='citizens';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen`
--

LOCK TABLES `citizen` WRITE;
/*!40000 ALTER TABLE `citizen` DISABLE KEYS */;
INSERT INTO `citizen` VALUES (1,'Gabriella','Schulist',73,'dgutmann@example.net'),(2,'Dell','Collins',21,'kertzmann.josiah@example.net'),(3,'Hank','Bruen',45,'carley.lakin@example.com'),(4,'Dayne','Jerde',78,'runolfsdottir.haleigh@example.com'),(5,'Keira','Howe',26,'chermann@example.com'),(6,'Daphnee','Waelchi',52,'griffin64@example.net'),(7,'Harley','Maggio',68,'theodora.hirthe@example.org'),(8,'Scottie','Ernser',27,'zkling@example.com'),(9,'Kristy','Bartoletti',75,'arnold57@example.com'),(10,'Ross','Wuckert',17,'mazie16@example.com'),(11,'Berniece','Franecki',31,'kunde.orpha@example.net'),(12,'Jared','Botsford',43,'rigoberto93@example.org'),(13,'Mireille','Wisozk',3,'bpacocha@example.net'),(14,'Cathryn','Dibbert',38,'reinger.urban@example.com'),(15,'Mertie','Hermiston',1,'cielo.hamill@example.org'),(16,'Andreane','Howell',52,'ogrant@example.net'),(17,'Alvis','Turner',23,'barton.chelsey@example.org'),(18,'Josephine','Gaylord',41,'lila.pfeffer@example.com'),(19,'Hope','Greenholt',10,'josh42@example.net'),(20,'Marion','Schmitt',40,'torey.renner@example.com'),(21,'Turner','Roberts',8,'victoria90@example.org'),(22,'Mortimer','Weber',17,'breitenberg.amya@example.com'),(23,'Ethyl','Powlowski',72,'kdaugherty@example.org'),(24,'Jarret','Hudson',58,'damien91@example.net'),(25,'Carmel','Greenholt',48,'dina52@example.org'),(26,'Savannah','Kreiger',39,'vivienne.schuster@example.com'),(27,'Stefan','Haley',21,'destiney.gutkowski@example.org'),(28,'Lia','Hoeger',10,'aida01@example.net'),(29,'Robert','Rempel',94,'hammes.franz@example.org'),(30,'Agustin','Pouros',27,'mhilpert@example.com'),(31,'Amani','King',32,'egleason@example.com'),(32,'Laverne','Parisian',66,'stroman.muriel@example.net'),(33,'Selmer','Lueilwitz',47,'khalil.bernhard@example.net'),(34,'Jaclyn','Parisian',76,'marvin.justice@example.com'),(35,'Crawford','Keebler',44,'ygulgowski@example.net'),(36,'Ora','Goldner',72,'brannon55@example.org'),(37,'Orion','Homenick',27,'clifton54@example.com'),(38,'Danika','Schinner',11,'xhane@example.net'),(39,'Johnathan','Bartoletti',99,'lamont35@example.net'),(40,'Ottis','Brown',2,'sallie86@example.net'),(41,'Pierce','Johnston',28,'vincenza14@example.net'),(42,'Roel','Mills',29,'uhickle@example.org'),(43,'Norris','Wolf',44,'sherzog@example.net'),(44,'Cornelius','Wisozk',31,'bonnie48@example.net'),(45,'Katelin','Beer',67,'ransom44@example.com'),(46,'Abbigail','Monahan',44,'tmetz@example.org'),(47,'Modesto','Armstrong',82,'dasia84@example.org'),(48,'Maud','Mraz',89,'phoebe.witting@example.org'),(49,'Skye','Kuvalis',85,'bailee.tremblay@example.com'),(50,'Beulah','Price',92,'fcormier@example.net'),(51,'Elena','Barton',29,'kihn.hosea@example.com'),(52,'Ibrahim','Boyer',93,'tina25@example.com'),(53,'Nicole','Hauck',9,'patricia35@example.org'),(54,'Idell','Bruen',1,'emmie.volkman@example.org'),(55,'Enos','Baumbach',50,'bernhard.allen@example.net'),(56,'Esta','Streich',56,'sschiller@example.com'),(57,'Annabelle','Veum',39,'dereck.marks@example.org'),(58,'Albin','Heaney',70,'ubrekke@example.net'),(59,'Yoshiko','Armstrong',66,'garrick.sanford@example.com'),(60,'Tara','Carter',32,'bashirian.gene@example.net'),(61,'Loraine','Bode',97,'orn.neal@example.org'),(62,'Lupe','Kshlerin',97,'agoldner@example.com'),(63,'Eleazar','Bahringer',98,'agustin.mclaughlin@example.org'),(64,'Mia','Braun',44,'blaise.erdman@example.org'),(65,'Phoebe','Zemlak',73,'schuster.enola@example.com'),(66,'Tiana','Franecki',42,'ezulauf@example.net'),(67,'Tommie','Kub',16,'shyann95@example.com'),(68,'Freda','Christiansen',99,'mleffler@example.com'),(69,'Vicenta','Pollich',52,'huel.anissa@example.net'),(70,'Cortez','Kuphal',14,'hintz.cara@example.com'),(71,'Melvina','Shanahan',1,'adams.arvilla@example.com'),(72,'Leonie','Pagac',80,'cruickshank.barrett@example.net'),(73,'Samanta','Rosenbaum',42,'ervin.boyer@example.com'),(74,'Corine','Torphy',44,'marc.medhurst@example.org'),(75,'Ewell','Williamson',10,'sporer.torrey@example.net'),(76,'Winston','Spinka',9,'fabshire@example.com'),(77,'Hermann','Cummings',88,'walton16@example.com'),(78,'Lizzie','Sipes',92,'trath@example.com'),(79,'Alvina','Reilly',98,'rchristiansen@example.com'),(80,'Mara','Schultz',73,'reinger.kendall@example.com'),(81,'Bernita','Fadel',83,'daniela.collins@example.com'),(82,'Ibrahim','Wilderman',26,'vjerde@example.com'),(83,'Antonietta','Orn',65,'rarmstrong@example.net'),(84,'Nathaniel','Hills',92,'helmer.dickens@example.org'),(85,'Paris','Reinger',26,'qkub@example.org'),(86,'Joy','Olson',14,'della85@example.org'),(87,'Kelsie','Schimmel',47,'anderson.mayert@example.org'),(88,'Retha','Bashirian',65,'maurine.turcotte@example.com'),(89,'Brycen','Kozey',84,'ashley49@example.org'),(90,'Leopoldo','Cronin',12,'maximilian12@example.org'),(91,'Leora','Little',97,'lester61@example.org'),(92,'Garrett','Baumbach',80,'considine.patsy@example.org'),(93,'Fermin','Bode',9,'pauline20@example.com'),(94,'Elva','Predovic',95,'llangosh@example.com'),(95,'Anjali','Fahey',24,'xo\'reilly@example.net'),(96,'Nels','Macejkovic',81,'flavio.padberg@example.com'),(97,'Simone','Hackett',36,'tamara.orn@example.net'),(98,'Kelsie','Fahey',39,'wleannon@example.com'),(99,'Gabriel','Eichmann',80,'murray09@example.org'),(100,'Kaela','Runolfsdottir',88,'zblick@example.com');
/*!40000 ALTER TABLE `citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electric_substation`
--

DROP TABLE IF EXISTS `electric_substation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electric_substation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id of electric substation',
  `substation_power` bigint(20) unsigned NOT NULL COMMENT 'maximum output power of the substation, MW',
  `status_id` bigint(20) unsigned NOT NULL,
  `street_id` bigint(20) unsigned NOT NULL COMMENT 'street id',
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'substation house number',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordinates` point DEFAULT NULL COMMENT 'GPS coordinates of the substation',
  PRIMARY KEY (`id`),
  KEY `street_idx` (`street_id`),
  KEY `status_idx` (`status_id`),
  CONSTRAINT `fk_electric_substation_status_id` FOREIGN KEY (`status_id`) REFERENCES `substation_statuses` (`id`),
  CONSTRAINT `fk_electric_substation_street_id` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='electric substations data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electric_substation`
--

LOCK TABLES `electric_substation` WRITE;
/*!40000 ALTER TABLE `electric_substation` DISABLE KEYS */;
INSERT INTO `electric_substation` VALUES (1,5,1,34,'85','http://runolfsdottirboehm.com/',NULL),(2,8,1,45,'76','http://www.starkgorczany.com/',NULL),(3,8,4,21,'57','http://mann.com/',NULL),(4,3,1,82,'3','http://www.hirthe.net/',NULL),(5,8,2,83,'53','http://stantonjacobson.com/',NULL),(6,5,1,64,'69','http://batz.net/',NULL),(7,6,2,94,'4','http://www.oreilly.com/',NULL),(8,8,1,89,'41','http://www.johnson.com/',NULL),(9,8,2,40,'27','http://www.dickens.org/',NULL),(10,5,4,41,'11','http://www.hettingerhirthe.com/',NULL),(11,9,2,86,'43','http://www.kutchreinger.com/',NULL),(12,9,2,15,'2','http://www.monahan.info/',NULL),(13,8,1,60,'89','http://www.streich.com/',NULL),(14,5,3,4,'52','http://mitchell.com/',NULL),(15,7,1,52,'29','http://www.purdy.net/',NULL),(16,7,1,32,'10','http://www.strosinbailey.org/',NULL),(17,7,4,20,'55','http://www.kovacek.com/',NULL),(18,6,4,78,'41','http://gottlieb.com/',NULL),(19,3,2,92,'56','http://www.hodkiewicz.com/',NULL),(20,6,3,82,'10','http://gulgowskireichel.com/',NULL);
/*!40000 ALTER TABLE `electric_substation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elevators`
--

DROP TABLE IF EXISTS `elevators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elevators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'elevator id',
  `elevator_serial_number` bigint(20) unsigned DEFAULT NULL,
  `entrance_id` bigint(20) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'in work',
  PRIMARY KEY (`id`),
  KEY `elevator_serial_number_idx` (`elevator_serial_number`),
  KEY `fk_entrances_id_elevators` (`entrance_id`),
  CONSTRAINT `fk_entrances_id_elevators` FOREIGN KEY (`entrance_id`) REFERENCES `entrances` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='elevators';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elevators`
--

LOCK TABLES `elevators` WRITE;
/*!40000 ALTER TABLE `elevators` DISABLE KEYS */;
INSERT INTO `elevators` VALUES (1,29223,155,'4'),(2,33983,122,'4'),(3,28110,110,'4'),(4,22118,136,'2'),(5,34412,149,'2'),(6,34332,178,'2'),(7,16443,166,'3'),(8,25375,195,'1'),(9,24699,131,'1'),(10,20087,131,'2'),(11,15058,187,'2'),(12,14656,115,'2'),(13,24817,196,'3'),(14,25362,154,'4'),(15,26607,164,'4'),(16,29419,172,'1'),(17,37262,177,'4'),(18,34838,113,'4'),(19,25271,179,'2'),(20,36517,127,'2'),(21,22744,186,'1'),(22,19446,174,'3'),(23,19819,156,'3'),(24,33188,170,'4'),(25,37405,177,'1'),(26,15481,127,'3'),(27,14870,147,'2'),(28,27132,192,'2'),(29,24890,101,'2'),(30,33873,131,'3'),(31,27131,132,'1'),(32,24495,185,'1'),(33,16062,198,'4'),(34,24361,194,'4'),(35,22758,144,'1'),(36,33319,105,'2'),(37,21200,124,'4'),(38,30164,181,'4'),(39,26444,147,'3'),(40,12308,169,'1'),(41,30055,151,'4'),(42,32601,186,'4'),(43,17381,138,'4'),(44,33142,141,'2'),(45,14932,122,'3'),(46,34686,104,'3'),(47,28376,174,'4'),(48,25575,160,'3'),(49,22984,184,'3'),(50,27352,147,'2');
/*!40000 ALTER TABLE `elevators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrances`
--

DROP TABLE IF EXISTS `entrances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'entrance id',
  `entrance_number` bigint(20) unsigned DEFAULT NULL,
  `house_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entrance_in_house_uq` (`entrance_number`,`house_id`),
  KEY `entrance_idx` (`entrance_number`),
  KEY `house_idx` (`house_id`),
  CONSTRAINT `fk_house_id_entrances` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='entrances of house';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrances`
--

LOCK TABLES `entrances` WRITE;
/*!40000 ALTER TABLE `entrances` DISABLE KEYS */;
INSERT INTO `entrances` VALUES (168,1,35),(142,1,44),(154,1,45),(113,1,61),(132,1,78),(188,1,104),(200,1,151),(128,1,179),(122,1,192),(143,1,193),(164,2,29),(151,2,34),(104,2,101),(174,2,105),(138,2,150),(130,2,158),(107,2,172),(148,2,176),(106,2,182),(179,2,189),(115,2,200),(145,3,22),(136,3,34),(190,3,51),(187,3,58),(185,3,66),(139,3,87),(175,3,119),(117,3,154),(146,3,192),(147,3,193),(156,4,15),(184,4,43),(120,4,59),(153,4,62),(178,4,111),(198,4,149),(158,4,200),(162,5,112),(171,5,113),(109,5,126),(170,5,149),(116,5,170),(114,5,178),(166,5,183),(191,6,31),(194,6,36),(103,6,52),(119,6,79),(177,6,97),(186,6,104),(180,6,109),(160,6,127),(126,6,194),(123,7,11),(144,7,24),(167,7,62),(150,7,71),(133,7,72),(102,7,115),(134,7,171),(152,7,192),(159,7,193),(124,8,12),(149,8,13),(157,8,38),(196,8,45),(192,8,59),(199,8,80),(195,8,88),(129,8,90),(172,8,95),(189,8,103),(112,8,115),(131,8,119),(169,8,133),(105,8,162),(141,8,163),(135,8,178),(181,8,182),(173,8,192),(155,9,3),(197,9,19),(182,9,22),(108,9,54),(193,9,163),(121,9,179),(127,9,197),(163,10,5),(110,10,14),(118,10,22),(140,10,78),(165,10,83),(137,10,153),(111,10,157),(101,10,189);
/*!40000 ALTER TABLE `entrances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_meter_readings`
--

DROP TABLE IF EXISTS `flat_meter_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_meter_readings` (
  `flat_id` bigint(20) unsigned NOT NULL COMMENT 'number of flat',
  `gas` bigint(20) unsigned DEFAULT NULL,
  `electricity` bigint(20) unsigned NOT NULL,
  `cold_water` bigint(20) unsigned NOT NULL,
  `hot_water` bigint(20) unsigned NOT NULL,
  `measurement_date` date DEFAULT NULL COMMENT 'day of checking the counters',
  PRIMARY KEY (`flat_id`),
  KEY `flat_id_idx` (`flat_id`),
  KEY `measurement_date_idx` (`measurement_date`),
  CONSTRAINT `fk_flat` FOREIGN KEY (`flat_id`) REFERENCES `flats` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='flat meter readings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_meter_readings`
--

LOCK TABLES `flat_meter_readings` WRITE;
/*!40000 ALTER TABLE `flat_meter_readings` DISABLE KEYS */;
INSERT INTO `flat_meter_readings` VALUES (1,10921,16354,28966,9573,'2003-06-14'),(2,25130,22770,11277,23978,'1974-12-07'),(5,7768,13950,17192,11974,'2000-03-17'),(6,9041,5437,8267,9285,'1979-05-31'),(7,8793,25891,8425,16648,'1998-03-22'),(9,21988,15144,27689,18840,'1993-06-21'),(10,9191,27032,9333,17666,'2020-10-21'),(11,12689,6389,14208,10826,'1982-05-26'),(12,29952,23834,11823,29577,'1977-09-20'),(13,10053,21004,17863,11017,'1994-05-29'),(14,11504,10610,14664,12164,'1984-07-12'),(16,7237,17201,29523,11349,'1994-05-15'),(17,26134,15989,25375,24092,'1973-08-19'),(18,14056,8383,5802,28657,'1973-09-20'),(19,16276,6173,7049,8758,'2020-08-21'),(21,27047,29592,11100,29002,'2006-07-14'),(22,13162,12367,14053,18822,'2011-01-21'),(23,12981,25323,6085,13367,'1996-01-13'),(24,8220,11155,12673,16643,'1986-04-12'),(25,28692,27900,9920,18584,'2013-03-10'),(26,24034,24823,10613,17599,'1975-07-29'),(28,25370,16413,27851,5243,'1977-04-18'),(29,10764,9032,6250,22361,'1985-05-06'),(30,13349,15180,22861,27535,'1994-08-19'),(32,5589,22781,10671,5736,'1981-12-12'),(33,11023,9789,19242,17158,'1974-06-07'),(36,16601,17336,27895,18900,'1992-08-07'),(39,6205,13228,5057,6851,'1982-08-31'),(40,13560,14456,18181,23274,'1982-01-11'),(41,19630,25588,17791,26172,'1970-04-30'),(43,21698,18774,27218,14855,'1984-12-19'),(45,5532,25334,23315,19980,'2011-05-25'),(46,28251,23224,19624,6849,'1988-05-29'),(47,27434,17142,8326,17388,'1999-01-18'),(49,8281,13314,11816,12525,'1986-01-11'),(50,21541,17805,15034,19752,'2018-10-31'),(53,5173,21265,14018,23724,'2012-06-26'),(57,19913,23670,15872,27817,'1976-06-03'),(58,28901,11095,6122,20407,'2000-02-08'),(59,21726,26672,11291,8823,'2004-01-03'),(60,27803,8703,5706,13777,'1987-05-10'),(61,28350,21710,26864,18776,'2018-05-08'),(66,6442,11927,18191,22179,'2008-03-21'),(67,10530,13614,22245,22811,'1974-12-22'),(68,29383,12217,15176,7575,'2001-02-21'),(69,29044,15375,29380,15039,'2008-01-09'),(70,21100,22316,15672,28657,'1974-07-19'),(72,11892,10703,7155,23050,'1970-02-25'),(73,21391,13449,29946,25485,'1981-09-20'),(74,28090,6453,17531,16144,'1985-10-06'),(75,25323,10061,10124,28731,'1971-05-30'),(77,8357,20431,16178,16615,'1991-07-26'),(78,27632,13136,16664,13747,'1972-10-27'),(80,29870,15715,14430,16971,'2015-04-09'),(81,10567,24946,17739,28234,'1984-01-22'),(84,29069,5283,28663,26480,'2021-02-07'),(86,7389,25681,22288,29656,'2000-03-10'),(90,22569,21360,17862,25829,'1995-09-21'),(91,27182,14954,25657,17193,'1978-12-04'),(92,9294,18731,15437,19045,'1982-08-24'),(96,22991,17367,14285,8314,'2004-10-09'),(97,13354,11647,23745,11546,'2015-09-04'),(98,6039,29449,18840,9976,'2000-08-07');
/*!40000 ALTER TABLE `flat_meter_readings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flats`
--

DROP TABLE IF EXISTS `flats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'flat id',
  `flat_number` bigint(20) unsigned NOT NULL COMMENT 'number of flat',
  `house_id` bigint(20) unsigned NOT NULL COMMENT 'id of house',
  `entrance_id` bigint(20) unsigned NOT NULL COMMENT 'id of entrance',
  `floor_number` smallint(5) unsigned NOT NULL COMMENT 'number of floor',
  PRIMARY KEY (`id`),
  KEY `flat_number_idx` (`flat_number`),
  KEY `house_id_idx` (`house_id`),
  KEY `entrance_id_idx` (`entrance_id`),
  CONSTRAINT `fk_entrances_id_flats` FOREIGN KEY (`entrance_id`) REFERENCES `entrances` (`id`),
  CONSTRAINT `fk_house_id_flats` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='flats in the house';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flats`
--

LOCK TABLES `flats` WRITE;
/*!40000 ALTER TABLE `flats` DISABLE KEYS */;
INSERT INTO `flats` VALUES (1,33,200,184,4),(2,86,17,134,2),(3,15,84,174,13),(4,100,69,109,19),(5,1,105,185,3),(6,52,34,170,3),(7,46,104,159,12),(8,94,143,195,3),(9,32,19,118,12),(10,30,23,151,10),(11,4,77,146,7),(12,35,179,152,19),(13,43,5,104,4),(14,33,200,134,8),(15,3,153,178,20),(16,96,13,177,17),(17,23,121,115,2),(18,21,21,102,12),(19,32,179,144,16),(20,7,22,141,13),(21,54,57,128,15),(22,60,24,180,17),(23,32,175,184,1),(24,82,150,197,14),(25,10,2,187,16),(26,2,96,139,17),(27,65,66,137,4),(28,33,184,135,13),(29,3,81,192,15),(30,13,139,116,15),(31,36,139,175,18),(32,83,186,130,19),(33,21,181,103,7),(34,60,62,180,5),(35,73,95,142,7),(36,25,42,175,19),(37,82,139,133,10),(38,23,111,156,11),(39,64,31,130,6),(40,58,106,116,9),(41,68,33,101,6),(42,4,110,149,1),(43,64,76,146,12),(44,15,169,179,4),(45,71,77,153,10),(46,44,191,107,14),(47,91,59,189,10),(48,18,73,119,7),(49,84,182,167,1),(50,36,198,138,15),(51,27,19,119,3),(52,65,27,179,14),(53,49,104,168,11),(54,18,70,167,11),(55,57,197,188,12),(56,88,167,115,15),(57,86,176,138,20),(58,95,128,126,13),(59,67,169,148,5),(60,32,9,122,9),(61,66,4,200,7),(62,35,60,131,5),(63,24,175,166,2),(64,81,101,178,10),(65,11,67,149,13),(66,44,32,142,3),(67,23,138,129,1),(68,62,42,120,13),(69,38,195,155,18),(70,72,176,196,5),(71,2,86,171,12),(72,91,21,131,15),(73,33,18,174,6),(74,37,113,194,14),(75,49,46,160,3),(76,43,32,124,18),(77,76,121,145,1),(78,22,111,147,2),(79,74,23,106,8),(80,88,51,144,4),(81,33,110,141,14),(82,83,175,123,20),(83,43,140,108,1),(84,23,88,167,12),(85,47,127,132,9),(86,45,126,106,2),(87,5,6,173,16),(88,78,73,112,6),(89,53,95,193,6),(90,2,10,170,3),(91,76,107,120,10),(92,91,189,113,1),(93,40,131,149,9),(94,50,122,177,16),(95,36,111,187,15),(96,23,43,110,13),(97,16,55,109,20),(98,18,67,198,15),(99,36,33,177,15),(100,69,128,180,8);
/*!40000 ALTER TABLE `flats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas_substation`
--

DROP TABLE IF EXISTS `gas_substation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gas_substation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id of gas substation',
  `status_id` bigint(20) unsigned NOT NULL,
  `street_id` bigint(20) unsigned NOT NULL COMMENT 'street id',
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'substation house number',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordinates` point DEFAULT NULL COMMENT 'GPS coordinates of the substation',
  PRIMARY KEY (`id`),
  KEY `address_idx` (`street_id`,`house_number`),
  KEY `status_idx` (`status_id`),
  KEY `website_idx` (`website`),
  CONSTRAINT `fk_gas_substation_status_id` FOREIGN KEY (`status_id`) REFERENCES `substation_statuses` (`id`),
  CONSTRAINT `fk_gas_substation_street_id` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='gas substations data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas_substation`
--

LOCK TABLES `gas_substation` WRITE;
/*!40000 ALTER TABLE `gas_substation` DISABLE KEYS */;
INSERT INTO `gas_substation` VALUES (1,3,80,'99','http://quitzonmurray.com/',NULL),(2,4,41,'14','http://www.abbott.com/',NULL),(3,3,39,'75','http://www.schmidt.com/',NULL),(4,4,36,'1','http://www.ledner.info/',NULL),(5,2,12,'85','http://www.batzmcclure.com/',NULL),(6,4,30,'53','http://www.willchristiansen.org/',NULL),(7,1,11,'68','http://www.bogan.com/',NULL),(8,3,8,'93','http://cronin.com/',NULL),(9,2,35,'64','http://ryanboehm.info/',NULL),(10,2,30,'64','http://franecki.com/',NULL);
/*!40000 ALTER TABLE `gas_substation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heat_substation`
--

DROP TABLE IF EXISTS `heat_substation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heat_substation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id of heat substation',
  `status_id` bigint(20) unsigned NOT NULL,
  `street_id` bigint(20) unsigned NOT NULL COMMENT 'street id',
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'substation house number',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_idx` (`street_id`,`house_number`),
  KEY `status_idx` (`status_id`),
  KEY `website_idx` (`website`),
  CONSTRAINT `fk_heat_substation_status_id` FOREIGN KEY (`status_id`) REFERENCES `substation_statuses` (`id`),
  CONSTRAINT `fk_heat_substation_street_id` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='heat substations data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heat_substation`
--

LOCK TABLES `heat_substation` WRITE;
/*!40000 ALTER TABLE `heat_substation` DISABLE KEYS */;
INSERT INTO `heat_substation` VALUES (1,2,32,'63','http://rennerstark.org/'),(2,1,19,'89','http://www.vonrueden.com/'),(3,3,84,'87','http://legros.org/'),(4,2,62,'14','http://steubermante.info/'),(5,2,22,'97','http://www.deckowgoodwin.com/'),(6,3,64,'38','http://muller.com/'),(7,1,31,'55','http://reinger.com/'),(8,4,8,'30','http://russelhoeger.org/'),(9,4,86,'61','http://www.windler.com/'),(10,3,98,'92','http://www.wittingwunsch.org/'),(11,4,45,'54','http://dicki.info/'),(12,3,45,'64','http://www.smithcarter.net/');
/*!40000 ALTER TABLE `heat_substation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_meter_readings`
--

DROP TABLE IF EXISTS `house_meter_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_meter_readings` (
  `house_id` bigint(20) unsigned NOT NULL COMMENT 'house id',
  `gas` bigint(20) unsigned DEFAULT NULL,
  `electricity` bigint(20) unsigned NOT NULL,
  `cold_water` bigint(20) unsigned NOT NULL,
  `hot_water` bigint(20) unsigned NOT NULL,
  `measurement_date` date DEFAULT NULL COMMENT 'day of checking the counters',
  PRIMARY KEY (`house_id`),
  KEY `house_id_idx` (`house_id`),
  KEY `measurement_date_idx` (`measurement_date`),
  CONSTRAINT `fk_house_id_meter_readings` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='meter readings for house';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_meter_readings`
--

LOCK TABLES `house_meter_readings` WRITE;
/*!40000 ALTER TABLE `house_meter_readings` DISABLE KEYS */;
INSERT INTO `house_meter_readings` VALUES (1,12854,23411,19115,11451,'2021-04-18'),(2,11661,15215,27386,7944,'1972-12-14'),(3,27698,14071,24180,11844,'1990-10-25'),(4,28470,28429,25468,25973,'1981-02-21'),(6,26966,8812,20540,19686,'1998-11-19'),(8,24753,18224,19583,13986,'1994-08-01'),(9,5328,19948,23019,17845,'1973-02-26'),(10,18383,25585,29713,25618,'2008-09-22'),(11,23875,9041,29785,27899,'2001-03-31'),(12,28246,18102,18606,15026,'1987-04-09'),(13,22291,26925,16145,15239,'2009-09-10'),(14,10245,19549,16659,25538,'2019-09-23'),(16,5214,14597,26988,7302,'1980-09-30'),(17,21588,12416,17885,19241,'1991-05-08'),(18,21339,22836,23371,6674,'2010-05-06'),(20,17491,6442,8960,26483,'2002-03-09'),(21,11730,24025,14532,14019,'1990-03-03'),(23,24181,26917,23023,20689,'2016-06-06'),(24,29957,16292,12197,27122,'2018-08-27'),(25,20232,9134,9212,24430,'2015-10-27'),(26,13959,25146,5147,17067,'1986-01-03'),(27,17313,29555,17569,12673,'2004-10-09'),(28,8600,19066,20220,27551,'2015-04-24'),(29,29886,28923,9091,9922,'1973-01-08'),(31,22558,14905,5900,12947,'1982-12-10'),(32,15383,13234,24165,11302,'1976-08-09'),(33,23677,24160,27537,10124,'1988-05-21'),(35,18462,22015,14655,17992,'1972-08-16'),(36,14973,18162,9421,22136,'2016-04-03'),(37,29596,13744,7914,19337,'2006-08-16'),(39,12597,12628,6149,22430,'2019-08-16'),(40,27318,12719,14587,21337,'1976-06-14'),(42,21026,25386,23523,25074,'2016-12-01'),(43,23652,11279,10384,5204,'2015-04-12'),(45,13120,27915,25519,20583,'1985-03-30'),(47,24581,29341,29899,8727,'1980-10-26'),(48,5406,28674,11535,7562,'2008-02-15'),(49,14255,6605,24705,25735,'2014-02-24'),(50,22143,22240,22111,9028,'2012-04-28'),(52,24639,8099,27117,17780,'1980-03-03'),(53,27974,7126,7586,25164,'2005-04-29'),(54,16389,29883,20428,18627,'2009-04-06'),(57,9863,19283,5863,21395,'1989-02-21'),(60,6382,23934,5096,13457,'2018-06-14'),(62,6435,13428,28512,11149,'1971-06-23'),(63,5283,15627,19398,10447,'1991-11-05'),(64,13469,8156,24519,8248,'1971-03-31'),(66,9060,17320,28140,8205,'2011-05-27'),(67,26712,29832,17959,12842,'1974-11-09'),(68,21151,7461,15108,11107,'1996-04-10'),(69,8760,17157,28549,29698,'2002-11-07'),(70,10530,15985,29713,8678,'2011-06-04'),(72,20213,5642,11083,12770,'1994-08-03'),(73,26535,19644,21248,22266,'1985-01-25'),(74,20003,9300,28083,8504,'2020-05-18'),(75,25860,18108,18967,8065,'2016-09-12'),(76,20431,19705,19629,7762,'1995-10-22'),(79,28145,16248,16600,15559,'1971-01-09'),(81,20107,12646,7660,15484,'2001-02-09'),(83,20275,6438,6960,10041,'1997-11-07'),(86,21142,13250,16683,14722,'1984-07-18'),(88,18976,14817,6024,10363,'2016-04-22'),(89,15756,12798,12394,27815,'1990-05-30'),(91,26160,24934,26203,22775,'1983-05-28'),(92,28290,8304,13849,27991,'1996-01-05'),(93,8204,10047,28154,18644,'1975-10-31'),(95,29894,20993,18386,17982,'1991-10-20'),(96,15409,9774,16687,5851,'1981-04-10'),(97,13646,28984,16065,10672,'2015-01-12'),(99,13214,23967,28938,18801,'2003-12-08'),(100,9217,10701,22062,18877,'2001-02-04'),(103,10385,17562,22328,28771,'2012-12-11'),(104,13447,28066,25302,25837,'1976-08-03'),(106,21153,6189,5190,29481,'2005-05-15'),(107,21862,23687,22276,6260,'1989-09-19'),(108,27946,8586,21752,19574,'1970-09-01'),(109,23107,27919,29150,27458,'2013-12-30'),(110,18295,12774,8552,6645,'1995-03-09'),(111,6806,26200,9423,5718,'2001-09-20'),(116,16575,20931,27843,20952,'1987-03-30'),(117,13883,7236,27015,25239,'1982-10-16'),(118,29447,18172,25271,22110,'2013-05-06'),(123,15537,14444,14973,19000,'1982-09-09'),(125,6739,17743,22958,8687,'1972-05-25'),(128,13308,11680,29120,21200,'1970-04-07'),(129,20571,13862,9360,20495,'1971-07-27'),(130,21438,13784,27451,21665,'2010-09-01'),(131,24622,26425,22440,23236,'2015-01-21'),(135,28619,15655,15088,10653,'1996-06-17'),(136,24983,29724,8540,21306,'2000-10-08'),(137,10215,7448,28878,5812,'1998-05-28'),(138,21672,17850,7269,6143,'2003-02-16'),(139,21315,24957,13824,28110,'2013-01-07'),(140,10213,27765,22858,11301,'2004-03-09'),(141,24945,14182,25822,17158,'2005-06-19'),(143,20215,16649,18575,9903,'1978-08-23'),(144,27729,16834,23284,14568,'1975-12-20'),(146,21123,19431,29202,26775,'2000-12-01'),(149,28212,16026,10776,14304,'1994-01-12'),(150,22957,13225,16614,29482,'2012-06-28'),(152,15186,22610,21576,25346,'1970-10-11'),(153,14921,25218,18264,22265,'1992-04-13'),(155,24222,27728,13730,7917,'1995-09-27'),(158,12481,26339,7131,19230,'2000-12-09'),(159,11078,10327,27734,27299,'1995-07-28'),(161,10639,12630,6040,27815,'1998-11-28'),(162,26526,23415,6950,19812,'2001-11-12'),(165,13075,29532,16145,28901,'1989-07-10'),(167,19787,15923,25035,24159,'2012-11-17'),(169,22317,9664,7303,26848,'1976-04-05'),(171,14177,7837,10284,8448,'1973-07-09'),(172,26415,5504,18766,14830,'1975-12-02'),(174,19500,18944,26012,9554,'1972-05-31'),(177,10135,22955,8166,8265,'1988-09-16'),(178,20904,6944,10109,12297,'1975-03-09'),(183,9206,27653,25404,25950,'1989-02-20'),(184,21147,19258,24010,21889,'1977-05-02'),(185,17804,17099,12087,12070,'1997-10-23'),(186,22301,8125,27685,11734,'1982-05-14'),(187,11009,7644,17183,21209,'2011-08-20'),(188,12520,24866,24170,22674,'1988-11-15'),(189,11457,18214,12753,15282,'1979-08-29'),(190,20482,27677,11685,26030,'2004-09-26'),(191,14116,18884,13486,17457,'2005-09-14'),(193,17976,18876,25449,22364,'2012-03-19'),(194,16029,8971,28089,26689,'1988-10-17'),(198,5699,27987,14721,16891,'1978-04-30'),(199,23797,23354,20144,27985,'1976-10-07');
/*!40000 ALTER TABLE `house_meter_readings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `house_number` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'house numbers/building number',
  `street_id` bigint(20) unsigned NOT NULL COMMENT 'street id',
  `construction_date` date DEFAULT NULL COMMENT 'construction date',
  `entrances_quantity` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'number of entrances',
  `floors_quantity` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'number of floors',
  `electricity_source` bigint(20) unsigned DEFAULT NULL COMMENT 'id of electric substation',
  `water_source` bigint(20) unsigned DEFAULT NULL COMMENT 'id of water substation',
  `heat_source` bigint(20) unsigned DEFAULT NULL COMMENT 'id of heat substation',
  `gas_source` bigint(20) unsigned DEFAULT NULL COMMENT 'id of gas substation',
  PRIMARY KEY (`id`),
  KEY `street_idx` (`street_id`),
  KEY `electricity_source_idx` (`electricity_source`),
  KEY `water_source_idx` (`water_source`),
  KEY `heat_source_idx` (`heat_source`),
  KEY `gas_source_idx` (`gas_source`),
  CONSTRAINT `fk_electricity_source_id` FOREIGN KEY (`electricity_source`) REFERENCES `electric_substation` (`id`),
  CONSTRAINT `fk_gas_source_id` FOREIGN KEY (`gas_source`) REFERENCES `gas_substation` (`id`),
  CONSTRAINT `fk_heat_source_id` FOREIGN KEY (`heat_source`) REFERENCES `heat_substation` (`id`),
  CONSTRAINT `fk_street_id` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`),
  CONSTRAINT `fk_water_source_id` FOREIGN KEY (`water_source`) REFERENCES `water_substation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='streets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (1,'36',47,'1980-07-07',7,4,6,7,6,9),(2,'57',64,'1984-10-05',1,5,12,3,6,7),(3,'214',50,'1988-05-23',2,7,16,5,9,3),(4,'45',92,'1977-04-30',8,2,17,4,6,7),(5,'41',47,'1972-10-26',6,3,15,2,2,4),(6,'140',64,'2014-10-21',3,10,2,3,12,2),(7,'1',42,'1995-05-20',6,10,9,4,5,10),(8,'224',35,'1976-07-13',7,3,1,4,9,5),(9,'70',20,'1991-07-16',7,3,4,2,10,9),(10,'238',53,'1975-08-05',9,2,15,5,1,2),(11,'43',40,'1987-02-19',6,3,11,7,7,7),(12,'199',21,'2000-06-27',9,1,5,6,6,2),(13,'121',93,'2003-06-26',4,1,19,5,5,3),(14,'239',55,'1986-11-21',4,10,15,3,1,4),(15,'91',77,'2019-12-06',10,2,5,4,1,1),(16,'195',42,'2008-10-04',4,3,12,6,2,7),(17,'5',92,'1987-06-19',8,7,11,1,10,1),(18,'122',79,'2019-06-08',8,4,1,3,7,6),(19,'200',48,'2012-02-01',6,10,10,3,2,9),(20,'82',71,'1971-10-16',9,1,13,4,12,7),(21,'6',96,'1995-11-14',3,2,16,7,7,8),(22,'182',97,'2007-11-11',8,3,19,3,9,1),(23,'147',96,'1999-07-05',4,7,13,5,2,5),(24,'27',67,'2019-04-26',7,2,18,4,12,5),(25,'138',96,'2017-01-15',9,1,9,7,5,6),(26,'65',72,'1989-04-09',9,8,2,2,4,1),(27,'93',89,'1997-09-05',6,3,5,6,10,8),(28,'222',61,'1983-04-08',1,6,16,5,12,5),(29,'33',72,'2007-10-01',5,6,19,1,4,10),(30,'235',57,'2007-08-14',8,3,20,7,1,10),(31,'21',28,'2016-06-23',2,1,20,3,2,4),(32,'145',88,'2004-04-23',3,8,18,3,1,2),(33,'214',49,'1981-01-10',7,9,19,3,4,8),(34,'104',9,'1986-04-23',8,10,19,4,10,9),(35,'173',1,'1977-09-05',6,2,10,6,2,8),(36,'51',76,'2011-08-31',8,7,14,6,8,8),(37,'183',63,'1990-02-10',2,7,18,5,12,1),(38,'168',5,'1985-12-21',1,4,17,7,6,10),(39,'88',1,'1979-09-05',4,8,19,6,5,3),(40,'49',61,'1991-03-23',4,1,10,2,2,3),(41,'121',6,'1995-08-24',10,3,3,5,10,3),(42,'147',45,'1998-10-13',1,8,12,7,2,2),(43,'96',67,'1970-05-05',5,9,16,1,5,8),(44,'80',12,'1982-10-08',4,4,8,5,1,9),(45,'36',49,'1987-04-30',5,7,1,6,5,4),(46,'113',7,'1997-05-21',6,1,19,6,3,1),(47,'4',4,'1972-07-01',2,10,7,2,9,2),(48,'180',43,'1972-07-06',6,3,4,5,5,4),(49,'191',91,'1997-01-22',8,4,1,1,12,4),(50,'74',84,'1992-10-28',9,2,3,6,6,2),(51,'124',65,'1970-03-30',10,4,19,1,6,3),(52,'174',50,'1990-04-06',7,3,11,2,4,8),(53,'118',23,'1975-07-11',7,4,7,1,5,1),(54,'128',19,'2019-09-03',10,9,17,2,11,3),(55,'191',54,'1995-03-08',6,7,16,2,8,8),(56,'133',65,'1975-04-14',7,8,10,7,6,9),(57,'134',1,'1993-06-12',2,4,2,6,2,6),(58,'206',3,'1971-07-28',1,8,13,1,3,10),(59,'155',80,'2016-11-02',5,1,9,2,11,9),(60,'238',35,'2009-08-28',5,9,1,5,7,10),(61,'201',88,'2015-03-01',9,1,2,6,2,8),(62,'212',54,'2001-01-10',9,1,16,2,6,3),(63,'30',8,'1980-09-02',4,9,9,3,11,6),(64,'247',82,'2017-05-23',4,3,18,2,11,1),(65,'94',13,'2006-11-07',5,5,13,4,5,6),(66,'13',35,'2018-10-04',10,2,16,4,1,4),(67,'242',50,'1996-05-27',1,6,18,3,3,1),(68,'178',12,'2015-12-14',8,8,16,6,4,3),(69,'176',2,'2003-07-11',5,9,8,5,4,3),(70,'29',23,'1988-03-19',9,5,3,1,5,10),(71,'147',21,'1980-03-21',10,1,11,5,9,10),(72,'76',11,'1972-11-06',3,8,2,5,8,1),(73,'15',100,'1976-08-23',5,3,4,7,5,4),(74,'211',97,'1983-04-25',4,8,11,2,10,9),(75,'178',38,'1985-09-09',8,8,16,2,1,1),(76,'101',43,'2008-06-19',8,5,5,2,7,7),(77,'215',16,'2010-05-04',1,5,16,2,10,5),(78,'82',13,'1972-05-04',10,1,18,4,10,6),(79,'170',59,'1985-10-16',6,1,17,5,7,3),(80,'149',6,'1978-07-02',6,6,11,6,3,3),(81,'231',55,'1994-01-18',6,3,13,1,9,7),(82,'153',13,'2009-08-20',3,3,4,7,4,8),(83,'157',54,'2012-03-27',10,5,10,4,9,3),(84,'39',94,'1981-01-18',6,10,18,1,6,7),(85,'124',60,'2020-01-29',7,9,1,4,4,6),(86,'232',70,'2007-01-10',3,8,7,1,6,6),(87,'67',36,'2016-10-21',8,3,20,1,5,7),(88,'225',77,'1988-12-22',2,2,11,6,8,9),(89,'240',57,'1986-01-11',3,8,4,3,1,10),(90,'1',54,'1979-12-30',1,3,20,6,8,5),(91,'158',44,'2009-02-26',6,2,5,4,12,5),(92,'136',7,'2015-05-21',8,5,13,6,2,1),(93,'175',34,'2019-08-03',9,2,10,1,6,9),(94,'157',70,'1985-06-24',8,3,5,3,7,9),(95,'234',26,'1990-04-03',4,4,3,1,7,2),(96,'7',98,'1973-01-08',3,3,3,1,9,8),(97,'244',56,'1972-09-03',4,5,4,7,1,2),(98,'144',44,'1974-01-09',7,2,2,6,3,3),(99,'201',78,'2009-07-24',5,6,12,6,10,1),(100,'56',63,'1993-02-14',7,8,10,2,1,1),(101,'2',15,'2012-02-11',3,9,6,2,3,9),(102,'189',31,'2002-12-19',8,9,4,7,6,10),(103,'158',69,'1979-11-01',10,4,20,1,8,1),(104,'236',23,'1991-10-03',6,3,2,1,12,3),(105,'165',33,'2009-03-04',2,4,15,6,1,5),(106,'130',89,'1985-11-09',9,10,14,7,2,8),(107,'192',100,'1994-07-13',10,4,6,1,2,6),(108,'158',89,'1970-05-16',10,1,9,5,11,9),(109,'139',64,'2011-12-11',2,4,11,6,10,2),(110,'103',85,'1974-11-28',6,5,20,2,12,10),(111,'88',54,'2004-03-11',6,4,6,5,5,4),(112,'232',16,'1988-11-07',9,1,6,1,2,5),(113,'150',75,'2010-09-10',10,4,3,6,10,3),(114,'152',23,'2012-04-24',10,3,13,6,12,5),(115,'193',59,'1970-04-11',4,10,12,1,6,4),(116,'246',21,'2002-04-21',7,8,6,3,6,3),(117,'169',23,'2010-06-18',10,2,20,4,11,4),(118,'186',82,'1981-04-11',7,9,1,5,10,2),(119,'161',8,'1983-05-03',10,6,12,3,10,4),(120,'166',57,'2009-09-09',8,3,1,7,4,10),(121,'183',48,'2016-05-24',4,8,18,4,7,3),(122,'191',83,'1987-01-25',4,1,15,4,2,2),(123,'113',79,'1975-10-08',2,1,7,2,4,3),(124,'205',53,'1980-09-07',10,3,2,2,3,10),(125,'74',44,'2020-11-20',4,8,6,4,9,1),(126,'165',82,'1990-02-22',4,7,6,1,10,6),(127,'94',3,'2007-02-21',4,6,6,3,7,8),(128,'45',72,'2011-03-13',10,1,8,4,4,5),(129,'221',65,'2016-08-24',3,2,2,6,10,4),(130,'223',6,'1976-09-03',2,5,7,4,4,5),(131,'22',35,'1971-01-30',4,7,16,6,10,5),(132,'197',79,'2015-06-30',3,10,13,6,11,5),(133,'244',36,'2010-10-01',1,5,18,6,10,5),(134,'122',50,'2014-09-21',3,8,10,6,12,8),(135,'59',25,'1996-05-13',6,8,13,6,1,5),(136,'93',20,'2011-03-28',6,5,3,6,8,5),(137,'226',23,'2002-05-26',9,4,20,2,12,9),(138,'196',72,'1977-03-01',5,10,16,4,7,7),(139,'130',91,'1980-05-14',3,5,18,4,8,7),(140,'134',91,'1989-07-20',4,6,3,1,9,2),(141,'19',93,'1986-06-18',6,5,19,6,10,10),(142,'176',16,'1980-11-19',4,7,20,1,11,6),(143,'143',57,'1994-03-04',3,2,3,4,10,1),(144,'64',37,'2019-01-05',3,7,10,6,10,10),(145,'196',46,'1981-05-05',6,1,15,6,12,4),(146,'62',50,'2012-04-24',6,9,18,4,8,6),(147,'38',57,'1999-04-04',6,7,12,4,4,4),(148,'187',46,'1989-02-02',9,9,10,3,7,4),(149,'151',89,'2012-08-12',4,5,3,4,6,10),(150,'185',56,'2000-03-06',7,9,17,3,5,7),(151,'25',41,'1996-02-17',7,6,18,3,4,9),(152,'247',70,'1994-07-29',4,3,16,5,2,5),(153,'224',22,'2001-02-08',1,7,15,7,9,1),(154,'240',31,'1999-03-04',5,3,3,4,8,7),(155,'132',82,'1998-02-04',1,2,10,6,4,10),(156,'68',75,'1970-09-26',5,9,17,6,2,3),(157,'72',39,'1993-09-18',7,9,12,1,9,9),(158,'120',91,'1995-06-27',2,5,9,5,7,6),(159,'97',1,'1996-10-06',8,7,16,3,12,5),(160,'146',31,'1987-06-03',3,9,6,5,10,9),(161,'130',28,'1987-09-03',9,8,12,3,2,9),(162,'177',30,'1989-10-31',7,5,17,5,1,1),(163,'67',93,'1990-10-15',9,7,9,5,1,2),(164,'170',42,'2012-01-28',6,7,19,5,1,6),(165,'228',20,'1977-08-20',5,10,1,3,6,10),(166,'232',75,'1989-05-15',8,9,17,2,4,6),(167,'132',14,'2007-05-28',6,10,12,2,6,7),(168,'55',2,'1984-02-09',8,3,16,4,9,9),(169,'54',56,'1987-12-02',4,5,13,2,2,7),(170,'146',44,'1994-08-11',8,10,11,5,1,6),(171,'131',9,'1974-01-14',10,5,5,4,5,8),(172,'102',56,'2014-05-11',4,4,3,4,10,5),(173,'242',12,'2011-01-16',6,2,20,1,4,5),(174,'103',74,'1980-12-24',1,10,6,2,4,10),(175,'3',9,'1998-07-21',5,2,17,5,5,10),(176,'73',30,'1976-11-26',4,3,16,4,11,9),(177,'39',6,'1996-07-16',7,9,20,1,8,4),(178,'47',81,'2016-07-04',6,10,4,4,5,1),(179,'115',91,'2001-12-25',7,3,10,7,12,8),(180,'78',43,'1988-11-19',4,9,14,7,9,10),(181,'131',100,'2010-04-01',1,6,16,6,8,2),(182,'42',78,'1992-12-11',6,1,19,7,4,9),(183,'105',73,'2010-12-11',4,6,7,6,10,10),(184,'112',12,'2000-11-13',2,8,13,1,7,10),(185,'48',14,'2017-09-12',10,10,10,3,2,5),(186,'138',12,'1981-08-29',6,7,11,1,2,3),(187,'88',10,'1973-05-22',6,8,3,7,11,8),(188,'124',9,'1978-08-27',7,5,14,5,12,10),(189,'210',46,'2021-02-09',4,6,15,2,3,6),(190,'85',24,'1978-08-06',4,7,7,1,5,10),(191,'109',7,'2012-01-11',7,3,10,3,6,6),(192,'1',83,'1989-08-06',9,4,12,1,12,7),(193,'25',34,'1981-09-20',7,3,1,6,4,10),(194,'202',51,'2017-07-24',8,6,9,5,2,4),(195,'64',57,'1995-01-02',1,3,13,1,11,9),(196,'100',63,'1988-05-26',8,3,2,2,9,5),(197,'187',9,'2018-06-14',5,9,17,7,6,3),(198,'171',54,'2010-03-24',3,2,7,6,8,3),(199,'84',52,'2015-02-04',6,1,20,2,4,4),(200,'243',22,'1984-03-17',3,1,17,6,10,10);
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streets`
--

DROP TABLE IF EXISTS `streets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'street name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='streets of the city';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streets`
--

LOCK TABLES `streets` WRITE;
/*!40000 ALTER TABLE `streets` DISABLE KEYS */;
INSERT INTO `streets` VALUES (26,'Aaliyah Estates'),(34,'Adaline Springs'),(51,'Agnes Curve'),(36,'Alyson Springs'),(100,'Amara Well'),(47,'Amy Glen'),(65,'Angelita Wall'),(31,'Ashtyn Hills'),(61,'Bartoletti Mills'),(33,'Ben Ford'),(5,'Boris Trail'),(78,'Botsford Burgs'),(87,'Braden Plaza'),(89,'Brice Knoll'),(16,'Cary Course'),(21,'Cassidy Circles'),(71,'Conroy Glen'),(80,'Cruz Wells'),(76,'Deckow Crossing'),(86,'Dock Bypass'),(15,'Don Extensions'),(68,'Duane Turnpike'),(56,'Eloisa Valleys'),(84,'Elva Port'),(14,'Emmitt Curve'),(41,'Ewald Stravenue'),(91,'Fiona Gardens'),(58,'Flatley Drive'),(74,'Fritsch Track'),(59,'Genevieve Pass'),(53,'Gideon Roads'),(4,'Gracie Hollow'),(28,'Grant Junction'),(20,'Griffin Drive'),(38,'Harber Corner'),(6,'Harold Valley'),(83,'Harvey Crescent'),(3,'Herbert Road'),(24,'Hermann Shoals'),(11,'Hoeger Ford'),(23,'Hudson Garden'),(37,'Hyatt Trafficway'),(29,'Isabel Circle'),(88,'Ivah Fall'),(94,'Jaskolski Inlet'),(63,'Jennyfer Motorway'),(1,'Johnston Isle'),(64,'Kassandra Club'),(52,'Kessler Flat'),(85,'Kody Field'),(70,'Koepp Port'),(32,'Koss Extension'),(17,'Krajcik Dale'),(35,'Kuhic Turnpike'),(69,'Lebsack Common'),(7,'Lehner Turnpike'),(48,'Lubowitz Station'),(42,'Macejkovic Plains'),(97,'Mandy Wall'),(44,'Marjorie Ranch'),(92,'Marlene Station'),(99,'Matt Circle'),(2,'Mayert Walk'),(8,'Moore Mission'),(98,'Mozelle Roads'),(40,'Nader Plaza'),(27,'Osinski Underpass'),(49,'Parker Alley'),(93,'Parker Lodge'),(81,'Patrick Ridge'),(79,'Pierce Mission'),(50,'Roberts Parkway'),(30,'Rolfson Road'),(18,'Romaguera Plains'),(25,'Rowe Pass'),(72,'Sabina Garden'),(10,'Schamberger Plains'),(75,'Schmitt Brooks'),(77,'Shields Field'),(66,'Simonis Stream'),(96,'Stamm Plaza'),(60,'Stehr Lane'),(39,'Stiedemann Shoals'),(12,'Streich Grove'),(13,'Streich Road'),(19,'Tavares Mall'),(9,'Terrill Hills'),(90,'Tessie Street'),(46,'Thompson Forges'),(45,'Tommie Knoll'),(54,'Towne Plain'),(22,'Turner Estate'),(82,'Valerie Plain'),(73,'Vaughn Mews'),(67,'Velma Union'),(57,'Vida Turnpike'),(62,'Wisozk Shore'),(55,'Witting Extension'),(95,'Wuckert Loaf'),(43,'Zieme Inlet');
/*!40000 ALTER TABLE `streets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `substation_statuses`
--

DROP TABLE IF EXISTS `substation_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `substation_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'in work' COMMENT 'substation status name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `substation_statuses`
--

LOCK TABLES `substation_statuses` WRITE;
/*!40000 ALTER TABLE `substation_statuses` DISABLE KEYS */;
INSERT INTO `substation_statuses` VALUES (4,'aut'),(1,'consequuntur'),(3,'non'),(2,'sapiente');
/*!40000 ALTER TABLE `substation_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_substation`
--

DROP TABLE IF EXISTS `water_substation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water_substation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id of water substation',
  `status_id` bigint(20) unsigned NOT NULL,
  `street_id` bigint(20) unsigned NOT NULL COMMENT 'street id',
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'substation house number',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_idx` (`street_id`,`house_number`),
  KEY `status_idx` (`status_id`),
  KEY `website_idx` (`website`),
  CONSTRAINT `fk_water_substation_status_id` FOREIGN KEY (`status_id`) REFERENCES `substation_statuses` (`id`),
  CONSTRAINT `fk_water_substation_street_id` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='water substations data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_substation`
--

LOCK TABLES `water_substation` WRITE;
/*!40000 ALTER TABLE `water_substation` DISABLE KEYS */;
INSERT INTO `water_substation` VALUES (1,1,55,'17','http://pfannerstillmante.com/'),(2,2,20,'75','http://reichelgoodwin.com/'),(3,2,76,'30','http://www.jaskolski.com/'),(4,1,95,'22','http://bins.com/'),(5,2,60,'22','http://www.stehr.com/'),(6,4,15,'15','http://www.adams.com/'),(7,1,42,'11','http://www.doyle.net/');
/*!40000 ALTER TABLE `water_substation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 20:52:52
