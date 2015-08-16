--
-- Table structure for table `connections`
--

use vpn_connections;

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `file_path` varchar(150) DEFAULT NULL,
  `current` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES (1,'AU Melbourne','AU','/ovpn/ovpn_conf/AU Melbourne.ovpn','F'),(2,'AU Sydney','AU','/ovpn/ovpn_conf/AU Sydney.ovpn','F'),(3,'Brazil','BR','/ovpn/ovpn_conf/Brazil.ovpn','F'),(4,'CA North York','CA','/ovpn/ovpn_conf/CA North York.ovpn','F'),(5,'CA Toronto','CA','/ovpn/ovpn_conf/CA Toronto.ovpn','F'),(6,'France','FR','/ovpn/ovpn_conf/France.ovpn','F'),(7,'Germany','DE','/ovpn/ovpn_conf/Germany.ovpn','F'),(8,'Hong Kong','HK','/ovpn/ovpn_conf/Hong Kong.ovpn','F'),(9,'Israel','IL','/ovpn/ovpn_conf/Israel.ovpn','F'),(10,'Japan','JP','/ovpn/ovpn_conf/Japan.ovpn','F'),(11,'Mexico','MX','/ovpn/ovpn_conf/Mexico.ovpn','F'),(12,'Netherlands','NL','/ovpn/ovpn_conf/Netherlands.ovpn','F'),(13,'Romania','RO','/ovpn/ovpn_conf/Romania.ovpn','F'),(14,'Russia','RU','/ovpn/ovpn_conf/Russia.ovpn','F'),(15,'Singapore','SG','/ovpn/ovpn_conf/Singapore.ovpn','F'),(16,'Sweden','SE','/ovpn/ovpn_conf/Sweden.ovpn','F'),(17,'Switzerland','CH','/ovpn/ovpn_conf/Switzerland.ovpn','F'),(18,'Turkey','TR','/ovpn/ovpn_conf/Turkey.ovpn','F'),(19,'UK London','UK','/ovpn/ovpn_conf/UK London.ovpn','F'),(20,'UK Southampton','UK','/ovpn/ovpn_conf/UK Southampton.ovpn','F'),(21,'US California','US','/ovpn/ovpn_conf/US California.ovpn','F'),(22,'US East','US','/ovpn/ovpn_conf/US East.ovpn','T'),(23,'US Florida','US','/ovpn/ovpn_conf/US Florida.ovpn','F'),(24,'US New York City','US','/ovpn/ovpn_conf/US New York City.ovpn','F'),(25,'US Midwest','US','/ovpn/ovpn_conf/US Midwest.ovpn','F'),(26,'US Seattle','US','/ovpn/ovpn_conf/US Seattle.ovpn','F'),(27,'US Silicon Valley','US','/ovpn/ovpn_conf/US Silicon Valley.ovpn','F'),(28,'US Texas','US','/ovpn/ovpn_conf/US Texas.ovpn','F'),(29,'US West','US','/ovpn/ovpn_conf/US West.ovpn','F');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;
