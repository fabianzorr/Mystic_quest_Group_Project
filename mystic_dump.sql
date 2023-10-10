-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mystic_schema
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `AttributeID` int NOT NULL,
  `Strength` int DEFAULT NULL,
  `Intelligence` int DEFAULT NULL,
  `Agility` int DEFAULT NULL,
  `MoveSpeed` int DEFAULT NULL,
  `AttackSpeed` int DEFAULT NULL,
  `CurrentHP` int DEFAULT NULL,
  `MaximumHP` int DEFAULT NULL,
  `CurrentMP` int DEFAULT NULL,
  `MaximumMP` int DEFAULT NULL,
  PRIMARY KEY (`AttributeID`),
  CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`AttributeID`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `guild` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `Kingdom` int DEFAULT NULL,
  `gold` int DEFAULT '0',
  `xp` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`),
  KEY `Kingdom` (`Kingdom`),
  CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`PlayerID`),
  CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`Kingdom`) REFERENCES `kingdom` (`KingdomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Aerith','Windrunner','Elf','Mage','Mystic Shadows','2023-10-10 14:00:00',51,10,1,1200,8500),(2,'Shaelis','Flamestrike','Human','Healer','Emerald Enchanters','2021-04-24 13:08:52',1,7,6,1246,1025),(3,'Oberion','Bloodfang','Human','Summoner','Council of Elders','2021-12-24 19:40:31',2,45,5,5337,1394),(4,'Baelor','Ironheart','Dwarf','Warrior','Iron Defenders','2023-10-10 15:00:00',52,15,2,3000,4000),(5,'Oberion','Starflame','Undead','Healer','Hands of Fate','2021-11-01 03:11:10',3,1,1,172,7256),(6,'Caelum','Stormbringer','Human','Healer','Heavenly Lights','2023-10-10 16:00:00',53,20,3,4500,7500),(7,'Lunarion','Stormstrike','Human','Archer','Artisans of Alchemy','2022-09-24 07:39:25',4,20,1,3250,5317),(8,'Daenerys','Flameborn','Elf','Summoner','Fire Keepers','2023-10-10 17:00:00',54,25,4,2000,6500),(9,'Eldor','Lightweaver','Human','Mage','Luminous Order','2023-10-10 18:00:00',55,30,1,3500,7000),(10,'Veylan','Ironsong','Naga','Warrior','Elemental Lords','2021-05-18 19:26:42',5,48,2,200,5719),(11,'Faelar','Leafwhisper','Elf','Archer','Forest Guardians','2023-10-10 19:00:00',56,35,2,5000,3000),(12,'Gael','Darkblade','Human','Rogue','Shadow Walkers','2023-10-10 20:00:00',57,40,3,6000,2000),(13,'Elidora','Bloodfang','Orc','Warrior','Frostbite Clan','2021-05-29 05:40:57',6,29,5,4555,800),(16,'Nymriel','Brightdawn','Dwarf','Healer','Ocean\'s Children','2023-07-24 01:11:52',7,1,3,735,3732),(19,'Raelan','Ironthorn','Undead','Mage','Thieves of Time','2021-10-02 20:08:14',8,19,5,2988,3706),(22,'Nymriel','Firemantle','Orc','Mage','Elemental Lords','2022-02-15 17:34:01',9,39,1,2154,6832),(25,'Laelor','Silverbow','Elf','Mage','Archmage Assembly','2021-05-11 13:22:32',10,40,3,2033,6448),(28,'Goromir','Silvermoon','Orc','Rogue','Storm Riders','2023-07-25 14:53:56',11,30,1,1244,1028),(31,'Seraphix','Thunderhoof','Undead','Archer','Dusk to Dawn','2022-02-18 04:33:58',12,31,5,5352,1513),(33,'Thera','Silvermoon','Undead','Healer','Merchant Princes','2023-05-30 03:42:50',13,16,4,484,9497),(36,'Isolde','Stormbringer','Human','Mage','Dragon Slayers','2023-05-23 22:36:20',14,34,3,3036,6813),(38,'Thaelen','Swiftblade','Human','Mage','Archmage Assembly','2022-06-13 20:48:09',15,23,3,5330,3976),(39,'Thaldor','Soulforge','Human','Archer','Heroes of Harmony','2023-08-23 08:30:59',16,11,6,1940,4237),(40,'Gilean','Grimspine','Orc','Archer','Dragon Slayers','2021-05-04 02:19:55',17,35,2,891,4718),(42,'Orifel','Silverbow','Human','Warrior','Dragon Slayers','2022-07-27 02:24:42',18,40,2,5480,1507),(44,'Tyrndar','Windstrider','Undead','Rogue','The Righteous','2021-10-29 16:29:56',19,47,6,84,6183),(47,'Solandria','Shadowheart','Orc','Healer','Guardians of Light','2023-07-05 00:42:50',20,14,6,295,3910),(48,'Loralei','Doomhammer','Naga','Healer','Storm Riders','2023-08-27 05:22:20',21,27,4,4845,8643),(50,'Zyralor','Stoneforge','Human','Rogue','Ocean\'s Children','2022-07-16 06:55:56',22,45,1,5395,9028),(51,'Vyktor','Earthward','Human','Warrior','Mind Over Matter','2023-06-17 09:45:06',23,42,4,4898,3731),(52,'Selendis','Doomhammer','Elf','Rogue','Nature\'s Whisper','2023-03-31 09:55:23',24,27,3,2499,9638),(53,'Quorlinn','Runesong','Undead','Summoner','Elixir Masters','2023-01-28 02:59:29',25,6,6,3414,9537),(55,'Keldra','Whitewolf','Elf','Healer','Sun Warriors','2023-02-20 03:05:39',26,50,2,368,4461),(56,'Keldra','Silverbow','Dwarf','Warrior','Desert Nomads','2022-09-10 18:06:34',27,31,1,276,8924),(58,'Morwyn','Thunderhoof','Human','Summoner','Elixir Masters','2022-10-17 13:34:54',28,2,5,1940,9397),(60,'Oromis','Deeproot','Naga','Healer','Storm Riders','2023-04-27 06:33:12',29,20,4,4370,8225),(63,'Loralei','Ironbane','Elf','Warrior','Ocean\'s Children','2021-07-28 08:47:43',30,43,5,5564,1691),(66,'Zyralor','Silvershadow','Orc','Mage','Desert Nomads','2021-06-04 18:30:12',31,4,6,384,8125),(69,'Elira','Sunshield','Dwarf','Healer','Moonlit Mystics','2021-04-23 19:44:32',32,42,1,5223,9148),(72,'Solandria','Wildfire','Elf','Archer','Elemental Lords','2021-05-31 03:32:40',33,45,4,5775,676),(74,'Xyphera','Bearclaw','Human','Archer','Heart of Courage','2023-05-28 05:48:00',34,1,1,2707,532),(75,'Solandria','Swiftblade','Naga','Warrior','Crypt Crawlers','2023-02-12 15:06:27',35,18,4,5475,4021),(78,'Endora','Windwhisper','Orc','Healer','Knights of Valor','2021-11-17 21:25:05',36,37,6,1641,1609),(81,'Caelthor','Darkveil','Dwarf','Archer','Ocean\'s Children','2022-10-17 21:22:14',37,32,5,5908,4396),(82,'Saphyra','Sunshield','Elf','Rogue','The Silent Footsteps','2023-09-05 23:16:55',38,47,4,1467,9039),(85,'Xyralis','Doomhammer','Undead','Archer','Ocean\'s Children','2021-05-28 02:20:00',39,38,6,4713,2160),(87,'Raelis','Glowspark','Orc','Healer','Seekers of Truth','2022-12-17 05:05:15',40,50,6,4343,9706),(89,'Ashara','Ashenveil','Orc','Summoner','Ocean\'s Children','2022-09-16 18:26:58',41,34,1,4089,4961),(90,'Aeriana','Silverbow','Human','Mage','Heroes of Harmony','2021-07-12 04:15:29',42,21,2,2614,6901),(93,'Oromis','Frostclaw','Undead','Rogue','Abyss Watchers','2022-02-15 08:41:24',43,1,2,862,6479),(95,'Elira','Wolfsong','Dwarf','Healer','Frostbite Clan','2022-08-09 20:17:21',44,44,5,4850,979),(98,'Belthorn','Dreadbane','Orc','Mage','Archmage Assembly','2023-08-20 06:14:23',45,13,4,388,297),(101,'Oromis','Soulforge','Undead','Mage','Prophets of Doom','2022-06-10 22:51:08',46,35,5,5729,6848),(103,'Lunarion','Brightdawn','Human','Warrior','Desert Nomads','2022-08-24 06:39:45',47,34,5,3357,7433),(106,'Zephyrix','Skullcrusher','Undead','Healer','Hands of Fate','2023-04-09 15:06:04',48,14,5,226,9590),(107,'Nymriel','Leafwhisper','Naga','Archer','Prophets of Doom','2022-01-13 12:13:15',49,17,4,4090,5309),(109,'Xyralis','Stonewall','Elf','Summoner','Wizards of the Coast','2022-01-21 17:02:24',50,43,5,3658,4559),(110,'Orifel','Wildfire','Naga','Summoner','Frostbite Clan','2021-09-07 20:59:55',51,15,2,2703,8848),(113,'Thorgal','Darkfall','Naga','Rogue','Merchant Princes','2021-11-28 03:07:46',52,45,3,433,7068),(116,'Belthorn','Earthshaker','Human','Mage','Storm Riders','2022-06-06 14:32:24',53,29,3,1902,4653),(119,'Laelor','Windwhisper','Orc','Warrior','The Righteous','2023-03-23 00:46:22',54,11,1,2250,4796),(122,'Jadefang','Whitewolf','Dwarf','Archer','Emerald Enchanters','2023-06-13 11:47:18',55,16,6,1637,9254),(123,'Orik','Ashmantle','Elf','Healer','Moonlit Mystics','2022-01-07 14:02:14',56,45,4,4850,2651),(124,'Raelan','Sunspire','Dwarf','Mage','Frostbite Clan','2022-09-04 13:07:21',57,29,5,5405,7089),(127,'Ashara','Shadowheart','Elf','Healer','Knights of Valor','2023-01-02 03:07:29',58,9,4,5051,826),(130,'Morwyn','Stormblade','Human','Healer','Heroes of Harmony','2021-08-25 08:56:21',59,5,2,5325,1895),(131,'Elanor','Cragjaw','Dwarf','Warrior','Artisans of Alchemy','2021-10-01 07:31:57',60,50,6,1712,8580),(133,'Gilean','Earthshaker','Elf','Rogue','Crypt Crawlers','2021-11-21 00:28:21',61,36,4,2603,5952),(135,'Shaelis','Firetalon','Undead','Summoner','Heavenly Healers','2021-10-19 20:43:37',62,26,1,4047,5868),(137,'Toraell','Wolfsong','Human','Healer','Desert Nomads','2022-12-15 10:31:23',63,23,4,5463,7919),(138,'Oromis','Ragefang','Elf','Rogue','Elixir Masters','2023-04-12 05:23:06',64,38,4,1369,7656),(140,'Elidora','Iceshard','Dwarf','Mage','Wisdom Weavers','2022-02-18 03:03:19',65,21,6,859,4193),(142,'Quorlinn','Doomhammer','Dwarf','Rogue','Circle of Druids','2022-08-03 07:37:36',66,40,3,4001,763),(145,'Solandria','Stoneforge','Human','Archer','Crypt Crawlers','2022-08-27 13:37:08',67,35,2,2287,6766),(148,'Orik','Bloodfang','Elf','Warrior','Dusk to Dawn','2022-07-04 21:12:06',68,5,1,1437,1683),(149,'Drakan','Goldenleaf','Naga','Warrior','Shadow Society','2023-04-25 16:05:11',69,19,3,735,1083),(150,'Zandalar','Cragjaw','Dwarf','Mage','Mercenaries of Fortune','2021-02-15 14:35:12',70,31,6,1042,5435),(152,'Zephyrix','Frostbane','Undead','Summoner','Guardians of Light','2023-09-01 05:55:24',13,47,3,1177,3509),(154,'Serafelle','Runesong','Orc','Mage','Hands of Fate','2023-04-18 05:59:51',50,42,3,995,7764),(155,'Aryndis','Dragonfang','Elf','Archer','Prophets of Doom','2022-09-01 23:14:40',67,18,4,2306,5927),(156,'Gilean','Windstrider','Naga','Healer','Wizards of the Coast','2021-04-22 14:17:57',47,13,3,4862,2730),(157,'Zaela','Brightdawn','Elf','Archer','Guardians of Light','2022-08-26 03:38:22',33,10,5,5608,8542),(158,'Xirelle','Fellseeker','Human','Archer','Artisans of Alchemy','2022-09-11 04:31:03',25,9,3,2800,7708),(161,'Keldra','Windstrider','Elf','Summoner','Heroes of Harmony','2022-11-11 12:31:22',25,17,4,2725,9585),(164,'Valyndra','Shadowheart','Undead','Warrior','Sun Warriors','2021-05-02 04:15:35',50,6,4,2579,2738),(167,'Elira','Thunderhoof','Elf','Summoner','Mercenaries of Fortune','2023-03-05 07:04:46',34,27,6,476,5756),(170,'Zephyra','Steelstrike','Undead','Warrior','Hands of Fate','2023-06-10 11:15:52',20,18,3,3840,4728),(172,'Raelthorn','Dawnstrike','Elf','Rogue','Elixir Masters','2023-04-17 08:50:07',69,7,3,2664,8021),(173,'Raelan','Snowfall','Orc','Warrior','The Forsaken','2023-07-17 05:18:22',3,30,3,4068,9838),(175,'Lythra','Runesong','Human','Healer','The Forsaken','2021-07-13 20:45:55',16,31,1,5310,4735),(176,'Zandalar','Silvermoon','Dwarf','Summoner','Archmage Assembly','2021-06-05 14:41:22',1,12,3,4275,1418),(179,'Elandria','Mistmantle','Elf','Healer','Shadow Society','2021-09-12 22:52:54',27,17,2,3431,4332),(182,'Valdrick','Leafwhisper','Undead','Healer','Archmage Assembly','2022-07-08 10:50:20',61,50,3,2706,9556),(184,'Faenar','Starflame','Undead','Mage','Heart of Courage','2022-09-22 12:19:13',15,47,6,2548,2563),(187,'Serafelle','Dawnstrike','Naga','Archer','Heralds of Hope','2021-12-26 04:42:21',30,36,4,48,2710),(190,'Veyla','Nightshade','Orc','Warrior','Merchant Princes','2023-08-20 06:52:45',36,39,6,1986,8423),(191,'Valyndra','Dawnstrike','Dwarf','Mage','Seekers of Truth','2021-01-14 19:34:00',17,35,6,1308,5632),(192,'Xyphera','Ironthorn','Dwarf','Warrior','Moonlit Mystics','2021-07-05 04:50:40',49,7,6,971,1200),(193,'Valdrick','Skullcrusher','Naga','Summoner','Council of Elders','2021-06-04 09:49:05',53,29,5,686,2120),(196,'Keldra','Firemantle','Elf','Archer','Sun Warriors','2023-02-13 18:10:24',45,25,5,4300,9475),(199,'Thera','Ashenveil','Undead','Mage','Circle of Druids','2021-01-15 17:01:53',69,38,5,3523,933),(202,'Caelthor','Glowspark','Elf','Warrior','Abyss Watchers','2022-10-23 12:31:42',67,15,3,4231,2460),(204,'Quorlinn','Stoneshield','Dwarf','Healer','Prophets of Doom','2021-01-21 08:41:18',58,8,4,687,8345),(206,'Thorgath','Sunshield','Undead','Warrior','Ocean\'s Children','2022-03-08 21:26:28',19,46,6,4974,6410),(208,'Jadefang','Brightdawn','Naga','Warrior','Prophets of Doom','2023-06-11 22:20:39',62,6,6,4309,6681),(209,'Loralei','Soulforge','Dwarf','Summoner','The Wanderers','2021-12-06 05:15:26',42,41,1,1114,9245),(211,'Solandria','Stormblade','Dwarf','Warrior','Prophets of Doom','2021-03-23 02:45:00',24,34,1,391,5530),(212,'Thorgath','Runesong','Undead','Archer','Hands of Fate','2022-12-17 11:44:58',63,50,4,3415,1867),(213,'Gorgrim','Ironthorn','Naga','Mage','Merchant Princes','2022-03-20 01:59:10',33,47,5,1356,5701),(214,'Veylan','Ironbane','Human','Healer','Abyss Watchers','2021-11-08 01:51:55',45,35,2,1033,1506),(215,'Xyphera','Moonfire','Naga','Healer','The Undying','2023-05-21 01:39:20',55,35,4,1421,7321),(217,'Quorlinn','Silverbow','Elf','Archer','The Undying','2021-02-16 03:35:45',69,16,1,5699,5527),(220,'Oberion','Skyshard','Orc','Archer','Elemental Lords','2023-01-05 08:22:26',42,25,5,5485,9129),(221,'Valdrick','Bearclaw','Naga','Mage','The Wanderers','2022-08-28 19:26:39',1,28,4,4930,3693),(224,'Thorgal','Whitewolf','Human','Summoner','Spirit Guardians','2022-03-06 23:28:28',19,15,3,2292,8020),(225,'Raelis','Iceshard','Undead','Summoner','Seekers of Truth','2021-09-13 18:03:56',22,41,5,5182,9127),(226,'Zephyra','Silvermoon','Undead','Warrior','Starborn Seekers','2021-01-31 13:35:22',52,8,4,5834,1232),(229,'Ulfrik','Oakheart','Undead','Rogue','Crypt Crawlers','2023-02-24 23:18:49',52,15,4,4196,1270),(232,'Aethor','Soulforge','Dwarf','Summoner','Mercenaries of Fortune','2023-06-18 08:55:27',34,1,2,3222,3043),(234,'Zandalar','Bearclaw','Orc','Rogue','Dusk to Dawn','2022-09-27 14:54:11',15,12,4,5462,6386),(235,'Xyra','Stonewall','Orc','Summoner','Moonlit Mystics','2021-06-13 22:29:37',41,6,5,2773,3951),(237,'Aeriana','Earthshaker','Human','Archer','Heroes of Harmony','2021-09-29 09:56:53',19,41,2,3534,7599),(238,'Zephyrix','Moonfire','Naga','Archer','Dragon Slayers','2023-08-16 08:24:31',40,37,5,192,8812),(239,'Aeriana','Silvershadow','Elf','Rogue','The Forsaken','2021-10-30 03:36:10',6,12,2,1855,9026),(241,'Qelthar','Starflame','Naga','Warrior','Elemental Lords','2021-04-06 06:15:18',49,47,2,3511,2180),(243,'Lunarion','Mistmantle','Elf','Warrior','Mind Over Matter','2022-04-28 03:51:05',14,50,1,2009,199),(246,'Caelthor','Deeproot','Dwarf','Mage','The Undying','2023-08-21 03:38:53',66,10,3,571,4165),(247,'Belthorn','Frostbane','Human','Rogue','Wisdom Weavers','2021-08-25 17:14:16',5,47,2,4780,7339),(249,'Valthor','Snowfall','Elf','Summoner','The Silent Footsteps','2023-05-11 11:29:06',39,7,5,1675,1943),(252,'Lythra','Deeproot','Undead','Archer','The Silent Footsteps','2021-04-02 14:17:49',37,44,1,805,884),(255,'Isolde','Windwhisper','Dwarf','Archer','The Silent Footsteps','2022-10-21 07:52:09',68,48,3,235,9310),(258,'Saphyra','Ironsong','Dwarf','Summoner','Heart of Courage','2022-08-16 06:41:26',17,8,3,3222,8919),(261,'Xaradra','Shadowheart','Elf','Warrior','Gold Brokers','2021-05-22 15:02:40',20,46,5,5093,5678),(263,'Elidora','Darkfall','Elf','Summoner','Storm Riders','2022-08-22 11:49:16',50,5,6,1757,7609),(264,'Ulfrik','Sunshield','Elf','Healer','Starborn Seekers','2022-03-17 05:07:38',48,38,1,5555,3460),(265,'Xirelle','Dawnstrike','Dwarf','Mage','Seekers of Truth','2023-01-03 21:57:44',22,25,5,5719,7272),(268,'Drakan','Thundersong','Elf','Archer','Prophets of Doom','2022-09-24 22:06:54',34,8,2,4661,7023),(270,'Elidora','Seaspray','Dwarf','Archer','Desert Nomads','2023-02-21 00:48:54',34,14,2,1087,7993),(272,'Lythra','Earthward','Dwarf','Mage','Storm Riders','2023-04-04 04:31:38',69,47,5,2717,8662),(275,'Daelis','Frostclaw','Undead','Archer','Circle of Druids','2022-04-17 04:46:03',33,42,5,5834,2630),(277,'Aeriana','Stoneshield','Orc','Mage','The Wanderers','2022-05-08 19:18:37',27,19,3,2388,2012),(279,'Veyla','Ironsong','Orc','Summoner','Elemental Lords','2021-05-08 22:47:34',35,20,6,4872,4563),(281,'Thaelis','Glowspark','Elf','Archer','Hands of Fate','2022-01-08 19:17:05',23,41,2,5074,8590),(991,'Brutus','Brutalus','Brutalus','Warrior','NPCG','2023-01-20 23:00:00',11,43,3,4549,2139);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combats`
--

DROP TABLE IF EXISTS `combats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combats` (
  `CombatID` int NOT NULL,
  `Attacker` int DEFAULT NULL,
  `Defender` int DEFAULT NULL,
  `Outcome` varchar(255) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `gold_won` int DEFAULT NULL,
  `turn` int DEFAULT NULL,
  PRIMARY KEY (`CombatID`),
  KEY `Attacker` (`Attacker`),
  KEY `Defender` (`Defender`),
  CONSTRAINT `combats_ibfk_1` FOREIGN KEY (`Attacker`) REFERENCES `characters` (`id`),
  CONSTRAINT `combats_ibfk_2` FOREIGN KEY (`Defender`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combats`
