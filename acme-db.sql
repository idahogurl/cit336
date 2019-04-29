-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: acme
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='Category classifications of inventory items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Cannon'),(2,'Explosive'),(3,'Misc'),(4,'Rocket'),(5,'Trap'),(9,'Anvils');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `clientId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientFirstname` varchar(15) NOT NULL,
  `clientLastname` varchar(25) NOT NULL,
  `clientEmail` varchar(40) NOT NULL,
  `clientPassword` varchar(255) NOT NULL,
  `clientLevel` enum('1','2','3') NOT NULL DEFAULT '1',
  PRIMARY KEY (`clientId`),
  UNIQUE KEY `clientEmail` (`clientEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Sister','Vest','vestre@byui.edu','$2y$10$DG4wo7TFlA6xq61YqDaAieWRjCiakCImM50whBWuVAErQxO53UcQq','3');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `imgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invId` int(10) unsigned NOT NULL,
  `imgName` varchar(100) NOT NULL,
  `imgPath` varchar(150) NOT NULL,
  `imgDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`imgId`),
  KEY `FK_inv_image` (`invId`),
  CONSTRAINT `FK_inv_image` FOREIGN KEY (`invId`) REFERENCES `inventory` (`invId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (7,1,'rocket.png','/acme/images/products/rocket.png','2018-12-02 05:18:55'),(8,1,'rocket-tn.png','/acme/images/products/rocket-tn.png','2018-12-02 05:18:55'),(9,8,'anvil.png','/acme/images/products/anvil.png','2018-12-02 05:19:10'),(10,8,'anvil-tn.png','/acme/images/products/anvil-tn.png','2018-12-02 05:19:10'),(11,20,'no-image.png','/acme/images/products/no-image.png','2018-12-02 05:20:01'),(12,20,'no-image-tn.png','/acme/images/products/no-image-tn.png','2018-12-02 05:20:01'),(13,3,'catapult.png','/acme/images/products/catapult.png','2018-12-02 05:20:16'),(14,3,'catapult-tn.png','/acme/images/products/catapult-tn.png','2018-12-02 05:20:16'),(15,14,'helmet.png','/acme/images/products/helmet.png','2018-12-02 05:20:36'),(16,14,'helmet-tn.png','/acme/images/products/helmet-tn.png','2018-12-02 05:20:36'),(17,4,'roadrunner.jpg','/acme/images/products/roadrunner.jpg','2018-12-02 05:20:57'),(18,4,'roadrunner-tn.jpg','/acme/images/products/roadrunner-tn.jpg','2018-12-02 05:20:57'),(19,5,'trap.jpg','/acme/images/products/trap.jpg','2018-12-02 05:21:23'),(20,5,'trap-tn.jpg','/acme/images/products/trap-tn.jpg','2018-12-02 05:21:23'),(21,13,'piano.jpg','/acme/images/products/piano.jpg','2018-12-02 05:21:39'),(22,13,'piano-tn.jpg','/acme/images/products/piano-tn.jpg','2018-12-02 05:21:39'),(23,6,'hole.png','/acme/images/products/hole.png','2018-12-02 05:21:53'),(24,6,'hole-tn.png','/acme/images/products/hole-tn.png','2018-12-02 05:21:53'),(25,10,'mallet.png','/acme/images/products/mallet.png','2018-12-02 05:22:41'),(26,10,'mallet-tn.png','/acme/images/products/mallet-tn.png','2018-12-02 05:22:41'),(27,9,'rubberband.jpg','/acme/images/products/rubberband.jpg','2018-12-02 05:22:57'),(28,9,'rubberband-tn.jpg','/acme/images/products/rubberband-tn.jpg','2018-12-02 05:22:57'),(29,2,'mortar.jpg','/acme/images/products/mortar.jpg','2018-12-02 05:23:08'),(30,2,'mortar-tn.jpg','/acme/images/products/mortar-tn.jpg','2018-12-02 05:23:08'),(31,15,'rope.jpg','/acme/images/products/rope.jpg','2018-12-02 05:23:18'),(32,15,'rope-tn.jpg','/acme/images/products/rope-tn.jpg','2018-12-02 05:23:18'),(33,12,'seed.jpg','/acme/images/products/seed.jpg','2018-12-02 05:23:31'),(34,12,'seed-tn.jpg','/acme/images/products/seed-tn.jpg','2018-12-02 05:23:31'),(35,16,'bomb.png','/acme/images/products/bomb.png','2018-12-02 05:23:41'),(36,16,'bomb-tn.png','/acme/images/products/bomb-tn.png','2018-12-02 05:23:41'),(37,11,'tnt.png','/acme/images/products/tnt.png','2018-12-02 05:23:55'),(38,11,'tnt-tn.png','/acme/images/products/tnt-tn.png','2018-12-02 05:23:55'),(39,8,'fence.png','/acme/images/products/fence.png','2018-12-02 06:24:52'),(40,8,'fence-tn.png','/acme/images/products/fence-tn.png','2018-12-02 06:24:52');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `invId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invName` varchar(50) NOT NULL DEFAULT '',
  `invDescription` text NOT NULL,
  `invImage` varchar(50) NOT NULL DEFAULT '',
  `invThumbnail` varchar(50) NOT NULL DEFAULT '',
  `invPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `invStock` smallint(6) NOT NULL DEFAULT '0',
  `invSize` smallint(6) NOT NULL DEFAULT '0',
  `invWeight` smallint(6) NOT NULL DEFAULT '0',
  `invLocation` varchar(35) NOT NULL DEFAULT '',
  `categoryId` int(10) unsigned NOT NULL,
  `invVendor` varchar(20) NOT NULL DEFAULT '',
  `invStyle` varchar(20) NOT NULL DEFAULT '',
  `invFeatured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`invId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `FK_inv_categories` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='Acme Inc. Inventory Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Acme Rocket','The Acme Rocket meets multiple purposes. This can be launched independently to deliver a payload or strapped on to help get you to where you want to be FAST!!! Really Fast! Launch stand is included.','/acme/images/products/rocket.png','/acme/images/products/rocket-tn.png',132000.00,5,60,90,'Albuquerque, New Mexico',4,'Goddard','metal',NULL),(2,'Mortar','Our Mortar is very powerful. This cannon can launch a projectile or bomb 3 miles. Made of solid steel and mounted on cement or metal stands [not included].','/acme/images/products/mortar.jpg','/acme/images/products/mortar-tn.jpg',1500.00,26,250,750,'San Jose',1,'Smith & Wesson','Metal',NULL),(3,'Catapult','Our best wooden catapult. Ideal for hurling objects for up to 1000 yards. Payloads of up to 300 lbs.','/acme/images/products/catapult.png','/acme/images/products/catapult-tn.png',2500.00,4,1569,400,'Cedar Point, IO',1,'Wooden Creations','Wood',NULL),(4,'Female RoadRuner Cutout','This carbon fiber backed cutout of a female roadrunner is sure to catch the eye of any male roadrunner.','/acme/images/products/roadrunner.jpg','/acme/images/products/roadrunner-tn.jpg',20.00,500,27,2,'San Jose',5,'Picture Perfect','Carbon Fiber',NULL),(5,'Giant Mouse Trap','Our big mouse trap. This trap is multifunctional. It can be used to catch dogs, mountain lions, road runners or even muskrats. Must be staked for larger varmints [stakes not included] and baited with approptiate bait [sold seperately].\r\n','/acme/images/products/trap.jpg','/acme/images/products/trap-tn.jpg',20.00,34,470,28,'Cedar Point, IO',5,'Rodent Control','Wood',NULL),(6,'Instant Hole','Instant hole - Wonderful for creating the appearance of openings.','/acme/images/products/hole.png','/acme/images/products/hole-tn.png',25.00,269,24,2,'San Jose',3,'Hidden Valley','Ether',NULL),(7,'Koenigsegg CCX Car','This high performance car is sure to get you where you are going fast. It holds the production car land speed record at an amazing 250mph.','/acme/images/products/no-image.png','/acme/images/products/no-image.png',99999999.99,1,25000,3000,'Stockholm, Sweden',3,'Koenigsegg','Metal',NULL),(8,'Anvil','50 lb. Anvil - perfect for any task requireing lots of weight. Made of solid, tempered steel.','/acme/images/products/anvil.png','/acme/images/products/anvil-tn.png',150.00,15,80,50,'San Jose',5,'Steel Made','Metal',1),(9,'Monster Rubber Band','These are not tiny rubber bands. These are MONSTERS! These bands can stop a train locamotive or be used as a slingshot for cows. Only the best materials are used!','/acme/images/products/rubberband.jpg','/acme/images/products/rubberband-tn.jpg',4.00,4589,75,1,'Cedar Point, IO',3,'Rubbermaid','Rubber',NULL),(10,'Mallet','Ten pound mallet for bonking roadrunners on the head. Can also be used for bunny rabbits.','/acme/images/products/mallet.png','/acme/images/products/mallet-tn.png',25.00,100,36,10,'Cedar Point, IA',3,'Wooden Creations','Wood',NULL),(11,'TNT','The biggest bang for your buck with our nitro-based TNT. Price is per stick.','/acme/images/products/tnt.png','/acme/images/products/tnt-tn.png',10.00,1000,25,2,'San Jose',2,'Nobel Enterprises','Plastic',NULL),(12,'Roadrunner Custom Bird Seed Mix','Our best varmint seed mix - varmints on two or four legs cannot resist this mix. Contains meat, nuts, cereals and our own special ingredient. Guaranteed to bring them in. Can be used with our monster trap.','/acme/images/products/seed.jpg','/acme/images/products/seed-tn.jpg',8.00,150,24,3,'San Jose',5,'Acme','Plastic',NULL),(13,'Grand Piano','This upright grand piano is guaranteed to play well and smash anything beneath it if dropped from a height.','/acme/images/products/piano.jpg','/acme/images/products/piano-tn.jpg',3500.00,36,500,1200,'Cedar Point, IA',3,'Wulitzer','Wood',NULL),(14,'Crash Helmet','This carbon fiber and plastic helmet is the ultimate in protection for your head. comes in assorted colors.','/acme/images/products/helmet.png','/acme/images/products/helmet-tn.png',100.00,25,48,9,'San Jose',3,'Suzuki','Carbon Fiber',NULL),(15,'Climbing Rope','This nylon rope is ideal for all uses. Each rope is the highest quality nylon and comes in 100 foot lengths.','/acme/images/products/rope.jpg','/acme/images/products/rope-tn.jpg',15.00,200,200,6,'San Jose',3,'Marina Sales','Nylon',NULL),(16,'Small Bomb','Bomb with a fuse - A little old fashioned, but highly effective. This bomb has the ability to devistate anything within 30 feet.','/acme/images/products/bomb.png','/acme/images/products/bomb-tn.png',275.00,58,30,12,'San Jose',2,'Nobel Enterprises','Metal',NULL),(20,'Big Cannon','It blows things up!','/acme/images/products/no-image.png','/acme/images/products/no-image.png',99.00,90,60,59,'Rexburg',1,'Vender','Nylon',NULL),(21,'Water Cannon','1','/acme/images/products/no-image.png','/acme/images/products/no-image.png',10.00,2,10,1,'1',9,'1','1',NULL),(22,'Water Cannon','1','/acme/images/products/no-image.png','/acme/images/products/no-image.png',10.00,2,10,1,'1',9,'1','1',NULL),(23,'Water Cannon','1','/acme/images/products/no-image.png','/acme/images/products/no-image.png',10.00,2,10,1,'1',9,'1','1',NULL),(24,'Water Cannon','1','/acme/images/products/no-image.png','/acme/images/products/no-image.png',10.00,2,10,1,'1',9,'1','1',NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `reviewId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reviewText` text NOT NULL,
  `invId` int(10) unsigned NOT NULL,
  `clientId` int(10) unsigned NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewId`),
  KEY `invId` (`invId`),
  KEY `clientId` (`clientId`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`invId`) REFERENCES `inventory` (`invId`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`clientId`) REFERENCES `clients` (`clientId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'acme'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 23:48:05
