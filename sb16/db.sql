/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gatunki_id` int(11) NOT NULL,
  `rezyserzy_id` int(11) NOT NULL,
  `tytul` text NOT NULL,
  `rok` year(4) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gatunki_id` (`gatunki_id`),
  KEY `rezyserzy_id` (`rezyserzy_id`),
  CONSTRAINT `filmy_ibfk_1` FOREIGN KEY (`gatunki_id`) REFERENCES `gatunki` (`id`),
  CONSTRAINT `filmy_ibfk_2` FOREIGN KEY (`rezyserzy_id`) REFERENCES `rezyserzy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `filmy` VALUES (1,1,1,'Kenon zawodowiec',2001,1),(2,2,1,'Blackhat Master of Excel',2001,1),(3,3,1,'Mr. Agust comming black!!!',2001,1),(4,4,1,'Shooting routers feat. August (Metal)',2001,1),(5,5,1,'DANCE \'TILL YOU PASS CISCO Feat. Mr. Agust',2001,1);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatunki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `gatunki` VALUES (1,'Sci-Fi'),(2,'animacja'),(3,'komedia'),(4,'horror'),(5,'dramat');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rezyserzy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `rezyserzy` VALUES (1,'Eugeniusz','Megatron'),(2,'Euzebiusz','Koczkodan');
