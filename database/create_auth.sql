--
-- Table structure for table `auth`
--

use vpn_connections;

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(100) NOT NULL,
  `port` varchar(6) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