--

LOCK TABLES `combats` WRITE;
/*!40000 ALTER TABLE `combats` DISABLE KEYS */;
INSERT INTO `combats` VALUES (1,1,2,'Attacker wins!','2023-10-11 10:00:00',617,7),(2,3,4,'Defender wins!','2023-10-11 10:05:00',317,4),(3,5,6,'Attacker wins!','2023-10-11 10:10:00',284,4),(4,7,8,'Defender wins!','2023-10-11 10:15:00',370,6),(5,9,10,'Attacker wins!','2023-10-11 10:20:00',248,7),(6,11,12,'Defender wins!','2023-10-11 10:25:00',680,3),(7,13,2,'Attacker wins!','2023-10-11 10:30:00',606,5),(8,19,16,'Defender wins!','2023-10-11 10:35:00',237,2),(9,25,31,'Attacker wins!','2023-10-11 10:40:00',571,6),(10,42,44,'Defender wins!','2023-10-11 10:45:00',742,7);
/*!40000 ALTER TABLE `combats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dialogue`
--

DROP TABLE IF EXISTS `dialogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dialogue` (
  `DialogueID` int NOT NULL,
  `FirstPlayerID` int DEFAULT NULL,
  `SecondPlayerID` int DEFAULT NULL,
  `Text` text,
  `Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`DialogueID`),
  KEY `FirstPlayerID` (`FirstPlayerID`),
  KEY `SecondPlayerID` (`SecondPlayerID`),
  CONSTRAINT `dialogue_ibfk_1` FOREIGN KEY (`FirstPlayerID`) REFERENCES `players` (`PlayerID`),
  CONSTRAINT `dialogue_ibfk_2` FOREIGN KEY (`SecondPlayerID`) REFERENCES `players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dialogue`
--

LOCK TABLES `dialogue` WRITE;
/*!40000 ALTER TABLE `dialogue` DISABLE KEYS */;
INSERT INTO `dialogue` VALUES (1,1,2,'Hey, how are you?','2023-10-10 10:00:00'),(2,3,4,'Looking for a team to join for the next quest.','2023-10-10 10:05:00'),(3,5,6,'Did you check the new items in the shop?','2023-10-10 10:10:00'),(4,7,8,'I found a rare item in the last dungeon!','2023-10-10 10:15:00'),(5,9,10,'Let’s meet in the town square.','2023-10-10 10:20:00'),(6,11,12,'@BuckyBarnes Check this out!','2023-10-10 10:25:00'),(7,1,2,'@SharonCarter Have you seen the new update?','2023-10-11 10:30:00'),(8,3,4,'@MariaHill Let’s team up for the next mission!','2023-10-11 10:35:00'),(9,5,6,'I agree with @PhilCoulson, we should take the left path.','2023-10-11 10:40:00'),(10,7,8,'Thanks for the advice @NickFuryJr!','2023-10-11 10:45:00');
/*!40000 ALTER TABLE `dialogue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enemy`
--

DROP TABLE IF EXISTS `enemy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enemy` (
  `id` int NOT NULL,
  `enemy_name` varchar(255) DEFAULT NULL,
  `enemy_type` varchar(255) DEFAULT NULL,
  `hitpoints` int DEFAULT NULL,
  `warcry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enemy`
--

LOCK TABLES `enemy` WRITE;
/*!40000 ALTER TABLE `enemy` DISABLE KEYS */;
INSERT INTO `enemy` VALUES (1,'Infernal Incubus','Elemental',235,'swuoswovno'),(3,'Corrupted Angel','Construct',302,'swui'),(5,'Cybernetic Scorpion','Elemental',888,'smiocliisma'),(6,'Earthquake Worm','Humanoid',867,'ovr'),(7,'Blazing Phoenix','Magical',421,'freprumdux'),(8,'Dire Bat','Brute',984,'iufmuo'),(9,'Fallen Archangel','Demon',505,'dcoefr'),(11,'Clockwork Guardian','Magical',559,'trayya'),(14,'Clockwork Guardian','Humanoid',121,'smuplu'),(16,'Lightning Jinn','Construct',955,'steefruosl'),(19,'Ghostly Archer','Giant',218,'gniudrouj'),(20,'Black Widow','Beast',440,'skacrofroski'),(21,'Death Reaper','Humanoid',684,'wguhmofu'),(24,'Chimera Matriarch','Demon',696,'aspudr'),(25,'Necrotic Lich','Humanoid',186,'skocluu'),(27,'Frost Giant','Undead',209,'abluubro'),(28,'Fire Imp','Humanoid',487,'eam'),(31,'Dreaded Chimera','Beast',589,'bruibres'),(33,'Scourge Wight','Undead',902,'bluiskucbu'),(35,'Skeletal Mage','Humanoid',9,'ioso'),(36,'Phantom Banshee','Undead',487,'frasdossa'),(37,'Thunder Drake','Undead',308,'yispeflaugl'),(38,'Stone Sentinel','Demon',55,'iyqusluebr'),(41,'Crystal Dragon','Dragon',119,'flenud'),(42,'Skeletal Mage','Undead',574,'abauhfeq'),(45,'Necrotic Lich','Construct',778,'proecli'),(48,'Bloodthirsty Minotaur','Undead',167,'prosliofli'),(51,'Lunar Witch','Demon',763,'pmabao'),(52,'Skeletal Mage','Humanoid',32,'eumkuswu'),(53,'Chimera Matriarch','Beast',237,'stay'),(56,'Siren of Despair','Undead',289,'lauclisli'),(57,'Dreaded Chimera','Humanoid',618,'tia'),(58,'Shadow Stalker','Magical',878,'proeclo'),(59,'Haunted Marionette','Giant',762,'vudxiabl'),(60,'Death Reaper','Elemental',340,'ktefl'),(62,'Flamekeeper Elemental','Magical',558,'ooslaikusw'),(65,'Abyssal Fiend','Elemental',126,'uihjufra'),(67,'Cursed Samurai','Undead',924,'bfujri'),(68,'Cave Spider','Giant',423,'ytaopxov'),(70,'Crystal Dragon','Beast',640,'epreprupr'),(71,'Frostbite Scorpion','Magical',84,'rqaqu'),(73,'Dire Pegasus','Beast',99,'slieswibr'),(75,'Chained Spirit','Dragon',322,'brin'),(78,'Shadow Wraith','Humanoid',81,'gxiuskef'),(81,'Ethereal Banshee','Construct',970,'kau'),(82,'Voracious Goblin','Beast',961,'ylopraiswi'),(85,'Crystal Gargoyle','Swarm',76,'slispa'),(86,'Spectral Knight','Magical',6,'xqeksee'),(89,'Dark Sorcerer','Undead',200,'uunlu'),(92,'Fire Imp','Flora',671,'troesnagra'),(93,'Plague Rat','Dragon',303,'bleclaostir'),(96,'Sand Elemental','Humanoid',884,'oel'),(98,'Corrupted Alchemist','Construct',938,'spuahp'),(99,'Infernal Incubus','Elemental',691,'aflijmo'),(102,'Vampire Lord','Humanoid',636,'blosweisp'),(104,'Demonic Kraken','Construct',495,'scoritra'),(107,'Armored Demon','Giant',877,'gregc'),(108,'Spiked Behemoth','Beast',8,'mce'),(109,'Water Elemental','Construct',612,'greplaedroy'),(110,'Ancient Wyrm','Undead',985,'eovf'),(111,'Ghostly Archer','Humanoid',701,'grusmoplaspo'),(112,'Dreaded Chimera','Magical',129,'ooskabl'),(115,'Cyclops Brute','Undead',718,'ocroiv'),(116,'Dark Sorcerer','Dragon',47,'asloi'),(119,'Black Widow','Construct',697,'clabriwz'),(121,'Electric Eel','Humanoid',313,'xkoblevx'),(124,'Griffon King','Undead',113,'praicrepre'),(126,'Chained Spirit','Undead',564,'oewkea'),(129,'Forest Nymph','Humanoid',678,'kdeglosmo'),(131,'Crystal Gargoyle','Magical',365,'smetoqxi'),(133,'Stone Sentinel','Magical',627,'iwtotri'),(135,'Corrupted Angel','Humanoid',437,'blehbuglu'),(137,'Enraged Cyclops','Giant',537,'qjo'),(139,'Chaos Demon','Magical',215,'iezauq'),(141,'Harpy Scream','Swarm',478,'itdibloku'),(144,'Phantom Banshee','Magical',534,'oplo'),(146,'Siren of Despair','Undead',906,'claci'),(149,'Plague Rat','Magical',820,'sciska'),(150,'Blazing Phoenix','Construct',987,'nyauswe'),(152,'Bloodthirsty Minotaur','Humanoid',102,'jyopro'),(153,'Haunted Marionette','Magical',214,'snibro'),(154,'Blazing Phoenix','Construct',444,'dqucroav'),(157,'Armored Centaur','Beast',191,'jnuzr'),(160,'Screeching Harpy','Construct',874,'snitqaa'),(163,'Cursed Mummy','Humanoid',935,'hiq'),(166,'Royal Griffin','Dragon',154,'eesco'),(168,'Forest Spirit','Giant',317,'blegs'),(170,'Siren of Despair','Humanoid',196,'rung'),(171,'Spiked Behemoth','Elemental',142,'crasc'),(173,'Crimson Rogue','Demon',594,'skaacli'),(174,'Corrupted Angel','Humanoid',889,'truski'),(177,'Lava Golem','Elemental',693,'steucresw'),(179,'Lightning Jinn','Beast',7,'ttobiusme'),(182,'Bloodthirsty Mermaid','Magical',281,'aiqe'),(184,'Death Reaper','Undead',879,'freitre'),(185,'Ancient Wyrm','Elemental',235,'pristusk'),(186,'Earthquake Worm','Undead',729,'luosweaclo'),(188,'Thunder Drake','Humanoid',800,'dleu'),(189,'Lightning Jinn','Magical',588,'ozu'),(192,'Swamp Leviathan','Humanoid',116,'edrape'),(194,'Spectral Knight','Flora',876,'glufna'),(195,'Chaos Demon','Humanoid',678,'scofbe'),(196,'Crystal Dragon','Undead',601,'apo'),(199,'Twisted Dryad','Swarm',432,'stegme'),(200,'Griffon King','Construct',746,'trufqagr'),(203,'Shadow Wraith','Humanoid',829,'xbeskucle'),(206,'Vampiric Bat Swarm','Magical',588,'stoutg'),(207,'Time-Weaver','Elemental',81,'uvuayoo'),(208,'Demonic Harbinger','Beast',942,'acriq'),(209,'Bloodthirsty Minotaur','Magical',52,'hru'),(211,'Cursed Samurai','Humanoid',982,'gleafleplei'),(212,'Necrotic Lich','Undead',853,'oclipwe'),(214,'Cybernetic Scorpion','Magical',262,'blagrustiw'),(216,'Twisted Dryad','Flora',874,'apreripro'),(218,'Murderous Wendigo','Demon',871,'crufliulza'),(221,'Dreaded Chimera','Undead',152,'swuu'),(222,'Vampiric Bat Swarm','Beast',819,'frai'),(223,'Water Elemental','Magical',806,'zogluglu'),(225,'Clockwork Guardian','Undead',409,'rnecvev'),(227,'Forest Nymph','Humanoid',226,'spafre'),(228,'Vampire Lord','Beast',637,'fvujme'),(230,'Spiked Behemoth','Magical',905,'obli'),(232,'Warrior Orc','Magical',711,'uarajn'),(234,'Bloodthirsty Mermaid','Beast',274,'crutio'),(237,'Spectral Knight','Undead',886,'uscufl'),(239,'Banshee Queen','Humanoid',109,'icray'),(241,'Spectral Knight','Undead',513,'iflicledri');
/*!40000 ALTER TABLE `enemy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_time` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,'Valley of Forgotten Echoes',384),(6,'Carnival of the Forgotten',687),(9,'Trials of the Ghost King',473),(10,'Curse of the Phantom Queen',634),(12,'Odyssey of the Stormcaller',71),(15,'Odyssey of the Stormcaller',106),(16,'The Dragon\'s Awakening',657),(18,'Corruption of the Sacred Grove',524),(19,'The Cataclysm of Ironspire',855),(22,'Fireheart\'s Revenge',8),(24,'Siege of Thunderpeak',747),(27,'War of the Crystal Lake',498),(28,'Serpent\'s Ascension',774),(31,'Serpent\'s Ascension',153),(34,'Fireheart\'s Revenge',672),(36,'Valley of Forgotten Echoes',482),(38,'Wrath of the Earthmother',674),(39,'Challenge of the Seven Seals',896),(40,'The Gatekeeper\'s Fury',666),(42,'The Reckoning of Lighthaven',928),(44,'Curse of the Phantom Queen',906),(46,'Revolution of the Iron Fist',127),(48,'Carnival of the Forgotten',42),(49,'Odyssey of the Stormcaller',128),(52,'Vault of the Fallen Stars',526),(55,'War of the Crystal Lake',751),(56,'Warsong\'s End',15),(58,'The Dragon\'s Awakening',432),(60,'Wrath of the Earthmother',600),(61,'Darkness Over Whitestone',392),(64,'Plague of the Dark Sands',938),(66,'Dance of the Moonshadow',7),(67,'The Gatekeeper\'s Fury',596),(68,'Dance of the Moonshadow',666),(69,'Siege of Thunderpeak',363),(72,'Escape from Shadow Hold',178),(75,'Trials of the Ghost King',102),(78,'The Fall of Skyspire',137),(79,'Valley of Forgotten Echoes',704),(80,'Quest for the Lost Relics',30),(82,'Wrath of the Earthmother',203),(84,'The Gathering Storm',718),(87,'Darkness Over Whitestone',89),(89,'Storm of the Dead',317),(90,'Quest for the Lost Relics',482),(93,'Raven\'s Eclipse',737),(95,'The Dragon\'s Awakening',782),(97,'Siege of Thunderpeak',837),(98,'Riddle of the Ancient Sphinx',392),(100,'Siege of Thunderpeak',886),(103,'The Celestial Convergence',474),(104,'Quest for the Eternal Flame',933),(106,'War of the Crystal Lake',975),(107,'Haunting of the Crimson Keep',72),(110,'Odyssey of the Stormcaller',548),(111,'The Dragon\'s Awakening',388),(113,'The Gatekeeper\'s Fury',957),(114,'Lost Horizon\'s Discovery',573),(115,'Escape from Shadow Hold',844),(117,'The Reckoning of Lighthaven',912),(119,'Battle of the Whispering Woods',730),(122,'Darkness in Highfell',144),(124,'Darkness Over Whitestone',946),(125,'Quest for the Lost Relics',445),(127,'The Fall of Skyspire',561),(128,'Slaying of the Ice Queen',1000),(131,'Spectral Masquerade',249),(132,'Blood Moon Rising',50),(133,'Haunting of the Crimson Keep',15),(136,'Feast of the Harvest Moon',938),(138,'Chaos in the Windy Crag',727),(139,'Warsong\'s End',14),(142,'Darkness in Highfell',942),(143,'Corruption of the Sacred Grove',509),(146,'Quest for the Lost Relics',663),(148,'Cursed Souls\' Nightfall',602),(149,'Feast of the Harvest Moon',73),(151,'Curse of the Phantom Queen',324),(153,'Raven\'s Eclipse',451),(154,'Feast of the Harvest Moon',83),(157,'Slaying of the Ice Queen',530),(158,'The Gatekeeper\'s Fury',570),(159,'Slaying of the Ice Queen',875),(160,'Cursed Souls\' Nightfall',298),(163,'Spectral Masquerade',654),(164,'Quest for the Eternal Flame',669),(166,'The Cataclysm of Ironspire',442),(167,'Storm of the Dead',128),(169,'Trials of the Ghost King',772),(171,'Odyssey of the Stormcaller',989),(172,'Fireheart\'s Revenge',430),(173,'Riddle of the Ancient Sphinx',230),(176,'Revolution of the Iron Fist',590),(177,'Quest for the Lost Relics',150),(178,'Corruption of the Sacred Grove',118),(181,'Fireheart\'s Revenge',986),(182,'Siege of Thunderpeak',281),(183,'Spectral Masquerade',16),(186,'Assault on the Abyss',871),(188,'Cursed Souls\' Nightfall',268),(190,'Darkness Over Whitestone',926),(193,'Dance of the Moonshadow',956),(194,'Rage of the Warbeast',623),(195,'Wrath of the Earthmother',138),(198,'The Dragon\'s Awakening',945),(201,'Dawn of the Void',71),(207,'Corruption of the Sacred Grove',534),(208,'Battle of the Whispering Woods',9),(210,'Haunting of the Crimson Keep',55),(212,'The Golem\'s Lament',165),(215,'Escape from Shadow Hold',546),(216,'Quest for the Eternal Flame',451),(218,'Dawn of the Void',858),(220,'Challenge of the Seven Seals',270),(222,'Invasion of the Frost Giants',891);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guildname`
--

DROP TABLE IF EXISTS `guildname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guildname` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leader` varchar(255) DEFAULT NULL,
  `members` int DEFAULT NULL,
  `founded_year` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guildname`
--

LOCK TABLES `guildname` WRITE;
/*!40000 ALTER TABLE `guildname` DISABLE KEYS */;
INSERT INTO `guildname` VALUES (1,'Moonlit Mystics','Trading','Morwyn',755,955),(2,'Heralds of Hope','Exploration','Illinor',345,521),(3,'Circle of Druids','Mage Training','Thorgrim',869,707),(4,'Starborn Seekers','Exploration','Selendis',289,518),(7,'Nature\'s Whisper','Knowledge','Thorgrim',457,518),(10,'Emerald Enchanters','Crafting','Ulfrik',434,693),(12,'Spirit Guardians','Questing','Xaradra',327,294),(13,'Seekers of Truth','Healing','Valyndra',482,173),(15,'Mercenaries of Fortune','Healing','Raelis',416,424),(17,'The Wanderers','Exploration','Raelan',248,969),(18,'Guardians of Light','Mage Training','Quorlinn',459,621),(20,'Circle of Druids','PvP','Caelthor',914,70),(22,'Defenders of Destiny','PvP','Aeriana',650,977),(25,'Heralds of Hope','Exploration','Drakan',689,185),(28,'Heralds of Hope','Questing','Runorin',266,114),(29,'Defenders of Destiny','PvP','Shaelis',546,121),(30,'Gold Brokers','Questing','Oromis',663,438),(32,'Elixir Masters','Exploration','Gilean',206,594),(33,'Heralds of Hope','Mage Training','Sarthon',405,25),(36,'Moonlit Mystics','Healing','Valthor',161,657),(39,'Mind Over Matter','Mage Training','Lythor',888,688),(42,'Defenders of Destiny','Spying','Nymriel',291,562),(43,'The Forsaken','Knowledge','Zandalar',374,407),(45,'Nature\'s Whisper','Healing','Raelis',409,236),(48,'Emerald Enchanters','PvP','Xyra',420,628),(51,'Thieves of Time','Questing','Drakan',141,90),(52,'Council of Elders','Spying','Valyndra',646,781),(53,'Wizards of the Coast','Questing','Zandalar',72,402),(54,'Circle of Druids','Mage Training','Orin',71,492),(57,'The Forsaken','PvP','Zandalar',582,333),(59,'Artisans of Alchemy','Knowledge','Caelthor',498,924),(61,'Circle of Druids','Questing','Aethor',46,172),(63,'The Forsaken','Exploration','Raelan',448,685),(65,'Ocean\'s Children','Exploration','Lythra',581,992),(67,'Knights of Valor','PvP','Veyla',527,482),(69,'Guardians of Light','Exploration','Serafelle',793,521),(71,'Council of Elders','Exploration','Toraell',350,494),(72,'The Righteous','Exploration','Orifel',443,468),(74,'Thieves of Time','Questing','Raelan',387,192),(77,'The Forsaken','Crafting','Qelthar',857,474),(79,'Heroes of Harmony','PvP','Naelor',208,689),(82,'Heart of Courage','Crafting','Thorgal',683,896),(83,'Shadow Society','Knowledge','Jadefang',517,645),(84,'Thieves of Time','PvP','Sarthon',290,448),(87,'Heralds of Hope','Trading','Valeria',595,566),(89,'Seekers of Truth','Questing','Lythra',226,847),(90,'Gold Brokers','Healing','Thaldor',938,343),(91,'Heart of Courage','PvP','Keldra',237,906),(93,'Shadow Society','Spying','Delgath',255,20),(96,'Silver Lances','PvP','Raelthorn',499,110),(98,'Circle of Druids','PvP','Aerendir',873,625),(100,'Ocean\'s Children','Crafting','Faenar',221,677),(101,'The Forsaken','Trading','Saphyra',141,631),(103,'The Silent Footsteps','Knowledge','Valthor',422,537),(104,'Heralds of Hope','Knowledge','Delgath',97,405),(107,'Hands of Fate','Exploration','Solandria',297,256),(109,'Mercenaries of Fortune','Mage Training','Gwynara',361,107),(112,'Ocean\'s Children','Healing','Gilean',575,422),(114,'Artisans of Alchemy','Crafting','Zephyra',705,105),(117,'Mercenaries of Fortune','Exploration','Thera',970,413),(120,'The Forsaken','Mage Training','Faelthorn',401,502),(123,'Silver Lances','Questing','Runorin',399,486),(124,'Moonlit Mystics','Exploration','Xyphera',152,845),(127,'Dragon Slayers','Mage Training','Shaelis',162,906),(130,'Knights of Valor','Trading','Zyralor',573,934),(133,'Heart of Courage','Mage Training','Ashara',808,894),(135,'The Silent Footsteps','Mage Training','Thorgal',569,676),(136,'Circle of Druids','Exploration','Valdrick',493,586),(139,'Knights of Valor','Crafting','Morwyn',69,360),(140,'The Undying','Healing','Delgath',190,780),(143,'Spirit Guardians','Knowledge','Vyktor',463,881),(146,'Council of Elders','Mage Training','Zyralor',922,820),(149,'The Silent Footsteps','Trading','Loralei',772,637),(151,'Knights of Valor','Crafting','Toraell',918,151),(153,'Prophets of Doom','Mage Training','Aralyn',260,383),(156,'Council of Elders','Questing','Ulfrik',12,783),(159,'Knights of Valor','Questing','Endora',390,985),(160,'Storm Riders','Exploration','Serafelle',40,816),(161,'Guardians of Light','Questing','Gwynara',130,920),(162,'Circle of Druids','Crafting','Nymriel',677,556),(165,'Archmage Assembly','Knowledge','Raelthorn',753,544),(167,'The Forsaken','Crafting','Elandria',929,943),(168,'Spirit Guardians','PvP','Zephyra',346,497),(170,'Heart of Courage','Mage Training','Serafelle',441,349),(171,'Prophets of Doom','Exploration','Daelis',208,991),(172,'Merchant Princes','Mage Training','Toraell',488,850),(174,'Wisdom Weavers','Crafting','Jadefang',539,228),(175,'Archmage Assembly','Crafting','Daelis',642,7),(178,'The Wanderers','Knowledge','Tyrndar',486,418),(181,'Abyss Watchers','Healing','Loralei',452,334),(184,'Frostbite Clan','Crafting','Orin',218,120),(187,'Heroes of Harmony','Crafting','Zephyra',918,718),(190,'Wisdom Weavers','PvP','Raelis',416,699),(192,'Sun Warriors','Questing','Thaelen',247,355),(194,'Defenders of Destiny','Mage Training','Zandalar',274,745),(196,'Dusk to Dawn','Spying','Daelis',972,422),(197,'Crypt Crawlers','Healing','Orin',719,604),(198,'Frostbite Clan','Knowledge','Elandria',29,781),(199,'Seekers of Truth','PvP','Raelthorn',730,789),(200,'Prophets of Doom','Healing','Thaldor',221,104),(201,'Mind Over Matter','Trading','Azalor',897,510),(203,'Seekers of Truth','Trading','Valdrick',76,690),(205,'Guardians of Light','Questing','Oberion',669,731),(206,'Abyss Watchers','Spying','Runorin',128,585),(207,'Emerald Enchanters','Questing','Raelthorn',435,769),(208,'Elixir Masters','Exploration','Gwynara',488,361),(211,'Gold Brokers','Mage Training','Sarthon',42,202),(213,'Abyss Watchers','Mage Training','Seraphix',934,989),(216,'Heralds of Hope','Questing','Saphyra',679,296),(217,'Gold Brokers','Crafting','Aethor',399,858),(220,'Crypt Crawlers','PvP','Lunarion',618,953),(222,'Elixir Masters','Knowledge','Zaela',383,150),(225,'Spirit Guardians','Knowledge','Jadefang',737,332),(226,'Mercenaries of Fortune','Mage Training','Thorgal',713,979),(227,'Storm Riders','PvP','Thorgrim',678,833),(228,'Merchant Princes','Knowledge','Goromir',984,834),(231,'Guardians of Light','Crafting','Morwyn',266,199),(234,'Storm Riders','Healing','Isolde',695,630),(237,'Dragon Slayers','Crafting','Jadefang',347,764),(240,'Knights of Valor','Questing','Sarthon',338,665),(243,'Frostbite Clan','Spying','Gorgrim',261,821),(244,'Moonlit Mystics','Questing','Veyla',990,250),(246,'Prophets of Doom','Knowledge','Thorgal',536,140),(248,'The Wanderers','PvP','Zyraziel',993,945),(249,'Dusk to Dawn','PvP','Aerendir',745,98),(250,'Storm Riders','Knowledge','Drakan',137,854),(252,'Knights of Valor','Spying','Valthor',924,780),(253,'Archmage Assembly','Spying','Thundara',439,18),(256,'Knights of Valor','Healing','Lythor',132,946),(259,'Frostbite Clan','Healing','Goromir',695,611),(262,'Circle of Druids','Exploration','Runorin',278,486),(263,'Sun Warriors','Crafting','Valeria',942,177),(266,'Dragon Slayers','Healing','Orik',949,577),(268,'Elemental Lords','Questing','Thaelis',842,924),(269,'Defenders of Destiny','Trading','Zephyra',463,150),(270,'Mercenaries of Fortune','Knowledge','Elira',477,532),(272,'Seekers of Truth','Questing','Oromis',320,470),(274,'Defenders of Destiny','Crafting','Orifel',426,840),(275,'The Righteous','Exploration','Valeria',218,584),(277,'Wizards of the Coast','Knowledge','Aeriana',484,875),(278,'Hands of Fate','Healing','Xyphera',480,828),(279,'Mind Over Matter','Trading','Belthorn',598,128),(282,'Wisdom Weavers','Knowledge','Aethor',600,51),(285,'Abyss Watchers','Crafting','Nymriel',284,215),(288,'Council of Elders','PvP','Toraell',409,879),(291,'Wisdom Weavers','PvP','Gorgrim',369,503),(294,'The Forsaken','Trading','Elidora',964,292),(297,'Storm Riders','Trading','Caelthor',210,762),(298,'Knights of Valor','Exploration','Oberion',191,24),(300,'The Undying','Healing','Valyndra',935,515),(302,'Spirit Guardians','Questing','Elidora',392,195),(303,'Nature\'s Whisper','Trading','Lythra',531,758),(306,'Guardians of Light','Questing','Illinor',136,534),(309,'Guardians of Light','Mage Training','Raelthorn',860,317),(310,'Moonlit Mystics','Crafting','Sarthon',759,398),(311,'Heroes of Harmony','Trading','Kyrion',97,254),(314,'The Forsaken','Mage Training','Qelthar',219,2),(317,'The Wanderers','Crafting','Aerendir',983,604),(319,'Seekers of Truth','Spying','Goromir',979,899),(320,'Artisans of Alchemy','Trading','Ulfrik',969,699),(321,'Mercenaries of Fortune','Mage Training','Qelthar',135,408),(323,'The Forsaken','Trading','Vyktor',926,300),(325,'Dragon Slayers','Questing','Aryndis',903,939),(326,'Mercenaries of Fortune','Exploration','Selendis',330,30),(327,'Spirit Guardians','Exploration','Jadefang',691,689),(328,'Heralds of Hope','Trading','Goromir',313,876),(330,'Dragon Slayers','Questing','Xaradra',653,167),(331,'Nature\'s Whisper','Trading','Daelis',371,856),(332,'Sun Warriors','Questing','Zyralor',769,69),(335,'Heralds of Hope','Mage Training','Isolde',179,813),(337,'Frostbite Clan','Trading','Naelor',391,832),(340,'Frostbite Clan','Spying','Jadefang',224,247),(343,'Merchant Princes','Questing','Veylan',923,549),(345,'Wizards of the Coast','Questing','Zyralor',210,115),(348,'Mercenaries of Fortune','Trading','Aryndis',303,233),(350,'The Wanderers','PvP','Veylan',202,919),(352,'Defenders of Destiny','Questing','Veylan',825,750),(353,'Desert Nomads','Knowledge','Zyralor',962,691),(356,'Heralds of Hope','Questing','Azalor',428,964),(358,'Wizards of the Coast','Questing','Gorgrim',18,232),(361,'Frostbite Clan','Mage Training','Elandria',735,119),(364,'Heroes of Harmony','Questing','Valthor',581,91),(365,'Crypt Crawlers','PvP','Vyktor',847,677),(366,'Gold Brokers','Knowledge','Kyrion',438,205),(368,'Archmage Assembly','Trading','Thundara',849,115),(370,'Defenders of Destiny','Mage Training','Thorgal',121,149),(373,'Thieves of Time','Mage Training','Aerendir',476,481),(376,'Emerald Enchanters','Crafting','Aryndis',779,136);
/*!40000 ALTER TABLE `guildname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `rarity` varchar(50) DEFAULT NULL,
  `level_requirement` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,'Ring of Arcane Mastery','Shield','Mythic',20),(3,'Scroll of Forgotten Knowledge','Sword','Mythic',20),(5,'Plaguebringer Scythe','Dagger','Rare',10),(8,'Gloves of the Sun God','Shield','Common',1),(10,'Scroll of Forgotten Knowledge','Potion','Mythic',20),(13,'Armor of the Sea Spirit','Bow','Rare',10),(15,'Earthshaker Hammer','Potion','Rare',10),(18,'Tome of Elemental Secrets','Sword','Common',1),(19,'Quiver of the Wind','Sword','Common',1),(20,'Sword of the Paladin','Staff','Common',1),(23,'Cloak of Elvenkind','Shield','Mythic',20),(26,'Lunar Tear Bracelet','Amulet','Common',1),(27,'Champion\'s Greatsword','Staff','Common',1),(28,'Harvest Moon Scepter','Staff','Rare',10),(31,'Potion of Mana Regeneration','Potion','Rare',10),(32,'Scepter of the Forsaken','Shield','Common',1),(33,'Chains of the Abyss','Shield','Rare',10),(36,'Rune-etched Crossbow','Potion','Rare',10),(39,'Ring of Arcane Mastery','Shield','Rare',10),(40,'Amulet of the Fallen','Amulet','Mythic',20),(43,'Bracers of the Hunter','Amulet','Rare',10),(46,'Heartstone Amulet','Amulet','Rare',10),(48,'Mystic Lightshield','Ring','Rare',10),(49,'Belt of the Wyrm','Staff','Rare',10),(50,'Bracers of the Hunter','Sword','Common',1),(51,'Helm of the Silver Knight','Amulet','Common',1),(53,'Sunfire Cape','Dagger','Rare',10),(56,'Ring of the Eternal Flame','Bow','Mythic',20),(57,'Axe of the Moon Chieftain','Amulet','Rare',10),(59,'Shadowflame Dagger','Bow','Common',1),(62,'Crossbow of Fiery Vengeance','Bow','Common',1),(63,'Scroll of the Phoenix','Potion','Common',1),(64,'Mystic Lightshield','Amulet','Mythic',20),(65,'Flask of Infinite Courage','Bow','Common',1),(67,'Crystal of the Ancients','Shield','Mythic',20),(68,'Sunfire Cape','Staff','Mythic',20),(71,'Cloak of Elvenkind','Ring','Rare',10),(73,'Robes of the Archmage','Amulet','Common',1),(75,'Runic Vestments','Potion','Common',1),(78,'Windfury Longsword','Staff','Common',1),(80,'Quicksilver Bullets','Amulet','Mythic',20),(82,'Scroll of the Phoenix','Ring','Common',1),(83,'Guardian\'s Shield','Staff','Rare',10),(85,'Ring of Arcane Mastery','Amulet','Common',1),(86,'Warrior\'s Battleaxe','Ring','Rare',10),(89,'Ring of the Moon','Potion','Common',1),(90,'Spectral Chainmail','Ring','Common',1),(92,'Potion of Dire Strength','Ring','Mythic',20),(93,'Rune-etched Crossbow','Shield','Mythic',20),(96,'Crown of the Lost King','Shield','Rare',10),(99,'Blood-soaked Bracers','Potion','Common',1),(101,'Spectral Chainmail','Shield','Rare',10),(104,'Robe of the Sage','Sword','Rare',10),(105,'Pauldrons of the Bear','Staff','Common',1),(108,'Gloves of the Sun God','Bow','Common',1),(111,'Golden Chalice of Eternity','Ring','Mythic',20),(113,'Amulet of the Fallen Queen','Potion','Common',1),(114,'Shadowflame Dagger','Sword','Common',1),(115,'Enchanted Waterskin','Sword','Mythic',20),(118,'Boots of Celestial Steps','Sword','Mythic',20),(121,'Axe of the Moon Chieftain','Staff','Common',1),(123,'Crossbow of Fiery Vengeance','Ring','Common',1),(125,'Crystal of the Ancients','Bow','Common',1),(126,'Staff of Eldritch Power','Staff','Rare',10),(127,'Plaguebringer Scythe','Potion','Rare',10),(130,'Scroll of Forgotten Knowledge','Bow','Mythic',20),(133,'Quicksilver Bullets','Staff','Common',1),(136,'Gauntlets of the Titan','Amulet','Rare',10),(137,'Sacred Feather Talisman','Amulet','Common',1),(140,'Flask of Infinite Courage','Potion','Mythic',20),(143,'Cloak of Elvenkind','Staff','Common',1),(146,'Staff of the Archmage','Shield','Rare',10),(147,'Titanium Gauntlet','Bow','Common',1),(149,'Scepter of the Forsaken','Potion','Common',1),(151,'Ring of the Fallen','Staff','Legendary',30),(152,'Girdle of Strength','Amulet','Rare',10),(153,'Ring of the Moon','Amulet','Common',1),(155,'Crown of the Lost King','Potion','Rare',10),(157,'Quicksilver Bullets','Dagger','Mythic',20),(160,'Staff of the Archmage','Amulet','Common',1),(163,'Belt of the Wyrm','Amulet','Rare',10),(165,'Tome of the Elders','Amulet','Rare',10),(166,'Amulet of the Fallen King','Amulet','Rare',10),(168,'Amulet of the Fallen','Potion','Rare',10),(169,'Bracelet of Divine Fates','Dagger','Common',1),(171,'Cloak of Elvenkind','Sword','Common',1),(174,'Amulet of the Fallen Queen','Bow','Rare',10),(176,'Stoneforged Mace','Bow','Common',1),(177,'Ring of the Fallen','Dagger','Common',1),(178,'Gauntlets of the Titan','Sword','Rare',10),(180,'Warhammer of the Earthshaker','Ring','Common',1),(181,'Greaves of the Vanguard','Ring','Rare',10),(182,'Harvest Moon Scepter','Dagger','Common',1),(184,'Amulet of the Wind Whisperer','Sword','Rare',10),(185,'Bow of the Wanderer','Bow','Common',1),(186,'Ring of Prosperity','Ring','Rare',10),(187,'Assasains Dagger','Dagger','Mythic',20),(188,'Sword of the Lichking','Sword','Legendary',30),(189,'Poor Mans Shield','Shield','Common',1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kingdom`
--

DROP TABLE IF EXISTS `kingdom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kingdom` (
  `KingdomID` int NOT NULL,
  `KingdomName` varchar(255) DEFAULT NULL,
  `KingdomDescription` text,
  PRIMARY KEY (`KingdomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kingdom`
--

LOCK TABLES `kingdom` WRITE;
/*!40000 ALTER TABLE `kingdom` DISABLE KEYS */;
INSERT INTO `kingdom` VALUES (1,'Valoria','A prosperous kingdom known for its brave knights and lush landscapes.'),(2,'Cimmeria','A mysterious kingdom shrouded in mist, home to skilled sorcerers.'),(3,'Elphora','A serene kingdom with enchanting forests and a rich history of elves.'),(4,'Orynthia','A majestic kingdom renowned for its grand library and intellectual inhabitants.'),(5,'Eloria','A peaceful kingdom that is rich in magical resources.'),(6,'Drakonia','A fierce kingdom known for its dragon riders and warriors.');
/*!40000 ALTER TABLE `kingdom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentions`
--

DROP TABLE IF EXISTS `mentions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentions` (
  `MentionID` int NOT NULL,
  `DialogueID` int DEFAULT NULL,
  `PlayerID` int DEFAULT NULL,
  PRIMARY KEY (`MentionID`),
  KEY `DialogueID` (`DialogueID`),
  KEY `PlayerID` (`PlayerID`),
  CONSTRAINT `mentions_ibfk_1` FOREIGN KEY (`DialogueID`) REFERENCES `dialogue` (`DialogueID`),
  CONSTRAINT `mentions_ibfk_2` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentions`
--

LOCK TABLES `mentions` WRITE;
/*!40000 ALTER TABLE `mentions` DISABLE KEYS */;
INSERT INTO `mentions` VALUES (1,6,13),(2,7,14),(3,8,15),(4,9,16),(5,10,17);
/*!40000 ALTER TABLE `mentions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc`
--

DROP TABLE IF EXISTS `npc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `npc` (
  `id` int NOT NULL,
  `npc_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `location` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc`
--

LOCK TABLES `npc` WRITE;
/*!40000 ALTER TABLE `npc` DISABLE KEYS */;
INSERT INTO `npc` VALUES (242,'Lore_Masters','Tyrndar','Stoneshield',437.62),(243,'Shopkeepers','Thaelis','Deeproot',742.36),(246,'Shopkeepers','Valeria','Dragonfang',362.25),(249,'Quest-givers','Zandalar','Duskheart',792.82),(250,'Skill_Trainers','Lythor','Sunspire',580.49),(251,'Lore_Masters','Lyrielle','Skyshard',210.05),(252,'Lore_Masters','Toraell','Goldenleaf',658.04),(255,'Skill_Trainers','Valeria','Moonshard',436.16),(258,'Quest-givers','Endora','Silverbow',948.96),(259,'Shopkeepers','Laelor','Dreadbane',14.93),(260,'Lore_Masters','Thorgath','Fellseeker',623.38),(263,'Shopkeepers','Valeria','Snowfall',364.73),(265,'Skill_Trainers','Naelor','Deathbringer',226.53),(267,'Lore_Masters','Qelthar','Brightdawn',107.84),(269,'Lore_Masters','Xirelle','Stormbringer',969.86),(270,'Skill_Trainers','Valeria','Wildfire',200.40),(272,'Shopkeepers','Xyphera','Swiftblade',844.11),(273,'Quest-givers','Aerendir','Firetalon',635.76),(276,'Quest-givers','Grundor','Thunderhoof',694.17),(278,'Shopkeepers','Xyphera','Whitewolf',228.93),(281,'Shopkeepers','Runorin','Starshield',374.31),(284,'Lore_Masters','Vyktor','Dawnstrike',862.84),(287,'Quest-givers','Seraphix','Silvershadow',964.16),(289,'Shopkeepers','Gilean','Silverbow',125.04),(290,'Skill_Trainers','Morwyn','Ironsong',642.74),(292,'Shopkeepers','Aethor','Moonshard',411.02),(295,'Lore_Masters','Loralei','Dreadbane',66.58),(298,'Quest-givers','Ulfrik','Thundersong',189.53),(300,'Shopkeepers','Serafelle','Moonshard',732.01),(302,'Lore_Masters','Xyphera','Windwhisper',162.27),(305,'Shopkeepers','Thaelen','Thunderhoof',117.69),(307,'Skill_Trainers','Oromis','Swiftblade',707.48),(310,'Skill_Trainers','Xaradra','Bloodfang',646.20),(312,'Quest-givers','Goromir','Sunspire',659.55),(315,'Quest-givers','Thorgrim','Ironthorn',618.22),(318,'Lore_Masters','Valyndra','Bloodfang',493.03),(320,'Lore_Masters','Ashara','Skullcrusher',511.03),(321,'Quest-givers','Serafelle','Iceshard',507.92),(323,'Quest-givers','Valeria','Sunshield',660.75),(324,'Shopkeepers','Valthor','Skyfury',583.31),(327,'Skill_Trainers','Thaldor','Dreadbane',101.10),(328,'Skill_Trainers','Xyra','Stormstrike',459.78),(330,'Lore_Masters','Veylan','Snowfall',208.15),(332,'Skill_Trainers','Veyla','Runesong',881.07),(334,'Quest-givers','Runorin','Lightbringer',166.04),(337,'Quest-givers','Thera','Dreadbane',866.22),(338,'Skill_Trainers','Solandria','Ironsong',272.10),(341,'Quest-givers','Ulfrik','Ironsong',777.88),(342,'Shopkeepers','Xyralis','Frostbite',968.31),(343,'Quest-givers','Quorlinn','Grimspine',201.54),(344,'Skill_Trainers','Gilean','Wolfsong',311.80),(347,'Quest-givers','Xaradra','Sunspire',439.63),(349,'Shopkeepers','Xirelle','Deeproot',204.08),(350,'Lore_Masters','Thorgath','Earthstrider',869.08),(353,'Shopkeepers','Ulfrik','Goldenleaf',795.78),(354,'Skill_Trainers','Selendis','Firetalon',253.50),(355,'Shopkeepers','Lythor','Ironsong',280.93),(356,'Shopkeepers','Faenar','Silverbow',207.77),(357,'Skill_Trainers','Aralyn','Dragonfang',8.42),(360,'Quest-givers','Zaela','Oakheart',991.22),(363,'Lore_Masters','Xyra','Firetalon',272.75),(364,'Quest-givers','Zyralor','Flamestrike',829.62),(365,'Lore_Masters','Raelis','Windwhisper',348.45),(368,'Skill_Trainers','Grundor','Stoneshield',234.18),(371,'Quest-givers','Xyra','Dreadclaw',552.24),(374,'Quest-givers','Lyrielle','Fellseeker',445.33),(376,'Skill_Trainers','Raelis','Firemantle',584.83),(377,'Quest-givers','Belthorn','Firemantle',828.08),(378,'Skill_Trainers','Lyrielle','Thundersong',258.07),(380,'Lore_Masters','Thundara','Windwhisper',701.94),(382,'Skill_Trainers','Jadefang','Sunspire',686.76),(384,'Skill_Trainers','Thorgal','Windwhisper',412.24),(385,'Lore_Masters','Veyla','Skyfury',245.03),(387,'Skill_Trainers','Vyktor','Shadowgale',79.80),(390,'Skill_Trainers','Orifel','Firetalon',292.73),(391,'Shopkeepers','Grundor','Fellseeker',16.80),(393,'Lore_Masters','Zephyra','Stormbringer',952.43),(396,'Shopkeepers','Keldra','Deeproot',504.50),(397,'Lore_Masters','Aryndis','Stonewall',189.97),(399,'Quest-givers','Aralyn','Skyshard',138.66),(402,'Skill_Trainers','Thaelen','Duskheart',400.19),(403,'Shopkeepers','Elanor','Ironbane',583.13),(405,'Shopkeepers','Isolde','Swiftblade',385.62),(406,'Shopkeepers','Raelthorn','Goldenleaf',205.95),(407,'Shopkeepers','Elidora','Thunderclap',510.13),(410,'Skill_Trainers','Delgath','Stormblade',867.62),(413,'Lore_Masters','Valeria','Frostclaw',209.70),(414,'Lore_Masters','Thaelis','Moonfire',19.43),(417,'Shopkeepers','Faenar','Swiftwind',607.72),(420,'Shopkeepers','Xaradra','Earthstrider',395.55),(421,'Skill_Trainers','Nymriel','Nightshade',953.80),(423,'Skill_Trainers','Aeriana','Cragjaw',740.63),(426,'Skill_Trainers','Thorgath','Dragonfang',621.74),(429,'Skill_Trainers','Shaelis','Mistmantle',606.57),(431,'Skill_Trainers','Elira','Stormstrike',21.58),(433,'Skill_Trainers','Kyrion','Flamestrike',196.23),(436,'Shopkeepers','Tyrndar','Goldenleaf',203.08),(438,'Quest-givers','Xirelle','Oakheart',174.27),(441,'Shopkeepers','Lythra','Leafwhisper',306.19),(442,'Quest-givers','Ulfrik','Cragjaw',724.55),(444,'Quest-givers','Faenar','Thunderclap',484.52),(445,'Shopkeepers','Ulfrik','Steelstrike',342.34),(446,'Quest-givers','Gorgrim','Thunderclap',546.42),(449,'Skill_Trainers','Serafelle','Frostbite',14.49),(450,'Shopkeepers','Sarthon','Ragefang',539.11),(453,'Skill_Trainers','Xyra','Moonfire',469.89),(454,'Quest-givers','Xirelle','Ragefang',715.92),(456,'Quest-givers','Delgath','Grimspine',588.16),(458,'Quest-givers','Daelis','Darkfall',304.97),(461,'Quest-givers','Endora','Wildfire',375.05),(462,'Quest-givers','Shaelis','Ashmantle',397.36),(465,'Quest-givers','Nymriel','Starshield',101.62),(466,'Quest-givers','Goromir','Steelstrike',939.35),(468,'Shopkeepers','Thera','Cragjaw',189.41),(471,'Lore_Masters','Grundor','Ravenclaw',596.47),(473,'Quest-givers','Lyrielle','Darkveil',945.77),(475,'Quest-givers','Shaelis','Runesong',256.41),(476,'Shopkeepers','Orifel','Frostweaver',688.05),(478,'Skill_Trainers','Saphyra','Skyshard',337.47),(479,'Skill_Trainers','Vyktor','Grimspine',958.97),(482,'Shopkeepers','Raelis','Ragefang',875.11),(485,'Shopkeepers','Toraell','Whitewolf',47.40),(488,'Lore_Masters','Zandalar','Lightbringer',882.20),(490,'Quest-givers','Thaelis','Leafwhisper',509.74),(493,'Quest-givers','Aralyn','Starshield',188.91),(495,'Skill_Trainers','Thorgal','Earthstrider',409.22),(498,'Lore_Masters','Zandalar','Frostweaver',540.72),(501,'Quest-givers','Lunarion','Ravenclaw',637.27),(503,'Lore_Masters','Lythor','Darkbane',850.72),(505,'Lore_Masters','Solandria','Starflame',930.21),(508,'Skill_Trainers','Zyraziel','Flamestrike',49.10),(511,'Shopkeepers','Thundara','Thunderhoof',342.45),(514,'Shopkeepers','Lunarion','Nightshade',344.90),(515,'Quest-givers','Valthor','Thunderclap',916.71),(517,'Lore_Masters','Zandalar','Dragonfang',779.91),(520,'Lore_Masters','Illinor','Wildfire',197.52),(522,'Skill_Trainers','Thaldor','Shadowflame',68.56),(523,'Lore_Masters','Thaelen','Moonfire',95.21),(524,'Quest-givers','Veyla','Whitewolf',588.26),(525,'Skill_Trainers','Sarthon','Brightscale',698.10),(526,'Shopkeepers','Gorgrim','Deeproot',728.08),(528,'Shopkeepers','Valdrick','Earthstrider',580.79),(531,'Shopkeepers','Gorgrim','Silvermoon',510.02),(534,'Quest-givers','Elidora','Mistmantle',801.56),(536,'Quest-givers','Runorin','Oakheart',83.42),(538,'Skill_Trainers','Oberion','Stormstrike',66.56),(539,'Lore_Masters','Jadefang','Doomhammer',238.67),(540,'Quest-givers','Kyrion','Darkfall',852.13),(543,'Lore_Masters','Thorgrim','Deeproot',729.60),(544,'Shopkeepers','Sarthon','Darkveil',505.52),(547,'Lore_Masters','Raelis','Dawnstrike',682.64),(550,'Shopkeepers','Sarthon','Dreadbane',23.32),(551,'Lore_Masters','Elandria','Iceshard',34.95),(552,'Skill_Trainers','Qelthar','Goldenleaf',248.90),(553,'Quest-givers','Raelis','Skullcrusher',918.39),(555,'Lore_Masters','Nymriel','Goldenleaf',157.58),(558,'Shopkeepers','Seraphix','Ironbane',238.41),(559,'Quest-givers','Delgath','Dawnstrike',751.97),(562,'Quest-givers','Raelan','Dawnstrike',102.69),(564,'Shopkeepers','Ashara','Warclaw',503.63),(566,'Lore_Masters','Valdrick','Silverbow',826.43),(569,'Lore_Masters','Thorgath','Flamestrike',902.50),(572,'Lore_Masters','Ulfrik','Frostbite',506.87),(573,'Shopkeepers','Lythra','Darkveil',17.17),(575,'Shopkeepers','Raelthorn','Soulforge',555.63),(578,'Lore_Masters','Aeriana','Silvermoon',197.96),(580,'Skill_Trainers','Thaelis','Flamestrike',691.10),(582,'Quest-givers','Toraell','Sunspire',869.34),(584,'Quest-givers','Thorgal','Frostweaver',124.16),(587,'Quest-givers','Thorgath','Skyfury',457.67),(588,'Lore_Masters','Delgath','Moonfire',469.77),(589,'Skill_Trainers','Belthorn','Wolfsong',412.23),(590,'Lore_Masters','Raelan','Firemantle',722.34),(592,'Lore_Masters','Raelthorn','Bloodfang',30.33),(593,'Quest-givers','Xyralis','Leafwhisper',992.04),(596,'Lore_Masters','Zaela','Goldenleaf',432.80),(599,'Skill_Trainers','Aeriana','Mistmantle',56.51),(600,'Lore_Masters','Delgath','Sunshield',15.34),(601,'Shopkeepers','Saphyra','Swiftwind',828.50),(602,'Lore_Masters','Thera','Frostbite',90.65),(605,'Lore_Masters','Quorlinn','Darkfall',982.35),(608,'Shopkeepers','Raelis','Ragefang',153.55);
/*!40000 ALTER TABLE `npc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `PlayerID` int NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `Nationality` varchar(25) DEFAULT NULL,
  `Server` varchar(7) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `CreditCardNumber` varchar(16) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'JohnDoe','john.doe@example.com','hashed_password1','USA','US1','1990-01-01','1111222233334444','2023-01-01 12:00:00'),(2,'JaneSmith','jane.smith@example.com','hashed_password2','Canada','CA1','1992-02-02','2222333344445555','2023-02-02 12:00:00'),(3,'JimBeam','jim.beam@example.com','hashed_password3','UK','UK1','1994-03-03','3333444455556666','2023-03-03 12:00:00'),(4,'SaraConnor','sara.connor@example.com','hashed_password4','USA','US2','1985-04-04','4444555566667777','2023-04-04 12:00:00'),(5,'TomCruise','tom.cruise@example.com','hashed_password5','Canada','CA2','1962-07-03','5555666677778888','2023-05-05 12:00:00'),(6,'EllenPage','ellen.page@example.com','hashed_password6','UK','UK2','1987-02-21','6666777788889999','2023-06-06 12:00:00'),(7,'ChrisEvans','chris.evans@example.com','hashed_password7','USA','US3','1981-06-13','7777888899990000','2023-07-07 12:00:00'),(8,'ScarlettJ','scarlett.j@example.com','hashed_password8','Canada','CA3','1984-11-22','8888999900001111','2023-08-08 12:00:00'),(9,'HughJackman','hugh.jackman@example.com','hashed_password9','UK','UK3','1968-10-12','9999000011112222','2023-09-09 12:00:00'),(10,'EmmaWatson','emma.watson@example.com','hashed_password10','USA','US4','1990-04-15','1011121314151617','2023-10-10 12:00:00'),(11,'SamWilson','sam.wilson@example.com','hashed_password11','USA','US1','1978-09-23','1112131415161718','2023-09-23 12:00:00'),(12,'BuckyBarnes','bucky.barnes@example.com','hashed_password12','USA','US1','1917-03-10','1213141516171819','2023-10-12 12:00:00'),(13,'PeggyCarter','peggy.carter@example.com','hashed_password13','UK','UK9','1921-04-09','1314151617181920','2023-11-13 12:00:00'),(14,'SharonCarter','sharon.carter@example.com','hashed_password14','USA','US1','1985-12-13','1415161718192021','2023-12-14 12:00:00'),(15,'MariaHill','maria.hill@example.com','hashed_password15','Canada','CA7','1982-04-04','1516171819202122','2024-01-15 12:00:00'),(16,'PhilCoulson','phil.coulson@example.com','hashed_password16','USA','US1','1964-07-08','1617181920212223','2024-02-16 12:00:00'),(17,'NickFuryJr','nick.furyjr@example.com','hashed_password17','USA','US1','1990-05-15','1718192021222324','2024-03-17 12:00:00'),(18,'Quake','quake@example.com','hashed_password18','USA','US1','1988-07-02','1819202122232425','2024-04-18 12:00:00'),(19,'Mack','mack@example.com','hashed_password19','USA','US1','1975-10-17','1920212223242526','2024-05-19 12:00:00'),(20,'YoYo','yoyo@example.com','hashed_password20','Colombia','CO1','1983-11-18','2021222324252627','2024-06-20 12:00:00'),(21,'Fitz','fitz@example.com','hashed_password21','UK','UK10','1987-08-19','2122232425262728','2024-07-21 12:00:00'),(22,'Simmons','simmons@example.com','hashed_password22','UK','UK11','1987-09-11','2223242526272829','2024-08-22 12:00:00'),(23,'May','may@example.com','hashed_password23','USA','US20','1964-11-20','2324252627282930','2024-09-23 12:00:00'),(24,'Ward','ward@example.com','hashed_password24','USA','US21','1980-12-07','2425262728293031','2024-10-24 12:00:00'),(25,'BobbyMorse','bobby.morse@example.com','hashed_password25','USA','US22','1983-10-11','2526272829303132','2024-11-25 12:00:00'),(26,'LanceHunter','lance.hunter@example.com','hashed_password26','UK','UK12','1974-11-21','2627282930313233','2024-12-26 12:00:00'),(27,'Lincoln','lincoln@example.com','hashed_password27','USA','US23','1985-12-12','2728293031323334','2025-01-27 12:00:00'),(28,'Joey','joey@example.com','hashed_password28','USA','US24','1982-01-13','2829303132333435','2025-02-28 12:00:00'),(29,'Elena','elena@example.com','hashed_password29','USA','US25','1986-02-14','2930313233343536','2025-03-29 12:00:00'),(30,'Deke','deke@example.com','hashed_password30','USA','US26','1992-03-15','3031323334353637','2025-04-30 12:00:00'),(31,'LiamNelson','liam.nelson@example.com','hashed_password31','Ireland','IE1','1952-06-07','3132333435363738','2023-09-23 12:00:00'),(32,'OliviaHolt','olivia.holt@example.com','hashed_password32','UK','UK13','1997-08-05','3233343536373839','2023-10-12 12:00:00'),(33,'NoahKahn','noah.kahn@example.com','hashed_password33','Germany','DE2','1999-01-11','3334353637383940','2023-11-13 12:00:00'),(34,'EmmaBlunt','emma.blunt@example.com','hashed_password34','UK','UK14','1983-02-23','3435363738394041','2023-12-14 12:00:00'),(35,'LucasMoura','lucas.moura@example.com','hashed_password35','France','FR1','1992-08-13','3536373839404142','2024-01-15 12:00:00'),(36,'SophiaLoren','sophia.loren@example.com','hashed_password36','Italy','IT1','1934-09-20','3637383940414243','2024-02-16 12:00:00'),(37,'MasonMount','mason.mount@example.com','hashed_password37','UK','UK15','1999-01-10','3738394041424344','2024-03-17 12:00:00'),(38,'IsabellaRossi','isabella.rossi@example.com','hashed_password38','Italy','IT2','1990-03-15','3839404142434445','2024-04-18 12:00:00'),(39,'EthanHunt','ethan.hunt@example.com','hashed_password39','France','FR2','1964-07-18','3940414243444546','2024-05-19 12:00:00'),(40,'AvaMartin','ava.martin@example.com','hashed_password40','Germany','DE3','1995-05-22','4041424344454647','2024-06-20 12:00:00'),(41,'AlexanderGustaf','alexander.gustaf@example.com','hashed_password41','Sweden','SE1','1989-01-15','4142434445464748','2024-07-21 12:00:00'),(42,'MiaKhalifa','mia.khalifa@example.com','hashed_password42','UK','UK16','1993-02-10','4243444546474849','2024-08-22 12:00:00'),(43,'BenjaminBlues','benjamin.blues@example.com','hashed_password43','France','FR3','1987-03-17','4344454647484950','2024-09-23 12:00:00'),(44,'GraceKelly','grace.kelly@example.com','hashed_password44','Monaco','MC1','1929-11-12','4445464748495051','2024-10-24 12:00:00'),(45,'OscarWilde','oscar.wilde@example.com','hashed_password45','Ireland','IE2','1854-10-16','4546474849505152','2024-11-25 12:00:00'),(46,'CharlotteRusse','charlotte.russe@example.com','hashed_password46','Germany','DE4','1991-04-19','4647484950515253','2024-12-26 12:00:00'),(47,'VictorHugo','victor.hugo@example.com','hashed_password47','France','FR4','1802-02-26','4748495051525354','2025-01-27 12:00:00'),(48,'EvaGreen','eva.green@example.com','hashed_password48','France','FR5','1980-07-06','4849505152535455','2025-02-28 12:00:00'),(49,'LeonardoVinci','leonardo.vinci@example.com','hashed_password49','Italy','IT3','1452-04-15','4950515253545556','2025-03-29 12:00:00'),(50,'GalileoGalilei','galileo.galilei@example.com','hashed_password50','Italy','IT4','1564-02-15','5051525354555657','2025-04-30 12:00:00'),(51,'TonyStark','tony.stark@example.com','hashed_password51','USA','US5','1970-05-29','5152535455565657','2023-01-15 12:00:00'),(52,'BruceWayne','bruce.wayne@example.com','hashed_password52','Canada','CA4','1972-02-19','5253545556575758','2023-02-16 12:00:00'),(53,'ClarkKent','clark.kent@example.com','hashed_password53','UK','UK6','1980-03-10','5354555657585859','2023-03-17 12:00:00'),(54,'DianaPrince','diana.prince@example.com','hashed_password54','USA','US6','1985-04-30','5455565758595960','2023-04-18 12:00:00'),(55,'LoganHowlett','logan.howlett@example.com','hashed_password55','Canada','CA5','1975-05-01','5556575859606061','2023-05-19 12:00:00'),(56,'NatashaR','natasha.romanoff@example.com','hashed_password56','UK','UK7','1983-06-12','5657585960616162','2023-06-20 12:00:00'),(57,'SteveRogers','steve.rogers@example.com','hashed_password57','USA','US7','1920-07-04','5758596061626263','2023-07-21 12:00:00'),(58,'PeterParker','peter.parker@example.com','hashed_password58','Canada','CA6','2001-08-10','5859606162636364','2023-08-22 12:00:00'),(59,'BruceBanner','bruce.banner@example.com','hashed_password59','UK','UK8','1969-09-18','5960616263646465','2023-09-23 12:00:00'),(60,'StephenStrange','stephen.strange@example.com','hashed_password60','USA','US8','1973-11-11','6061626364656566','2023-10-24 12:00:00'),(61,'TChalla','tchalla@example.com','hashed_password61','Wakanda','WK1','1980-12-05','6162636465666667','2023-11-25 12:00:00'),(62,'ThorOdinson','thor.odinson@example.com','hashed_password62','Asgard','AG1','1000-01-17','6263646566676768','2023-12-26 12:00:00'),(63,'WandaMaximoff','wanda.maximoff@example.com','hashed_password63','Sokovia','SK1','1989-01-23','6364656667686869','2024-01-27 12:00:00'),(64,'ScottLang','scott.lang@example.com','hashed_password64','USA','US9','1980-02-03','6465666768696970','2024-02-28 12:00:00'),(65,'HopeVanDyne','hope.vandyne@example.com','hashed_password65','USA','US10','1984-03-24','6566676869707071','2024-03-29 12:00:00'),(66,'CarolDanvers','carol.danvers@example.com','hashed_password66','USA','US11','1966-04-01','6667686970717172','2024-04-30 12:00:00'),(67,'ErikKillmonger','erik.killmonger@example.com','hashed_password67','Wakanda','WK2','1982-05-09','6768697071727273','2024-05-31 12:00:00'),(68,'NickFury','nick.fury@example.com','hashed_password68','USA','US12','1951-07-04','6869707172737374','2024-06-01 12:00:00'),(69,'Shuri','shuri@example.com','hashed_password69','Wakanda','WK3','1995-12-05','6970717273747475','2024-07-02 12:00:00'),(70,'Loki','loki@example.com','hashed_password70','Asgard','AG2','1000-02-22','7071727374757576','2024-08-03 12:00:00');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL,
  `content` text,
  `choice_options` int DEFAULT NULL,
  `emotion` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (2,'The night is dark and full of side quests.',968,425),(4,'What is better? To be born good, or to overcome your evil nature through great effort?',161,86),(7,'Enemies ahead? I can take \'em!',389,379),(8,'Welcome, welcome! Do you come often? No, really, how often?',404,183),(10,'One does not simply walk into the End Zone.',434,84),(11,'It is not the strength of the body that counts, but the strength of the spirit.',206,998),(14,'It\'s not the size of the sword, it\'s how you swing it!',480,165),(16,'Man is the cruelest animal. Especially in PvP.',357,501),(19,'Do not dwell in the past, do not dream of the future, concentrate the mind on the present game.',735,36),(21,'Do you wish to hear a tale of valor and sacrifice? Too late, it\'s DLC content.',803,66),(23,'Look in the mirror... that\'s your only competition in this game.',399,132),(24,'What is better? To be born good, or to overcome your evil nature through great effort?',394,38),(26,'Ah, sweet child of Kos, returned to the waking world, have we?',856,864),(27,'A horse, a horse, my lootbox for a horse!',148,570),(28,'You are not prepared... for these discounts! All potions 50% off!',822,351),(30,'Yo, fam! Don\'t forget to like and subscribe before you head to the Dark Forest!',946,173),(31,'Hey, listen! You should really stock up on potions before the next fight.',879,365),(34,'Y\'know, in another universe, you and I are just polygons and pixels.',567,590),(35,'Hail, hero! The kingdom\'s salvation lies in... Hey, are you even listening? Stop checking your inventory!',45,243),(38,'We make a special deal for you, only today, only now: Buy one health potion, get one free!',997,883),(40,'Ah, you\'ve come this far, only to die at the hands of the King of Shadows! But first, how was your day?',998,136),(42,'To defeat your enemies, you must know them. Even if they are mushrooms!',777,361),(45,'What is better? To be born good, or to overcome your evil nature through great effort?',14,590),(47,'Welcome to the Enchanted Forest, where the trees are 100% organic and the unicorns are gluten-free.',717,945),(48,'Man is the cruelest animal. Especially in PvP.',630,93),(49,'Behind every avatar is a player with a snack.',124,871),(50,'What is better? To be born good, or to overcome your evil nature through great effort?',969,486),(51,'Existential dread got you down? Try our new Existential Bread\\u00e2\\u20ac\\u201dfreshly baked in-game!',336,747),(53,'Howdy, partner. Ready to saddle up for another bounty?',810,542),(56,'Welcome, adventurer, to the Caverns of Eternal Sorrow. Happy hour is from 4 to 6.',726,282),(57,'New to the realm? Swipe up for an exclusive tutorial!',18,948),(58,'Fear not, hero! Take this sword, it\'s dangerous to go alone! Also, it\'s 50% off today.',978,553),(59,'The night is dark and full of side quests.',48,526),(61,'It is not the strength of the body that counts, but the strength of the spirit.',796,399),(62,'I\'m not in the mood for chat, unless it\'s a dialogue tree.',959,222),(65,'Hail, hero! The kingdom\'s salvation lies in... Hey, are you even listening? Stop checking your inventory!',263,818),(67,'Hey, listen! You should really stock up on potions before the next fight.',269,366),(70,'You have been granted the Sword of Eternal Power! But first, would you like to take a survey?',555,199),(72,'Life is suffering. Have you considered that in your quest for the Sword of Destiny?',55,734),(75,'To defeat your enemies, you must know them. Even if they are mushrooms!',560,379),(78,'Howdy, partner. Ready to saddle up for another bounty?',213,814),(79,'Enemies ahead? I can take \'em!',609,284),(81,'To defeat your enemies, you must know them. Even if they are mushrooms!',590,693),(83,'Today\'s forecast: Cloudy with a chance of dragon attacks.',216,989),(84,'Mastering others is strength; mastering yourself is true power.',58,11),(85,'One does not simply walk into the End Zone.',66,919),(86,'The night is dark and full of side quests.',16,915),(87,'Do you wish to hear a tale of valor and sacrifice? Too late, it\'s DLC content.',738,379),(89,'Come at me, bro. But only if you\'ve read the Terms of Service.',389,101),(90,'Ah, sweet child of Kos, returned to the waking world, have we?',747,9),(93,'In ancient times, dragons roamed these lands. Now it\'s mostly just influencers and food bloggers.',540,258),(94,'Welcome to the Guild of Forgotten Souls! Now, what\'s your damage?',420,825),(96,'Our kingdom is in peril! But first, let\'s take a selfie.',334,287),(98,'In this world, it\'s grind or be grinded!',604,231),(101,'In three words I can sum up what I\'ve learned about life in the realm: It goes on.',797,43),(103,'Hey, wanna see something cool? Press Alt+F4!',871,789),(105,'Fear not, hero! Take this sword, it\'s dangerous to go alone! Also, it\'s 50% off today.',490,178);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quests` (
  `QuestID` int NOT NULL,
  `DifficultyLevel` int DEFAULT NULL,
  `QuestGiver` int DEFAULT NULL,
  `QuestName` varchar(150) DEFAULT NULL,
  `XPReward` int DEFAULT NULL,
  `GoldReward` int DEFAULT NULL,
  `ItemRewardID` int DEFAULT NULL,
  PRIMARY KEY (`QuestID`),
  KEY `QuestGiver` (`QuestGiver`),
  KEY `ItemRewardID` (`ItemRewardID`),
  CONSTRAINT `quests_ibfk_1` FOREIGN KEY (`QuestGiver`) REFERENCES `npc` (`id`),
  CONSTRAINT `quests_ibfk_2` FOREIGN KEY (`ItemRewardID`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` VALUES (1,3,249,'The Lost Artifact',500,250,5),(2,2,258,'Defeat the Dragon',700,500,8),(3,4,273,'Rescue the Princess',600,300,51),(4,1,276,'Gather Magic Herbs',200,150,75),(5,5,287,'Infiltrate the Dark Fortress',750,750,140),(6,3,298,'Protect the Village',450,400,174),(7,2,312,'Retrieve the Stolen Sword',350,200,NULL),(8,1,315,'Escort the Merchant',150,100,NULL),(9,4,321,'Seal the Cursed Tomb',650,600,NULL),(10,5,323,'Vanquish the Evil Sorcerer',750,700,NULL);
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `kingdom` varchar(255) DEFAULT NULL,
  `n_members` int DEFAULT NULL,
  `team_quest` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_quest` (`team_quest`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`team_quest`) REFERENCES `quests` (`QuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (3,'Jade_Tigers','Valoria',925,9),(5,'Grim_Reapers','Orynthia',436,1),(8,'Sapphire_Sorcerers','Elphora',704,8),(11,'Dream_Weavers','Orynthia',603,9),(13,'Lunar_Army','Valoria',773,7),(15,'Azure_Avatars','Elphora',742,7),(16,'Nebula_Ninjas','Elphora',671,2),(19,'Topaz_Templars','Elphora',457,4),(22,'MysticHeralds','Elphora',875,7),(23,'Skyward_Sentinels','Cimmeria',13,6),(26,'Golden_Lions','Cimmeria',643,2),(29,'Titanium_Titans','Cimmeria',413,4),(31,'Dimensional_Shifters','Orynthia',898,5),(34,'Titanium_Titans','Elphora',81,2),(36,'Titanium_Titans','Elphora',504,8),(38,'Star_Wanderers','Valoria',959,5),(39,'Lunar_Army','Elphora',879,1),(41,'Lunar_Army','Cimmeria',268,4),(44,'Coral_Commanders','Elphora',68,1),(45,'Crystal_Clerics','Valoria',884,NULL),(47,'Moon_Queens','Elphora',115,4),(48,'MysticHeralds','Cimmeria',28,6),(51,'Templar_Order','Elphora',973,7),(52,'Oblivion_Dwellers','Orynthia',509,2),(55,'Cobalt_Crusaders','Cimmeria',932,6),(56,'DuskRaiders','Valoria',847,10),(59,'Unseen_Rogues','Orynthia',506,10),(61,'ThunderClan','Cimmeria',928,5),(64,'Warden_of_Will','Valoria',355,5),(65,'ArcaneWizards','Cimmeria',555,7),(68,'Ivory_Paladins','Orynthia',814,4),(70,'Lunar_Army','Elphora',583,9),(71,'Demon_Hunters','Orynthia',862,9),(74,'Quasar_Knights','Valoria',595,1),(76,'Coral_Commanders','Cimmeria',944,3),(79,'Silver_Falcons','Cimmeria',868,2),(81,'Soul_Reapers','Orynthia',390,7),(83,'Spellbinders','Cimmeria',597,3),(86,'Soul_Reapers','Cimmeria',144,2),(88,'CosmicVoyagers','Orynthia',138,10),(91,'Moon_Queens','Orynthia',773,4),(93,'WarriorAngels','Valoria',923,9),(96,'Astral_Crusaders','Valoria',760,8),(99,'Solar_Sentinels','Valoria',574,6),(100,'Rainbow_Riders','Cimmeria',393,1),(103,'Celestial_Warriors','Valoria',121,8),(104,'PhoenixRising','Orynthia',107,10),(105,'Galactic_Guardians','Cimmeria',70,NULL),(106,'Star_Wanderers','Orynthia',631,10),(107,'DuskRaiders','Orynthia',508,2),(110,'Soul_Reapers','Orynthia',177,9),(112,'Amber_Wizards','Elphora',890,2),(114,'Void_Walkers','Elphora',571,4),(117,'Topaz_Templars','Orynthia',196,9),(120,'ValkyrieStorm','Orynthia',570,7),(121,'Sun_Shadows','Orynthia',618,1),(122,'Golden_Lions','Cimmeria',669,4),(124,'CelestialKnights','Orynthia',233,10),(125,'Quasar_Knights','Elphora',706,4),(127,'Soul_Reapers','Valoria',954,7),(130,'Sky_Kings','Valoria',294,2),(132,'Abyss_Watchers','Elphora',152,4),(134,'Jade_Judges','Orynthia',928,7),(137,'BladeMasters','Orynthia',970,8),(140,'Thunderbolts','Elphora',962,8),(143,'Crimson_Brigade','Cimmeria',752,1),(144,'Ivory_Paladins','Valoria',141,NULL),(147,'ValkyrieStorm','Elphora',740,6),(148,'Emerald_Shamans','Elphora',27,NULL),(150,'Amber_Wizards','Orynthia',885,9),(153,'Radiant_Healers','Cimmeria',791,NULL),(156,'Dark_Crusaders','Elphora',17,4),(157,'Eclipse_Archers','Valoria',249,1),(158,'SoulHarvesters','Orynthia',139,9),(159,'Spellbinders','Cimmeria',119,6),(161,'Warden_of_Will','Cimmeria',339,10),(164,'Templar_Order','Valoria',625,2),(167,'Luminous_Sorcerers','Elphora',221,1),(168,'Phoenix_Squad','Orynthia',77,3),(171,'Violet_Viceroys','Elphora',218,9),(173,'Phoenix_Squad','Cimmeria',791,1),(175,'Lunar_Army','Orynthia',202,6),(178,'NebulaSeekers','Elphora',656,6),(180,'ArcaneWizards','Elphora',786,6),(182,'WarriorAngels','Orynthia',898,8),(183,'Zen_Monks','Cimmeria',76,NULL),(184,'Ivory_Paladins','Valoria',357,9),(187,'Time_Travelers','Cimmeria',818,3),(190,'Twilight_Hunters','Cimmeria',36,6),(192,'ElementalFury','Valoria',234,NULL),(195,'Frost_Wolves','Valoria',444,3),(196,'Frost_Wolves','Cimmeria',378,10),(197,'Silver_Falcons','Elphora',894,NULL),(200,'Astral_Crusaders','Valoria',309,5),(201,'Rogue_Wraiths','Cimmeria',110,NULL),(204,'SoulHarvesters','Orynthia',17,2),(207,'Jade_Judges','Orynthia',981,NULL),(208,'Chaos_Bringers','Orynthia',426,4),(211,'Eclipse_Archers','Cimmeria',758,10),(212,'Ocean_Sirens','Valoria',861,NULL),(215,'ArcaneWizards','Cimmeria',237,8),(216,'Azure_Avatars','Cimmeria',788,6),(218,'Violet_Viceroys','Elphora',678,5),(219,'Lightbringers','Cimmeria',584,5),(222,'Twilight_Hunters','Orynthia',461,6),(224,'SoulHarvesters','Elphora',750,2),(227,'SkyPirates','Cimmeria',922,2),(229,'Amethyst_Arbiters','Valoria',831,8),(230,'PhoenixRising','Orynthia',788,2),(232,'Demon_Hunters','Valoria',275,1),(233,'WarriorAngels','Elphora',475,5),(236,'SoulHarvesters','Valoria',47,4),(239,'Grim_Reapers','Valoria',966,5),(242,'Dimensional_Shifters','Elphora',263,8),(244,'WarriorAngels','Elphora',643,7),(246,'Spirit_Seekers','Elphora',69,9),(248,'FireSerpents','Valoria',897,8),(250,'Galactic_Guardians','Valoria',822,5),(252,'Wind_Dancers','Cimmeria',842,4),(253,'SoulHarvesters','Valoria',342,NULL),(255,'Radiant_Healers','Valoria',239,5),(257,'Blade_Riders','Orynthia',178,4),(259,'Golden_Lions','Valoria',278,1),(260,'Spirit_Seekers','Valoria',668,3),(262,'Venom_Serpents','Orynthia',672,2),(263,'MysticHeralds','Cimmeria',37,NULL),(265,'Emerald_Shamans','Valoria',972,1),(268,'Night_Owls','Orynthia',140,3),(271,'Rune_Masters','Elphora',239,3),(274,'ThunderClan','Orynthia',221,NULL),(276,'Scarlet_Scouts','Valoria',153,2),(278,'Opal_Oracles','Cimmeria',153,2),(281,'Jade_Judges','Cimmeria',627,NULL),(282,'Titanium_Titans','Valoria',619,3),(283,'ValkyrieStorm','Cimmeria',923,2),(285,'Onyx_Operatives','Elphora',174,1),(286,'Spirit_Seekers','Elphora',316,1),(287,'Zen_Monks','Valoria',819,3),(290,'Ruby_Wizards','Orynthia',188,1),(293,'DuskRaiders','Valoria',540,4),(296,'Sun_Shadows','Elphora',27,4),(298,'RavenWings','Orynthia',467,10),(300,'Scarlet_Scouts','Orynthia',910,NULL),(302,'Rune_Masters','Elphora',523,8),(303,'BladeMasters','Valoria',95,5),(306,'Phoenix_Squad','Cimmeria',5,5),(309,'AstralWanderers','Cimmeria',566,6),(311,'Chaos_Bringers','Cimmeria',420,4),(312,'Scarlet_Scouts','Valoria',75,2),(313,'FireSerpents','Valoria',407,5),(315,'Ocean_Sirens','Elphora',259,4),(318,'Violet_Viceroys','Elphora',632,1),(319,'ThunderClan','Cimmeria',956,7),(321,'MysticHeralds','Valoria',217,3),(322,'Templar_Order','Valoria',957,NULL),(323,'PhoenixRising','Cimmeria',696,10),(325,'Amethyst_Arbiters','Cimmeria',234,1),(327,'Dragon_Tamers','Cimmeria',381,1),(329,'Holy_Shamans','Cimmeria',839,NULL),(332,'Onyx_Operatives','Orynthia',866,8),(333,'Wind_Dancers','Valoria',767,5),(335,'Moon_Queens','Orynthia',148,4),(336,'Amber_Wizards','Elphora',752,NULL),(339,'Opal_Oracles','Cimmeria',880,2),(341,'ArcaneWizards','Orynthia',397,NULL),(344,'Sky_Kings','Orynthia',325,10),(347,'ThunderClan','Elphora',176,6),(348,'FireSerpents','Elphora',361,9),(350,'Dark_Crusaders','Valoria',867,3),(352,'Winter_Warlocks','Orynthia',397,10),(355,'Time_Travelers','Orynthia',853,10),(358,'Thunderbolts','Valoria',807,3),(361,'CosmicVoyagers','Elphora',213,9),(363,'Eclipse_Archers','Orynthia',115,10),(364,'Amethyst_Arbiters','Cimmeria',348,9),(365,'ArcaneWizards','Elphora',747,4),(367,'Holy_Shamans','Elphora',528,4),(370,'Abyss_Watchers','Cimmeria',653,10),(371,'Zen_Monks','Orynthia',654,4),(372,'Sapphire_Sorcerers','Valoria',372,1),(374,'Frost_Wolves','Elphora',926,10),(375,'Amber_Wizards','Valoria',496,3),(376,'Violet_Viceroys','Cimmeria',373,8),(377,'ThunderClan','Valoria',989,7),(380,'Radiant_Healers','Valoria',241,1),(381,'Titanium_Titans','Orynthia',942,10),(382,'Dragon Tamers','Drakonia',150,8),(383,'Elven Archers','Eloria',121,9),(384,'Mystic Drakes','Drakonia',18,10),(385,'Forest Guardians','Eloria',102,6),(386,'Fiery Scales','Drakonia',142,7);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade` (
  `TradeID` int NOT NULL,
  `SellerID` int DEFAULT NULL,
  `BuyerID` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Offered` datetime DEFAULT NULL,
  `Accepted` datetime DEFAULT NULL,
  PRIMARY KEY (`TradeID`),
  KEY `SellerID` (`SellerID`),
  KEY `BuyerID` (`BuyerID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `trade_ibfk_1` FOREIGN KEY (`SellerID`) REFERENCES `players` (`PlayerID`),
  CONSTRAINT `trade_ibfk_2` FOREIGN KEY (`BuyerID`) REFERENCES `players` (`PlayerID`),
  CONSTRAINT `trade_ibfk_3` FOREIGN KEY (`ItemID`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
INSERT INTO `trade` VALUES (1,1,2,101,500,'2023-10-10 09:00:00','2023-10-10 10:00:00'),(2,3,4,2,300,'2023-10-10 09:30:00',NULL),(3,5,6,93,700,'2023-10-10 10:00:00','2023-10-10 11:00:00'),(4,7,8,121,200,'2023-10-10 10:30:00',NULL),(5,9,10,155,600,'2023-10-10 11:00:00','2023-10-10 12:00:00'),(6,11,12,186,800,'2023-10-10 11:30:00',NULL),(7,13,14,189,400,'2023-10-10 12:00:00','2023-10-10 13:00:00'),(8,15,16,59,900,'2023-10-10 12:30:00',NULL),(9,17,18,73,100,'2023-10-10 13:00:00','2023-10-10 14:00:00'),(10,19,20,92,1000,'2023-10-10 13:30:00',NULL);
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `id` int NOT NULL,
  `npc_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `location` decimal(9,2) DEFAULT NULL,
  `KingdomID` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `KingdomID` (`KingdomID`),
  CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`KingdomID`) REFERENCES `kingdom` (`KingdomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (611,'Quest-givers','Orifel','Frostclaw',734.75,4),(614,'Skill_Trainers','Serafelle','Silvershadow',741.23,3),(615,'Skill_Trainers','Shaelis','Windrunner',923.93,5),(616,'Skill_Trainers','Endora','Bloodfang',906.76,3),(617,'Shopkeepers','Qelthar','Ironthorn',849.31,5),(619,'Quest-givers','Selendis','Snowfall',104.84,2),(620,'Quest-givers','Toraell','Frostweaver',145.09,2),(622,'Lore_Masters','Jadefang','Stormstrike',16.71,1),(625,'Lore_Masters','Lunarion','Goldenleaf',722.38,1),(627,'Shopkeepers','Jadefang','Ashenveil',507.30,2),(629,'Skill_Trainers','Keldra','Deeproot',105.96,5),(630,'Lore_Masters','Faenar','Darkbane',58.86,6),(633,'Skill_Trainers','Ashara','Doomhammer',546.60,2),(636,'Shopkeepers','Raelthorn','Warclaw',455.36,3),(639,'Lore_Masters','Tyrndar','Firemantle',232.01,5),(642,'Skill_Trainers','Delgath','Whitewolf',293.60,3),(645,'Shopkeepers','Thundara','Ironsong',398.98,1),(647,'Skill_Trainers','Valyndra','Dreadclaw',391.61,6),(648,'Lore_Masters','Morwyn','Darkveil',691.65,2),(651,'Lore_Masters','Aethor','Soulforge',154.86,6),(653,'Shopkeepers','Aralyn','Frostbite',211.88,3),(654,'Skill_Trainers','Solandria','Shadowgale',176.85,2),(656,'Skill_Trainers','Xyra','Glowspark',684.18,1),(658,'Skill_Trainers','Solandria','Wildfire',242.61,3),(659,'Shopkeepers','Xyra','Brightscale',861.69,3),(661,'Skill_Trainers','Azalor','Ashmantle',830.79,2),(662,'Shopkeepers','Solandria','Grimspine',972.27,4),(665,'Quest-givers','Ashara','Deathbringer',760.96,4),(667,'Skill_Trainers','Aeriana','Shadowgale',518.76,4),(670,'Skill_Trainers','Lythra','Skyfury',781.35,3),(673,'Shopkeepers','Grundor','Bloodfang',210.30,6),(675,'Quest-givers','Veylan','Starflame',507.80,3),(676,'Quest-givers','Zephyra','Stormbringer',212.27,3),(678,'Skill_Trainers','Caelthor','Iceshard',519.46,3),(681,'Shopkeepers','Isolde','Thundersong',16.89,3),(683,'Quest-givers','Ulfrik','Stormbringer',960.80,5),(684,'Skill_Trainers','Thorgrim','Earthshaker',154.79,1),(687,'Lore_Masters','Orik','Silvermoon',522.71,2),(688,'Skill_Trainers','Thaldor','Brightdawn',611.82,2),(691,'Skill_Trainers','Nymriel','Frostbite',770.50,2),(694,'Quest-givers','Zandalar','Ironsong',950.36,4),(697,'Shopkeepers','Valeria','Duskheart',441.80,1),(698,'Lore_Masters','Orik','Starflame',848.13,3),(700,'Shopkeepers','Lythra','Skyfury',257.46,2),(703,'Quest-givers','Elanor','Glowspark',662.95,1),(704,'Skill_Trainers','Zandalar','Ashmantle',725.72,3),(707,'Shopkeepers','Aethor','Flamestrike',527.90,6),(709,'Lore_Masters','Aryndis','Swiftblade',712.63,2),(712,'Shopkeepers','Xirelle','Wildfire',346.24,3),(714,'Skill_Trainers','Loralei','Ragefang',3.74,3),(717,'Skill_Trainers','Zephyrix','Dreadbane',316.03,6),(720,'Skill_Trainers','Valyndra','Swiftblade',852.93,2),(721,'Lore_Masters','Aethor','Stonewall',337.85,2),(722,'Lore_Masters','Seraphix','Leafwhisper',282.15,6),(724,'Shopkeepers','Thorgath','Goldenleaf',921.28,4),(725,'Shopkeepers','Raelis','Snowfall',588.12,2),(726,'Skill_Trainers','Lunarion','Wildfire',624.89,3),(728,'Shopkeepers','Endora','Grimspine',971.47,5),(731,'Lore_Masters','Elira','Steelstrike',229.54,1),(733,'Quest-givers','Goromir','Ravenclaw',906.76,3),(735,'Skill_Trainers','Thaelis','Firethorn',86.72,6),(737,'Quest-givers','Thundara','Ironthorn',953.10,1),(738,'Lore_Masters','Lythor','Duskheart',459.57,6),(740,'Shopkeepers','Serafelle','Silvermoon',60.71,3),(743,'Skill_Trainers','Thaelen','Frostbite',386.09,6),(746,'Shopkeepers','Delgath','Dreadclaw',273.61,4),(749,'Lore_Masters','Vyktor','Thundersong',68.99,6),(750,'Quest-givers','Grundor','Ravenclaw',611.17,6),(751,'Quest-givers','Lunarion','Ironsong',280.78,4),(752,'Quest-givers','Endora','Dragonfang',537.03,2),(755,'Skill_Trainers','Raelan','Soulforge',25.14,4),(758,'Shopkeepers','Aeriana','Frostbane',701.18,2),(761,'Lore_Masters','Jadefang','Nightshade',544.16,3),(762,'Lore_Masters','Xirelle','Darkveil',700.63,2),(764,'Skill_Trainers','Seraphix','Frostbane',157.46,1),(767,'Skill_Trainers','Orifel','Silvermoon',635.89,2),(769,'Quest-givers','Thundara','Starflame',23.14,4),(771,'Shopkeepers','Kyrion','Doomhammer',349.47,5),(773,'Skill_Trainers','Elidora','Bearclaw',472.81,1),(774,'Shopkeepers','Valthor','Dragonfang',865.53,2),(775,'Shopkeepers','Sarthon','Oakheart',620.53,5),(778,'Skill_Trainers','Thorgal','Dawnstrike',939.98,6),(781,'Quest-givers','Thaldor','Windstrider',9.76,4),(783,'Quest-givers','Saphyra','Skyshard',971.84,6),(784,'Quest-givers','Vyktor','Ironthorn',960.55,6),(786,'Shopkeepers','Naelor','Stoneshield',948.71,4),(789,'Skill_Trainers','Xyralis','Wolfsong',872.02,1),(790,'Skill_Trainers','Thundara','Darkveil',700.24,1),(791,'Quest-givers','Zyraziel','Stormbringer',800.88,5),(794,'Shopkeepers','Oberion','Dawnstrike',438.66,3),(796,'Lore_Masters','Aralyn','Sunspire',103.51,1),(799,'Lore_Masters','Seraphix','Flamestrike',370.49,2),(802,'Skill_Trainers','Daelis','Stoneforge',758.05,2),(805,'Quest-givers','Xirelle','Mistmantle',97.73,1),(806,'Lore_Masters','Xyralis','Thundersong',410.05,6),(807,'Shopkeepers','Zephyra','Steelstrike',996.02,6),(809,'Lore_Masters','Aryndis','Lightbringer',426.43,1),(810,'Lore_Masters','Qelthar','Oakheart',548.09,4),(813,'Lore_Masters','Faelthorn','Nightshade',104.81,4),(814,'Skill_Trainers','Toraell','Shadowflame',361.82,1),(817,'Shopkeepers','Elidora','Duskheart',750.12,4),(819,'Shopkeepers','Illinor','Stormstrike',779.32,6),(822,'Quest-givers','Illinor','Nightshade',932.66,6),(824,'Lore_Masters','Gilean','Earthstrider',62.65,5),(827,'Shopkeepers','Toraell','Stoneforge',920.97,5),(828,'Skill_Trainers','Lythra','Frostbane',623.42,3),(831,'Skill_Trainers','Drakan','Bearclaw',818.25,6),(833,'Shopkeepers','Thaelis','Moonshard',859.05,3),(834,'Lore_Masters','Loralei','Silvershadow',417.63,2),(836,'Shopkeepers','Runorin','Nightbane',691.76,5),(838,'Skill_Trainers','Aryndis','Glowspark',976.66,1),(840,'Shopkeepers','Laelor','Dreadclaw',898.79,2),(842,'Shopkeepers','Azalor','Nightbane',523.14,1),(844,'Quest-givers','Aethor','Bloodfang',256.56,5),(846,'Shopkeepers','Thera','Lightbringer',202.88,4),(847,'Shopkeepers','Morwyn','Shadowgale',767.44,4),(848,'Shopkeepers','Belthorn','Duskheart',437.64,6),(849,'Quest-givers','Quorlinn','Firetalon',535.59,6),(850,'Lore_Masters','Elandria','Moonshard',401.70,4),(851,'Lore_Masters','Raelthorn','Dawnstrike',508.73,4),(854,'Shopkeepers','Grundor','Bearclaw',340.48,2),(857,'Skill_Trainers','Serafelle','Stoneshield',734.36,2),(858,'Shopkeepers','Nymriel','Ashmantle',155.95,5),(860,'Quest-givers','Elanor','Silvershadow',51.00,5),(861,'Shopkeepers','Aeriana','Firethorn',634.44,3),(862,'Quest-givers','Naelor','Oakheart',886.48,2),(864,'Quest-givers','Thaelen','Whitewolf',644.34,4),(867,'Shopkeepers','Aerendir','Stoneforge',584.93,2),(868,'Shopkeepers','Daelis','Mistmantle',308.60,5),(870,'Lore_Masters','Thundara','Leafwhisper',515.57,6),(871,'Shopkeepers','Aeriana','Darkveil',807.56,2),(873,'Lore_Masters','Zyraziel','Runesong',664.84,2),(875,'Shopkeepers','Zyraziel','Silverbow',138.40,5),(878,'Skill_Trainers','Nymriel','Deathbringer',838.37,4),(880,'Lore_Masters','Runorin','Firemantle',211.94,1),(883,'Quest-givers','Lythor','Sunspire',213.03,3),(884,'Skill_Trainers','Endora','Ashenveil',927.80,4),(886,'Shopkeepers','Nymriel','Silvershadow',572.11,1),(887,'Quest-givers','Aralyn','Wolfsong',25.18,4),(890,'Quest-givers','Loralei','Swiftblade',62.56,4),(892,'Quest-givers','Solandria','Earthward',70.72,2),(894,'Skill_Trainers','Veylan','Frostclaw',21.98,3),(895,'Shopkeepers','Morwyn','Stonewall',669.42,1),(896,'Lore_Masters','Loralei','Leafwhisper',397.48,1),(899,'Lore_Masters','Xyra','Moonshard',558.85,3),(902,'Shopkeepers','Aerendir','Wolfsong',193.58,5),(903,'Lore_Masters','Gwynara','Earthstrider',20.04,3),(906,'Lore_Masters','Orifel','Stormbringer',970.99,2),(909,'Shopkeepers','Thundara','Shadowflame',897.28,5),(912,'Quest-givers','Keldra','Fellseeker',382.70,1),(914,'Skill_Trainers','Valeria','Whitewolf',647.77,2),(915,'Shopkeepers','Aryndis','Silvershadow',38.69,5),(917,'Lore_Masters','Qelthar','Dreadbane',550.63,6),(919,'Skill_Trainers','Seraphix','Brightscale',339.64,3),(920,'Skill_Trainers','Aerendir','Oakheart',628.30,5),(922,'Skill_Trainers','Lythor','Leafwhisper',989.44,1),(924,'Lore_Masters','Veylan','Goldenleaf',11.61,3),(925,'Lore_Masters','Daelis','Soulforge',959.12,4),(928,'Lore_Masters','Thorgath','Fellseeker',624.31,1),(931,'Lore_Masters','Thaelen','Shadowflame',863.84,4),(932,'Shopkeepers','Thorgal','Earthshaker',647.09,4),(934,'Shopkeepers','Belthorn','Ironbane',61.99,1),(935,'Shopkeepers','Runorin','Silvershadow',40.22,5),(936,'Quest-givers','Xyralis','Brightdawn',708.56,1),(938,'Quest-givers','Solandria','Ragefang',880.29,4),(941,'Quest-givers','Lythra','Darkbane',661.01,6),(942,'Skill_Trainers','Zephyrix','Fellseeker',65.06,3),(944,'Shopkeepers','Faenar','Earthward',328.90,5),(946,'Quest-givers','Quorlinn','Moonshard',44.00,1),(947,'Shopkeepers','Orik','Deeproot',241.93,4),(948,'Lore_Masters','Aryndis','Duskheart',313.56,3),(951,'Quest-givers','Zephyrix','Soulforge',633.84,4),(952,'Skill_Trainers','Xyra','Firetalon',934.00,3),(953,'Quest-givers','Morwyn','Stoneshield',790.75,4),(956,'Quest-givers','Serafelle','Bearclaw',625.54,5),(957,'Lore_Masters','Jadefang','Dragonfang',844.89,6),(960,'Lore_Masters','Vyktor','Oakheart',837.90,1),(963,'Quest-givers','Endora','Frostweaver',990.22,1),(964,'Skill_Trainers','Elidora','Stormblade',669.22,6),(967,'Lore_Masters','Sarthon','Ashmantle',98.89,3),(968,'Quest-givers','Oromis','Shadowflame',498.78,4),(969,'Lore_Masters','Nymriel','Fellseeker',709.07,5),(972,'Skill_Trainers','Aeriana','Oakheart',117.92,5),(974,'Shopkeepers','Ashara','Skyfury',543.45,6),(975,'Skill_Trainers','Veyla','Silvershadow',549.80,6);
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 13:22:54
