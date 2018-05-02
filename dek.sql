drop database if exists `dek`;
CREATE DATABASE  `dek` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dek`;
SET NAMES utf8;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: dek
-- ------------------------------------------------------
-- Server version	5.1.73-community

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



DROP TABLE IF EXISTS `prepodyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prepodyi` (
  `KodPrepod` int(11) NOT NULL auto_increment,
  `Familiya` char(30) NOT NULL,
  `Imya` char(30) NOT NULL,
  `Otchestvo` char(30) NOT NULL,
  PRIMARY KEY (`KodPrepod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `prepodyi` WRITE;
/*!40000 ALTER TABLE `prepodyi` DISABLE KEYS */;
/*!40000 ALTER TABLE `prepodyi` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `predmetyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predmetyi` (
  `KodPredmeta` int(11) NOT NULL auto_increment,
  `Nazvanie` char(50) NOT NULL,
  `Shifr` char(10) DEFAULT NULL,
  `KodUchProg` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`KodPredmeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `predmetyi` WRITE;
/*!40000 ALTER TABLE `predmetyi` DISABLE KEYS */;
/*INSERT INTO `predmetyi` VALUES 
(1,'РћСЃРЅРѕРІС‹ Р°Р»РіРѕСЂРёС‚РјРёР·Р°С†РёРё Рё РїСЂРѕРіСЂР°РјРјРёСЂРѕРІР°РЅРёСЏ','РћРђРёРџ','1458/СЂ'),
(2,'РћСЂРіР°РЅРёР·Р°С†РёСЏ Рё РїСЂРѕРµРєС‚РёСЂРѕРІР°РЅРёРµ Р±Р°Р· РґР°РЅРЅС‹С…','РћРёРџР‘Р”','1460/СЂ'),
(3,'РћСЃРЅРѕРІС‹ Р°Р»РіРѕСЂРёС‚РјРёР·Р°С†РёРё Рё РїСЂРѕРіСЂР°РјРјРёСЂРѕРІР°РЅРёСЏ','РћРђРёРџ','1469/СЂ'),
(4,'РћСЂРіР°РЅРёР·Р°С†РёСЏ Рё РїСЂРѕРµРєС‚РёСЂРѕРІР°РЅРёРµ Р±Р°Р· РґР°РЅРЅС‹С…','РћРёРџР‘Р”','1475/СЂ');
*/
/*!40000 ALTER TABLE `predmetyi` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `spetsialnosti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spetsialnosti` (
  `KodSpets` int(11) NOT NULL auto_increment,
  `Nazvanie` varchar(100) NOT NULL,
  PRIMARY KEY (`KodSpets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `spetsialnosti` WRITE;
/*!40000 ALTER TABLE `spetsialnosti` DISABLE KEYS */;
INSERT INTO `spetsialnosti` VALUES (1,'РџСЂРѕРіСЂР°РјРјРЅРѕРµ РѕР±РµСЃРїРµС‡РµРЅРёРµ РёРЅС„РѕСЂРјР°С†РёРѕРЅРЅС‹С… СЃРёСЃС‚РµРј');
/*!40000 ALTER TABLE `spetsialnosti` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `uchebnyieplanyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uchebnyieplanyi` (
  `KodPlana` int(11) NOT NULL auto_increment,
  `KodSpets` int(11) NOT NULL,
`NomerPlana` varchar(10) NOT NULL unique,
  `DataUtv` date NOT NULL,
  `Nomer` varchar(10) NOT NULL,
  `Status` varchar(50), /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР° : РѕР±СѓС‡РµРЅРёРµ, С„РѕСЂРјРјРёСЂРѕРІР°РЅРёРµ, РІС‹РїСѓСЃРє, СЂР°СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°*/
`StatusDate` date, /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ РґР°С‚С‹ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР°*/

  PRIMARY KEY (`KodPlana`),
  KEY `FK_UchebnyiePlanyi_Spetsialnosti1` (`KodSpets`),
  CONSTRAINT `FK_UchebnyiePlanyi_Spetsialnosti1` FOREIGN KEY (`KodSpets`) REFERENCES `spetsialnosti` (`KodSpets`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


CREATE TABLE `uchebnyieplanyi_status` (
  `KodPlana` int(11) NOT NULL,
  `Status` varchar(50), /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР° : РѕР±СѓС‡РµРЅРёРµ, С„РѕСЂРјРјРёСЂРѕРІР°РЅРёРµ, РІС‹РїСѓСЃРє, СЂР°СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°*/
`StatusDate` date, /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ РґР°С‚С‹ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР°*/
PRIMARY KEY (`KodPlana`,`StatusDate`),

  KEY `FK_UchebnyiePlanyi_UchebnyiePlanyi_stat` (`KodPlana`),
  CONSTRAINT `FK_UchebnyiePlanyi_UchebnyiePlanyi_stat` FOREIGN KEY (`KodPlana`) REFERENCES `uchebnyieplanyi` (`KodPlana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;


DELIMITER //
CREATE TRIGGER `ucheb_plan_bak_i`
    AFTER INSERT
    ON `uchebnyieplanyi` FOR EACH ROW
BEGIN
INSERT INTO `uchebnyieplanyi_status` VALUES (NEW.`KodPlana`,NEW.`Status`,NEW.`StatusDate`) ;
END;
//
CREATE TRIGGER `ucheb_plan_bak_u`
    AFTER UPDATE
    ON `uchebnyieplanyi` FOR EACH ROW
BEGIN
INSERT INTO `uchebnyieplanyi_status` VALUES (NEW.`KodPlana`,NEW.`Status`,NEW.`StatusDate`) ;
END; //
DELIMITER ;


/*LOCK TABLES `uchebnyieplanyi` WRITE;*/
/*!40000 ALTER TABLE `uchebnyieplanyi` DISABLE KEYS */;
INSERT INTO `uchebnyieplanyi` VALUES
 (1,1,'1-40 73','2013-09-15','18-15/24','СѓС‚РІРµСЂР¶РґС‘РЅ', now()),
(2,1,'1-40 80','2014-08-30','25-17/30','СѓС‚РІРµСЂР¶РґС‘РЅ', now());
/*!40000 ALTER TABLE `uchebnyieplanyi` ENABLE KEYS */;
/*UNLOCK TABLES;*/



DROP TABLE IF EXISTS `gruppyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruppyi` (
  `Nazvanie` varchar(50) NOT NULL unique,
  `Shifr` int(11) NOT NULL auto_increment,
  `DataFormir` date NOT NULL,
  `KodPlana` int(11) NOT NULL,
 `Status` varchar(50), /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР° : РѕР±СѓС‡РµРЅРёРµ, С„РѕСЂРјРјРёСЂРѕРІР°РЅРёРµ, РІС‹РїСѓСЃРє, СЂР°СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°*/
`StatusDate` date, /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ РґР°С‚С‹ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР°*/

  PRIMARY KEY (`Shifr`),
  KEY `FK_Gruppyi_UchebnyiePlanyi` (`KodPlana`),
  CONSTRAINT `FK_Gruppyi_UchebnyiePlanyi` FOREIGN KEY (`KodPlana`) REFERENCES `uchebnyieplanyi` (`KodPlana`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


CREATE TABLE `gruppyi_status` (
  `Shifr` varchar(10) NOT NULL,
`Status` varchar(50), /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР° : РѕР±СѓС‡РµРЅРёРµ, С„РѕСЂРјРјРёСЂРѕРІР°РЅРёРµ, РІС‹РїСѓСЃРє, СЂР°СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°*/
`StatusDate` date, /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ РґР°С‚С‹ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР°*/

  PRIMARY KEY (`Shifr`,`StatusDate`),
  KEY `FK_Gruppyi_gruppyi_status` (`Shifr`)
/*,
  CONSTRAINT `FK_Gruppyi_gruppyi_status` FOREIGN KEY (`Shifr`) REFERENCES `gruppyi` (`Shifr`)*/
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

DELIMITER //
CREATE TRIGGER `gruppyi_bak_i`
    AFTER INSERT
    ON `gruppyi` FOR EACH ROW
BEGIN
INSERT INTO `gruppyi_status` VALUES (NEW.`Shifr`,NEW.`Status`,NEW.`StatusDate`) ;
END;
//

CREATE TRIGGER `gruppyi_bak_u`
    AFTER UPDATE
    ON `gruppyi` FOR EACH ROW
BEGIN
INSERT INTO `gruppyi_status` VALUES (NEW.`Shifr`,NEW.`Status`,NEW.`StatusDate`) ;
END;  //
DELIMITER ;

LOCK TABLES `gruppyi` WRITE;
/*!40000 ALTER TABLE `gruppyi` DISABLE KEYS */;
INSERT INTO `gruppyi` VALUES 
('Рђ-29',1,'2014-07-23',2,'СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°', now()),
('Рђ-30',2,'2013-09-15',2,'СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°', now()),
('РС‚-1',3,'2013-09-15',1,'СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°', now()),
('РС‚-2',4,'2014-09-15',1,'СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°', now());
/*!40000 ALTER TABLE `gruppyi` ENABLE KEYS */;

UNLOCK TABLES;


DROP TABLE IF EXISTS `studentyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentyi` (
  `ShifrGruppyi` int(11) NOT NULL,
  `NomerZachetki` bigint(20) NOT NULL,
  `Familiya` char(30) NOT NULL,
  `Imya` char(30) NOT NULL,
  `Otchestvo` char(30) NOT NULL,
  `Gorod` char(30) NOT NULL,
  `Adres` char(80) NOT NULL,
  `Tel` char(30) NOT NULL,
`Status` varchar(50), /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР° : РѕР±СѓС‡РµРЅРёРµ, С„РѕСЂРјРјРёСЂРѕРІР°РЅРёРµ, РІС‹РїСѓСЃРє, СЂР°СЃС„РѕСЂРјРёСЂРѕРІР°РЅР°*/
`StatusDate` date, /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ РґР°С‚С‹ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР°*/

  PRIMARY KEY (`NomerZachetki`),
  KEY `FK_Studentyi_Gruppyi_` (`ShifrGruppyi`),
  CONSTRAINT `FK_Studentyi_Gruppyi_` FOREIGN KEY (`ShifrGruppyi`) REFERENCES `gruppyi` (`Shifr`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE utf8_general_ci;


DROP TABLE IF EXISTS `studentyi_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentyi_status` (
  `NomerZachetki` bigint(20) NOT NULL,
  `Status` varchar(50), /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР° : Р·Р°С‡РёСЃР»РµРЅ, РѕРєРѕРЅС‡РёР», РѕС‚С‡РёСЃР»Рµ РїРѕ РЅРµСѓСЃРїРµРІР°РµРјРѕСЃС‚Рё,   */
`StatusDate` date, /* Р”РћР‘РђР’Р›Р•РќРћ РґР»СЏ СЃРѕС…СЂР°РЅРµРЅРёСЏ РґР°С‚С‹ С‚РµРєСѓС‰РµРіРѕ СЃС‚Р°С‚СѓСЃР°*/
PRIMARY KEY (`NomerZachetki`,`StatusDate`),
  KEY `FK_Studentyi_Stud_stat` (`NomerZachetki`),

  CONSTRAINT `FK_Studentyi_Stud_stat` FOREIGN KEY (`NomerZachetki`) REFERENCES `studentyi` (`NomerZachetki`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE utf8_general_ci;


DELIMITER //
CREATE TRIGGER `studentyi_bak_i`
    AFTER INSERT
    ON `studentyi` FOR EACH ROW
BEGIN
INSERT INTO `studentyi_status` VALUES (NEW.`NomerZachetki`,NEW.`Status`,NEW.`StatusDate`) ;
END;
//

CREATE TRIGGER `studentyi_bak_u`
    AFTER UPDATE
    ON `studentyi` FOR EACH ROW
BEGIN
INSERT INTO `studentyi_status` VALUES (NEW.`NomerZachetki`,NEW.`Status`,NEW.`StatusDate`) ;
END;  //
DELIMITER ;



LOCK TABLES `studentyi` WRITE;
/*!40000 ALTER TABLE `studentyi` DISABLE KEYS */;
INSERT INTO `studentyi` VALUES 
(1,10122,'РџР°РЅРѕРІ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(1,10123,'РџР°РЅРѕРІ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(2,10355,'РЎРёРґРѕСЂРѕРІ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','РњРёРЅСЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(2,10356,'Р¤С‘РґРѕСЂРѕРІ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(3,10361,'РЎС‚РµРїР°РЅРѕРІ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(3,1032,'Р’Р°СЃРёР»СЊРµРІ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(3,1062,'Рљ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','РњРёРЅСЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(4,1362,'Рџ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(4,362,'Рњ','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','РњРёРЅСЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now()),
(3,12,'Рў','РРІР°РЅ','РРІР°РЅРѕРІРёС‡','Р’РёС‚РµР±СЃРє','РѕРїРѕРІР°РїР°РІ','354354354','Р·Р°С‡РёСЃР»РµРЅ', now());
/*!40000 ALTER TABLE `studentyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uchebnyieplanyi`
--

DROP TABLE IF EXISTS `uchplanzap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uchplanzap` (
  `KodPredm` int(11) DEFAULT NULL,
  `Etap` int(11) DEFAULT NULL,
  `Lk` int(11) DEFAULT NULL,
  `Lb` int(11) DEFAULT NULL,
  `Pr` int(11) DEFAULT NULL,
  `Sam` int(11) DEFAULT NULL,
  `FormaKont` varchar(20) NOT NULL,
  `KursRab` bit(1) DEFAULT NULL,
  `TipRas` bit(1) DEFAULT NULL,
  `KodPlana` int(11) DEFAULT NULL,
  `KodZap` bigint(20) NOT NULL auto_increment,
  PRIMARY KEY (`KodZap`),
  KEY `FK_UchPlan_Predmetyi` (`KodPredm`),
  KEY `FK_UchPlan_UchebnyiePlanyi` (`KodPlana`),
  CONSTRAINT `FK_UchPlan_Predmetyi` FOREIGN KEY (`KodPredm`) REFERENCES `predmetyi` (`KodPredmeta`),
  CONSTRAINT `FK_UchPlan_UchebnyiePlanyi` FOREIGN KEY (`KodPlana`) REFERENCES `uchebnyieplanyi` (`KodPlana`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `attestasii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attestasii` (
  `KodZap` bigint(20) NOT NULL,
  `Data` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `Shifr` int(11) NOT NULL,
  PRIMARY KEY (`KodZap`,`Shifr`),
  KEY `FK_Atdekatsii_Gruppyi` (`Shifr`),
  CONSTRAINT `FK_Attestasii_Gruppyi` FOREIGN KEY (`Shifr`) REFERENCES `gruppyi` (`Shifr`) ON DELETE CASCADE,
  CONSTRAINT `FK_Attestasii_UchPlanZap` FOREIGN KEY (`KodZap`) REFERENCES `uchplanzap` (`KodZap`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `otsenki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otsenki` (
  `NomerZachetki` bigint(20) NOT NULL,
  `Otsenka` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `KodZap` bigint(20) NOT NULL,
  PRIMARY KEY (`NomerZachetki`,`KodZap`),
  KEY `FK_Otsenki_UchPlanZap` (`KodZap`),
  CONSTRAINT `FK_Otsenki_Studentyi` FOREIGN KEY (`NomerZachetki`) REFERENCES `studentyi` (`NomerZachetki`) ON DELETE CASCADE,
  CONSTRAINT `FK_Otsenki_UchPlanZap` FOREIGN KEY (`KodZap`) REFERENCES `uchplanzap` (`KodZap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



DROP TABLE IF EXISTS `gpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gpp` (
  `Shifr` int(11) DEFAULT NULL,
  `KodPredmeta` int(11) NOT NULL,
  `KodPrepod` int(11) NOT NULL,
  PRIMARY KEY (`KodPredmeta`,`KodPrepod`),
  KEY `FK_GPP_Prepodyi` (`KodPrepod`),
  CONSTRAINT `FK_GPP_Predmetyi` FOREIGN KEY (`KodPredmeta`) REFERENCES `predmetyi` (`KodPredmeta`),
  CONSTRAINT `FK_GPP_Prepodyi` FOREIGN KEY (`KodPrepod`) REFERENCES `prepodyi` (`KodPrepod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpp`
--

LOCK TABLES `gpp` WRITE;
/*!40000 ALTER TABLE `gpp` DISABLE KEYS */;
/*!40000 ALTER TABLE `gpp` ENABLE KEYS */;
UNLOCK TABLES;



/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-28 15:51:23

