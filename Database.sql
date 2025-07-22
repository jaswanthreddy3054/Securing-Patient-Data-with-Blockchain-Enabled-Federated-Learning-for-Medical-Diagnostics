CREATE DATABASE  IF NOT EXISTS `cda` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cda`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: cda
-- ------------------------------------------------------
-- Server version	5.0.17-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `attacker`
--

DROP TABLE IF EXISTS `attacker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attacker` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `sk` text,
  `dt` text,
  `attacktype` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacker`
--

LOCK TABLES `attacker` WRITE;
/*!40000 ALTER TABLE `attacker` DISABLE KEYS */;
/*!40000 ALTER TABLE `attacker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cda_reply_letter`
--

DROP TABLE IF EXISTS `cda_reply_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cda_reply_letter` (
  `id` int(11) NOT NULL auto_increment,
  `patient_name` text,
  `hospital` text,
  `doctor` text,
  `diagnosis_ref` text,
  `diagnosis_rep` text,
  `illness_ref` text,
  `illness_rep` text,
  `medication_ref` text,
  `medication_rep` text,
  `labratory_ref` text,
  `labratory_rep` text,
  `radiology_ref` text,
  `radiology_rep` text,
  `pathology_ref` text,
  `pathology_rep` text,
  `assessment_ref` text,
  `assessment_rep` text,
  `surgical_ref` text,
  `surgical_rep` text,
  `relevant_ref` text,
  `relevant_rep` text,
  `reason_ref` text,
  `reason_rep` text,
  `procedure_ref` text,
  `procedure_rep` text,
  `evaluation_ref` text,
  `evaluation_rep` text,
  `plan_ref` text,
  `plan_rep` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cda_reply_letter`
--

LOCK TABLES `cda_reply_letter` WRITE;
/*!40000 ALTER TABLE `cda_reply_letter` DISABLE KEYS */;
INSERT INTO `cda_reply_letter` VALUES (1,'sharan','hospital_b','karan','Yes','No','No','No','Yes','Yes','Yes','Yes','Yes','No','Yes','No','Yes','No','Yes','No','No','No','Yes','No','Yes','Yes','Yes','No','Yes','Yes'),(2,'kiran','hospital_a','karan','Yes','Yes','Yes','No','Yes','No','Yes','Yes','No','Yes','No','No','Yes','Yes','No','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','Yes','No'),(3,'arvind','hospital_a','anil','Yes','Yes','Yes','No','Yes','Yes','Yes','Yes','No','No','Yes','No','Yes','Yes','No','No','Yes','Yes','No','No','Yes','Yes','Yes','Yes','No','Yes'),(4,'rakesh','hospital_a','karan','Yes','Yes','Yes','No','Yes','No','Yes','No','Yes','Yes','Yes','Yes','Yes','No','Yes','No','Yes','No','Yes','No','Yes','No','Yes','No','Yes','No'),(5,'Harish','hospital_a','Manjunath','Yes','No','Yes','No','Yes','Yes','Yes','No','No','Yes','Yes','No','Yes','No','Yes','Yes','No','No','Yes','Yes','Yes','No','No','Yes','Yes','No');
/*!40000 ALTER TABLE `cda_reply_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud`
--

DROP TABLE IF EXISTS `cloud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud`
--

LOCK TABLES `cloud` WRITE;
/*!40000 ALTER TABLE `cloud` DISABLE KEYS */;
INSERT INTO `cloud` VALUES ('cloud','cloud');
/*!40000 ALTER TABLE `cloud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloudserver`
--

DROP TABLE IF EXISTS `cloudserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloudserver` (
  `id` int(11) NOT NULL auto_increment,
  `patient_name` text,
  `hospital` text,
  `creation_time` text,
  `template_id` text,
  `language_code` text,
  `purpose` text,
  `patient_id` text,
  `patient_gender` text,
  `patient_dob` text,
  `author_id` text,
  `author_name` text,
  `author_org` text,
  `org_name` text,
  `org_addrs` text,
  `org_phno` text,
  `payers` text,
  `advance` text,
  `support` text,
  `functional_status` text,
  `problems` text,
  `family_history` text,
  `social_history` text,
  `allergies` text,
  `medications` text,
  `medical_equipment` text,
  `vital_signs` text,
  `results` text,
  `procedures` text,
  `encounters` text,
  `plan_of_care` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloudserver`
--

LOCK TABLES `cloudserver` WRITE;
/*!40000 ALTER TABLE `cloudserver` DISABLE KEYS */;
INSERT INTO `cloudserver` VALUES (1,'kiran','hospital_a','MDQvMTEvMjAxNiAgIDE1OjExOjA4','6465654','RW5nbGlzaA==','Q2xpbmljYWw=','112','Male','MDgvMDkvMTk5OA==','564','YXV0aG9ybmFtZQ==','org_author','b3JnX2F1dGhvcl9uYW1l','b3JnX2F1dGhvcl9hZGRyZXNz','org_author_464465465','bWVkaSBhc3Npc3Q=','Y2xlYXJlZA==','Y2xhaW1lZA==','bm9ybWFs','Dengue','typhoid','Indian','Skin trash','RGVuZ3VlIE1lZGljYWwgdGFicw==','tabs, injections','birth mark on hand','stable','cm91dGluZQ==','nothing','c3RyaWN0bHkgZm9sbG93IHRoZSByb3V0aW5lLg=='),(2,'sharan','hospital_b','MDQvMTEvMjAxNiAgIDE4OjU5OjQy','6476412','RW5nbGlzaA==','Q2xpbmljYWw=','111','Male','MDUvMDgvMTk5NQ==','364','Y2hhbmRydQ==','org.hospital','b3JnLmx0ZA==','b3JnX2F1dGhvcl9hZGRyZXNz','org_author_42456456341','bWVkaSBjbGFpbQ==','UGVuZGluZw==','Y2xhaW1lZA==','bm9ybWFs','Malaria','sugar','indina','Yellow Tone','YW1icm9saWU=','Injections','fainting','good','cm91dGluZQ==','possiable','Zm9sbG93IHRoZSByb3V0aW5l'),(3,'rakesh','hospital_a','MDcvMTEvMjAxNiAgIDE1OjI4OjQ5','6476415','RW5nbGlzaA==','Q2xpbmljYWw=','115','Male','MDMvMDgvMTk5OA==','565','Y2hhbmRydQ==','org.hospital','b3JnLmx0ZA==','b3JnX2F1dGhvcl9hZGRyZXNz','org_author_464465465','bWVkaSBhc3Npc3Q=','Y2xlYXJlZA==','Y2xhaW1lZA==','bm9ybWFs','Cancer','malaria','history','Skin trash','aW5qZWN0aW9ucywgdGFibGV0cw==','machine','No','improvent','cm91dGluZQ==','no','c3RyaWN0bHkgZm9sbG93IHJvdXRpbmU='),(4,'arvind','hospital_a','MDgvMTEvMjAxNiAgIDEyOjMzOjQ4','6465635','RW5nbGlzaA==','Q2xpbmljYWw=','114','Male','MDUvMTIvMTk5NA==','464','YW5pbA==','fortis','Zm9ydGlzIGx0ZA==','YmFubmVyZ2hhdHRhIHJvYWQ=','080_464465465','bWVkaSBhc3Npc3Q=','UGVuZGluZw==','Y2xhaW1lZA==','bm9ybWFs','typhoid','typhoid','no','yellow tone','dGFibGV0cw==','no','dizziness ','Recovering','cm91dGluZSB3aXRoIG1lZGljYXRpb24u','no','Zm9sbG93IHRoZSBtZWRpY2F0aW9ucy4='),(5,'Harish','hospital_a','MjYvMTEvMjAxNiAgIDE2OjMzOjMz','1234','RW5nbGlzaA==','Q2xpbmljYWw=','1209','Male','MDUvMDYvMTk5MQ==','123','S2FtYWw=','TMKS','VE1LUyBIZWFsdGhjYXJl','UmFqYWppbmFnYXIsQmFuZ2Fsb3JlLTIx','9535866270','TWVkaWNhbCBBc3Npc3RhbmNl','UGFpZA==','WWVz','Tm9ybWFs','Facing cancer symptoms ','Diabetic','Indian','Skin Allergy ','SW5qZWN0aW9u','Xray,Endoscope','Corp on left hand side ','Normal and facing stomach pain','Rm9sbG93IHJvdXRpbmU=','Nothing','U3RyaWN0bHkgZm9sbG93IHRoZSBSb3V0aW5nIENsaW5pY2FsIG1lZGljaW5lcw==');
/*!40000 ALTER TABLE `cloudserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_reports`
--

DROP TABLE IF EXISTS `doc_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_reports` (
  `id` int(11) NOT NULL auto_increment,
  `patient` text,
  `doctor` text,
  `cda_status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_reports`
--

LOCK TABLES `doc_reports` WRITE;
/*!40000 ALTER TABLE `doc_reports` DISABLE KEYS */;
INSERT INTO `doc_reports` VALUES (1,'kiran','karan','Permitted'),(2,'sharan','karan','Permitted'),(3,'rakesh','karan','Permitted'),(4,'arvind','anil','Permitted'),(5,'Harish','Manjunath','Permitted');
/*!40000 ALTER TABLE `doc_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthcare_sp`
--

DROP TABLE IF EXISTS `healthcare_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `healthcare_sp` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthcare_sp`
--

LOCK TABLES `healthcare_sp` WRITE;
/*!40000 ALTER TABLE `healthcare_sp` DISABLE KEYS */;
INSERT INTO `healthcare_sp` VALUES (1,'karan','hi','karan@gmail.com','9535866270','# 4545','09/08/1992','Male','560016','Bangalore','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%-2!&)+...38387(-.+\n\n\n\r\Z-%%0.-+07---.+.++-7---+-7-+--/-----+/--+--+.+-6--+-0-ÿÀ\0\0Ì\0Ì\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0C\0\0\0\0\0!ağ1AqQ‘’\"BRr2b¡±Áá#‚C£Ñ$DScsƒÂñ%34ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0&\0\0\0\0\0\0\0\0!1AQaqÑá\"ÿÚ\0\0\0?\0Û®ä7¢.ä7¢.ä7¢.ä7¢$]ÈoD]ÈoD]ÈoD]ÈoDÜ†ôEÜ†ôEÜ†ôEÜ†ô@]ÈoD]ÈoD]ÈoD]ÈoDÜ†ôE2Ñ%İ½m­lÁ—a‰ğá´sq\0œ€¥IAi Ş‰5ÈoE?·ñ#’Û:J$ÀwÏş”­?p™‰1l?>N\\|¡·ÈıPi5ÈoDW!½Y=¨ß÷Ésÿ\0h¢{GjCâéX´ä[v¿¢\rsA½´ÈoE–É{Ns;+İ‚iŞÂ7š3ºGî´;:Ğ‡Œ‹±ğâÍp8ä‚}Ü†ôEÜ†ôI½©Şˆ¹\rè‹¹\rè‹¹\rè‹¹\rè€»Şˆ»Şˆ»Şˆ»Şˆ¹\rè‹¹\rè‹¹\rè‹¹\rè€»Şˆ»Şˆ»Şˆ»Şˆ¹\rè‹¹\rè‹¹\rè‹¹\rè€»Şˆ»Şˆ»Şˆ»Şˆ¹\rè‹¹\rè‹¹\rè‹¹\rè€¦Cz$Du97z/^iÉ»ÑpŞÒ;Z$`{®™Xrìâop¿N`WÎˆÛNÛ	w‰9V	‰è´k!7Ş\'u?EUevB¯ûe¨ÿ\0µLœD£ğÓŸè¢ö6Çû#3ˆ“Ó5|W»ÀìnüJ±œ´øğAs1h‹­k@ kh\0\0,İ¥ÑRÍÚ]DÍ¡ÑÄÕ£ÑULOôUê¾4êI™ÀA„!+³vôì}Ü¬Hb{ËY­v$ãÅsqg‹nQıPhò^Ò¦ SíÒ|.4)™Ñhö¿n.æ=§ˆàæ•Â˜‘Ù3Ü8q$OB}Z²CúUnXbÂÂ~ğ‡èPníèİè½»ŞŠ¢Áµ1Ä+®‡{NDp8qVÀdİèƒÛ¹\rè‹¹\rè‹¹\rè‹¹\rè€»Şˆ»Şˆ»Şˆ»Şˆ¹\rè‹¹\rè‹¹\rè‹¹\rè€¦AÈ\"™S ‰È\"™S ŠdÈ Œ›½L‚ñİ\ZˆC‰@pjÁÛ<-V4ã±${¸\rø/4š:Ÿ%©ûC´Œ	)¸ÍºØƒÜ.·ó!b}‘u*ÅÎy<éÀ~CóAÜÎZ}4Õ£ÑTLÏªÉ‰Ô“3ê¶<ê­6¡E™Aa\ZmD‰2 ¾:eÑPK‰óSl÷İğ)‹.Ë®™l(±%à:‘_\r·î’**4ñğRĞ}æZy…K ³§)EØÙSm{L7€Xö–8m\"…fÒñhWCeNĞ…(vÈ\'Ì(“¶SÈ&R1|*ñ0\\õêZìQÁ»Ñ`Ÿ™¹mÁx¥&¥]\rŞ_üBİ$]P0&S ŠdL‚)@S ŠdL‚)DŠdL‚)E2\ndL‚)E2L‚)E2¦AL‚D^]2	¸Ã\rA˜ûgŠE\nbè@ÓÂøXüœÕ ÃoƒØ}®À¿!3@=Öµø~‚VcÜhğAemB‹2¢ÄŒ£º\"	˜tT€	áUc+e/Ä!Œ\\ót €Æ—`*­,›,Ähr°Z_)Á£Æó{¼\0\nÿ\0³=œ:ñ\nB,­\"NÄi˜9İ¯Ş;Ío]…ì46ıHïÆ,wĞ½çöU™ùD}”ÇvNŒœ9@ˆ¢<ıçÄv.râ»ì¸<¾rBãâ_a\n7Qğ»0µŠdLš«8ãçµ»ÏßO’î›ÎcÚèqa›±!8QÌpÉI•‹Bµÿ\0jı…ïØgåZÜRÖÿ\0qaı–=\0‡´=¸W4ñk‡•jÎüOµm\ZõéegGÿ\0ä¬Ç~7\r+è‹4à0Í–­¥g·Â!?‘_HY\\\nÊ­€È\"™à5{L‚™S ŠdL‚™S ŠdL‚Nˆô£Ò€§DS¢=(ô )Ñ10ê…>µWZ ?u±#a‘ Å‡†ğ\rÒZáC.+ö•ØHv|6LËDˆa>\'vèq(âÂA ‡\00Án²ÄSCÍr~Ùáˆ²\r”2ã\rğßİa¦KM÷¿¾›o±Mkç·Îw‰OKÂ¼n€÷¸ğkq:ô¥™ìÊ‡uÆŒêXÑb<WéÉu–u-.`@ÖşË_f^²ù×³½€´¦.˜R¿g†Æš÷0ñ\r8Ÿ%¦öwØÔÅŸŠéÈƒìûúG:d´Ëÿ\0J/ı*6¯då!Âh‡	Œc\Z(\ZĞ\0?éQïı(¿ô©‹D#¬¤zQéQïı(¿ô§c©òu|ëí.Ä2Sña@mYiÄ–oÂÈîxkÆC\Z¯ ïı+;ö£\0>nÄ¨ûk†¡Ôü•mo©ŠüUöOÙ´WC™‹$i¶Š—^»	®\"„Ó\'‰Z%šêa†Ù²Ò0\rs(’Ï£‡ŸK~MLïm91×ñî#ZtŒ?JU:&eÎ\n{Ò¶±\ntE:#ÒJNˆô£Ò€ô£ÒJ=(J=(ô£Ò€?Úª­6àx+_J‰9\n£áAÌËÄâ0¨?’ç½¥\ZÈ?†¥ùÍW¶„1×ÛN!0\'aºŒxqë…Eyd¼ì¸­K÷¬n=½Ykzt´ê}:˜O÷[ÃîÑ.ÿ\0EZ´8%ßè¯6¬ãÒMşˆ¿ÑF¿Ñú\'ttI¿Ñú(×ú\"ÿ\0DîtI¿Ñú(×ú\"ÿ\0DîtI¿Ñq¿5œ±8û#òJë¯ôUÖ´f‹®ußs\ZÒ¤†\n-“Pµqî^º\'DÜ›¯?\nP`«İ9İ‡Ïâ8y+›\"V”à­ÆÃhÖW“š³j½–|)ÿ\0JD&ÓåKô­¬CÒJ=(ô =(ô£ÒJÉHòG’€y#ÉHô <’\"jLH´ùW3iv’®t	V¶,Fá!$@‚¾\'~ù$Î•µ¢¾Ómki{ÜÆ´\n—8€¥pÓ³†!ÿ\0e„è´?ı§ú0úBtYE‚»ÈïûDQˆ/Â2d1€ë‰ÍG™è©6g¾yùá{dÍÖßº@¾¨æVº.&Ï´Kc5¸Å!®“—Y\n/EæŞ&“¯ŸÏ4r1öûÿ\0ÚUîˆ½Ñ3¢/ôUìÑÔõîˆ½Ñ3¢/ôNÇS×º\"÷DÍş‹Âş‰ØêyÑ(+‚å;I9ó[|Ê—Eºæ‡È\0x«Kb»†ø˜£İ$šÕsr“¤âMI5\'Ä•ÛM­Ú}CÏçò#O™÷üGıZØ¤¸C\'º‹ÿ\0\n+L7é\\‹¸“h\0}ÕÁ¸ÃŠÛ‘XÇ·ñF`ñH“[ûLşíÃ½hÿ\0—ñèï5¾,óéŸ÷hCûW¾JšÅ·aÌ4˜d^i¤Ho±!»åsOn×WåVh‰‰Á^HòG¥H‘ä$y#ÉéG¥”zTƒÒ™Ÿ*TGÓå\\\'n-—É.»8&+ÛÆ=O\0¢gJŞñHÜ“k[O›{à@}ÉfØó\r4tGs…ò.òLwÍ†ÑkÑƒGå@ï›\r†À\ZÆ\n4<Şaq›<ü™~ÊdÄçE[g¢aD‰s›0äÌ}Óe®kÇ8;ÈÕhñî²<::Vµâ˜‘Q\\SëNöchÒ®–}¥Ü@‰„ì[äj±[î¶jı3•5Ë1í*PEAx¥Şè´lw0˜‹qÄ·á=|j¹“\"·]F?›]‡‘æ²eãßŸpúÌ\\ŠdñêRïtEî‰ºôI{À% xœÏ¶/è™‰ÑBãÁ¿¹ğ	oÅ7a9Ä#í×CfY-†*h^q$âkâJ×‡‹ky¿ˆcÍÊ­|SÌ¸^Ü»º…\n ÄŒûîÉşHò\\Ì¼z\'{kj}¢r+škîaÓ…:ºª®EŞÖêÊåwÍ3·Ak¢´–Ì.Ru6Ê´Yly$xwÜ#Bxƒ2ÁîÅ>Hƒâjèû7Úü:@!ÌB ‹ãÑí?O\"¸‰yÌÂvj+ªÉ˜$	ˆ·—xÏŠ²?ªénÇ›^Z»_•+Ò©lU±áCŒÂ.Äh4<AæÓ˜*ä¥uo‰ß˜{éG¥”zT‚½OÒŠæ9µ)èÔZ±¸6}ndœ_»fPÙÀªÛqh×b>éı	eN\\«O\Z×5Ë$úaæß¯Xşİ4i¥$Â†ù„ÑŠ¸L¼¬—ItTÙzbúP+œ±ŞÒq]ö\"Öû,Ü7“HQOuÂàí\r?5H¤$N§jãÉ8ï møp!º4gµ°Ú*IÆ¹ÌŸ‹v¾İtìOtwPk\rƒOÎâ9åÉGµ-ˆó\"c<¹°XÖ1¼€¥â9¸ø¨AtÉ–mâ¹©[\'şqøƒ­‰Ö\0ÆÌ>ëpšÈ†ŸQ)‰ÉˆñècÅ{îğ1 øİnÍ9TUqÿ\0Öçò-^³y×÷-°}±o»)5F¿îÃ˜<à×G5ÔöÎØû,¤H€ñã»„<^îz\n(æ©s¶¤hĞáAŠòö@¨†$WÄó]ëšzêZ±~§hÅ4·¿’¯hçÏšPrõ ®/6$àˆde¹x\"+D»ÒËxS*t	¼×:ØÉæMSWH–ÜyÏ`\'îÅ™–¨ºØğÇ€}o¯ê´¨¨øV%ìşjüóİÈÀpÇÀ9´[<“°…£îÇİ±¥×¢+ÑèŠæÚs	/9µ*¹…ãÎmAÎ[î÷]ˆû§ô_=°¯¢m†T¶¤Lñ!Ä°ø°ğŞKXyüúÌÄI¶=:×(¬ry®\\&Eª’ÒiQšäã\\«§U$°Tpä°å]9MO½ªh={}4¯S•ESw‘y4§*¼%6^¼.M&*Q)¤—$9Êt¼UëŠiÅriÎS§ZÕë˜ˆòy•ëœ™{•¢ë¯Ù¡ÿ\0kwıqúš·	€Ä,ƒÙ}A|ÉÂı!²¾\0ÕÇÎK`’à1N8Õ^ï³£i€æ\\Â+˜Es£H®aæÔ^ÌoT^ÌoTóğª8µfİ¶ìÿ\0~ÛÍº\"°‡…	>UŠ+Í»ÕRZrUùTLm[V-\Z—Î¯ii-p-sM<AJkÖÚ®Ë¶5\\(È `ğ099g3’¯‚îî#K]ËÀy®¦F~4ÒƒÍzq¯P›8Ø‹˜íDĞô õDKiÊq¥‡¥_QEïx£Jş4«è/Q»Äw‰¤~4‹é%éƒ$ÄS¤Æ3åéé“ ÄM/Î¹é§=6è‰§DVÓ­hqÏSì+!Ó1FÚ}÷åà3NØ]Ÿ‰0CVBù}#÷Zƒc6ZÆµ­à)ùõ]+Mûz~/o6ôŸÙù\0Æµ\rkZ\0À.¶\\Pqj‡#/@1nõV-êİê»½M=®aÌ\"öcz¢öcz /f7ª/f7ª/f7ª/f7ª¹·z¦¢²¼Û½S·³ÕÌoTSò\0ü»Õrvİ‚È-{ZáÓ˜<–Œö×›wª5(6ïUÆı°[c²Q!’è\'¼o§+œ}ZK\\\\8ƒèÛ/§—ò¹ËW³¬ˆ)w¦#¡Tš~Ìy8uŸ5ğÈÄD¡uvaéS%ßÂñQæ1T]Ÿ™‡ğ_,!Ê“Ic¿ññDJH¡ÍÁísOâ¿ªHŠ«§	Ä›Ş#¼PûÄw‰¤~$³$ÄQ{Õ\"^N,O¹\rîÌO5:Z1Lú\"C¢+©>ÈÌ?ïÃ›Îòêºk/±0›BúÅwâû¾U¢’ÑN%çæœ<ŒŒXæšO‹¸4u+´°{\ZÖø¤D´÷\Zzs]œ…\0\0€8\0\0_ÉÙ xoUx¤Cn>-)æ|Ê®Î²ø}Ş\\—G\'(Ë½Tˆ\0æİê¤·«wª»KÆ\nsnõJ®cz¢¹ê‹Ùê€½˜Ş¨½˜Ş¨½˜Ş¨½˜Ş¨Ùê‹Ùê‘Şœ‘Şœ”\'EŞÌoT^ÌoTôäôä†‹½˜Ş«ÂsnõIïNHïNHh‡Â›wª‡HmòşTşôä¼1NHiÏÌY`ü¾_Ê®dtòşWZè™ÓÎA\r8˜ö5xİ=EUl~ÌÂ<aB?ØÕ¡<\0˜{G€DMvÎd Á‡åü¥Cìœş/Muß–\0½k€Oüqû8é~Ï±¿uÛÑ\nÂ‘Óz®€xó)ànª){\'éòşU”½œËåü«&¿ œ2	³F`ËÍ»ÕIkiÍ»ÕyŞœ—½éÉ\r\\Û½Q{1½R;Ó’;Ó’\Z.öcz¢öcz¤w§$w§$4]ìÆõEìÆõHïNHïNHiÿÙ','Authorized'),(2,'anil','hi','anil@gmail.com','9535866270','# 43535','09/08/1995','Male','560016','Bangalore','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!3!%)7...383,7(-.+\n\n\n\r\Z\Z/% &---/.+-7---/---+--+---------/--------------------+ÿÀ\0\0á\0á\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0\0\0\0\0\0!1AQaq\"‘Á2B¡¢±Ñ#CRb‚’3Sr²Âáğs£$5T“ÒñÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\03\0\0\0\0\0!1AQ\"aqğ2‘¡±ÑáRÁ3Bñ4ÿÚ\0\0\0?\0î(5W9)iî×?Mã\\qöÜã±½åy3ëpáåiçâ>¿vøôÙ2sˆåñyšÌü”şÆ0o—Ÿk{W7\'«Ş~åvù½”ĞWşÓù5’gmsğlqù‚W–Ş¥¨ŸûmòˆşÛF“vZ3¦¼}¹ïıTú\Zòı#øO²aÿ\0İ6—>j[é²)ÜÇxƒobŞ«š>ôDşŒí¡Ç=&aè2nzSIa t?{´Ëÿ\0ÕŞ÷áõ<7åov~=??çg—&‹%zsz8ŞšCšEÁFğWF&&7‡’cnR¹Jk*ã…’G1£~yà©“%qÖmiÚ­&Óµ\\÷/gdÕÇ”Q,?i\'25rÕóú¯Q¾_vœ£õ—W’´çnsú5ôyÎ±yĞ†.şËÇ\\3=^‹dˆèÚE“bgªv¾+hÅXg7™f»F«w;ÖÍi{wû\n¬ÍS´°IMõµ§¸«5¬­¼Ã_Q’G¨mÁØœãğ¼YnMÊµOìîè‹ÆÛ´Á©É‚}Ùåã·×ÉL¸i–9şn‰rìUm»;24vâ\'ñÇ‚ú-6ª™ë¼uïNlÅ<úymW©€€€€€€€€€€€€€€€€€ƒDí{Èkœã°[Z+kt„Ö³iÚ¿.å‰k¥\0#ÑG»ñ;ñ|>?1ªÕ[Q‡hş~.Ö5Å_tü“[¹±}±vîN<Q^rZû¥9û¼U¦ŞÛÊÍ]“º†4áNëÅIªbX^ÅœÂñ+:Â8…S	Ú%YÉb.= «r´+Î\Z¢%¥•¯c‹\\Óv<|˜U­­ŠÑjÏ5¦+zí.•›¹eµqi6FØJÏºíãğû—Ói55ÏMã¯xq³áœVÛ·fÕz˜<e\'ŠVË,émë?[[Èy‘¹p½SS½¾Ê:G_áÓÑaÚ8çğCÈÔ=[tœ;n¥»—‹6åèÉmù\'9×ä´™İ]¶^Æ+EQ2È#WáWuMMØÅI…âXÕ”Âñ(Ò5ch^%‚ä…–ó¼/ÕF6FuVü­şì dz÷ÑTã`tehõ£:üˆä­¦Ï82E»wù#6(ËM¿\'WáÀ9¤¸Ò5F}\\LLoÆÓ´®Rzú¡RJíQ±Ï¶û\r]ú•2äŒt›ÏhİjWŠÑXîå43Î^şÑ.t’ä›üJù*ï’ûÛç.ìíZíG#¶oø/U§³V0¦°JLm[VÌ³µ‹Hª›¨æ(š‘(ò5ehi XÚ\ZB,cf‹ XY¤ï±àpLvÚKFğÁ–aÀ<lì[?Î+KÇuk=Ç0«úÊc7tÑéœ[ıCò®÷¦fãÅÃ=kËğíü~^·N//LºO€€€€€€€€€€€€€ƒÍgıF…&ïec!wHñ\\ïT¿\r¼ÌGûÿ\0O^Š»åßÄ<¦oÇf½Ûİnà?ºáá²éd–Ä›“à´ßyW³<KZ©)Q­êÊR˜¶…%lŠ,B,‹5„IVi²¬lÒeXY¬0¬ÖJ™ºq¸oo·ÿ\0«ÑÖ¬ºK/GÕ\Z5NfÉ\"v‰¤ìÒ^ïJ¾Ù¦¾cöyµÕßş%Ñ—Ğ¹\"ÒC»Ã{ä>\r5Çõy÷iôèh#š|‹û&ówóËÅÑíÉÕ!…LI)1•µeœ¤±ËZË9†`õ¬YM”sÔM“Á#–V•âd+KHF¬m-!B°³HbTY2ŸÑÿ\0èÇ÷Y[ª.hWÓÿ\0ƒı§…¿§ÿ\0ôSñı¥«ş}wu5õ €€€€€€€€€€€€€ƒÇô‘ÕS»to‹oı+‘êñîV~?éïĞO½hø49ÿ\0T89ÃÛ5ÉÅ<ûõgi±ïQÌ–v9k¤Ã;^´‹)0È¯Ä”/I±³Ş³™Z!îYÌ¯#–6–‘î+^¨Jd4w•è§*²·T|Ìf•t\'wXãÿ\0ÃâBôzto¨¯ãû2ÕÎØ§ë»¨¯§qD\Z,õ¥ë(ä \\Æ[(ü§´Irğú>=<ü9ş_ÓÓ¤¿XøòxL‰/¦ŞNä¾wóuï	Òàîx¥¹J#¢ö=Z,‰†V½^,®ËÄŠÜHÙC\"q,sÕfËD0½ë9²ÑrÊex†5E€g­~„Nå¢;ğ^‹r®Ì£œ§tuKy¦—c#Üoğoµt}\'÷µüFßŸş<šûmX«ß®ó–              ²V5Íp»\\Ò×\rà‹¢b&6”Äí;Ã’TÀêZ‡0Üõo\"ÿ\0y‡QïòY±N“Iíû;Øï)í¬ƒI Œv*-Ç\"9K^²‹/0È¯Weıb·6PÈ£ˆÙk¢l¶ÌNzÎl˜…Š«(‚E3=o®:÷RóÙ,T]ÁƒSq<ÿ\0ÏŠ›Ï2°èy¥“¾JÀágÉõ²p.Ô;€hî+ét8>ËDõrãjrqä™•ìyÄÛ¤JúFÍfAô¢t\\Æãf[ÖTßPÖt·b¹ş£ ¾\\mHç_Ö?®¿›Õ¤ÕWşÎÓ×÷şÚì•Yo«qÃÕ;¸/¥¶äëZ§‡hï	zw‚¶í(÷YnÑ]$İ\ZI¹²—QºT@A–(´¹+Ò›«kl­uP¶‘‘»ŠÖÓ´m\nDnÇšt-¨©³ÜÓÕ+˜\\4ŸGYmõí«ÙéÚIË~;G»¬øÿ\0róêóÅ+Ãgöu&¯£r@@@@@@@@@@@@@@AÌóÿ\0¤N¨¾–…ÀÈ.ÙªEˆŒíd{·»PÕ‰ô}Ú}.şõÿ\0\'—.}¹UÍirS¥¼’h¸—âKä\'âN8ï:×¶Ó·Gšúz‘q=«a´7ñ_!ê¾“4™Í†=ŞñããÛåÓ¿ ×Å¶Ç’yöŸ?ßïóohr•¬Ù5lwÏæ¸U¿—RjØº6»·hÆêÓH·4E¦‡K)Ç0¼ZÈ;•6XAsbqÙã‚´RehgŸ~<6-+Ê“5•íf\r³»`çòV›íÑ]ú´UU8ÜŸóÁzt:š»í£¼ıwc©ÕSyõí]VWÔA8¨9²‡i2VXî-…µ®÷_wƒ<x£#İß]ş/–É–÷¿§›±æ}2¼\'Ñ­£PÁ“€1s7;iox¸½¼™ôóœtzqfãå=^Õy[ˆ9‡IÙğX_CHû?Ñ©™§o…‡ïo;5k¾»K§ßß·àòæÍ·»W‚ÈÙ&ö’A‡¨Ï#wî™y[\ZÚ»]­×´îåÅMi¿UfÍm>4®±ïÃÍ/ŠÏ6äJ[¯í_5®ôje™¾vŞ;OñõÉÙÒú•©îäç{ÿ\0itµn,w1¬w…óY°eÓÛl•˜ı¿>’ícË,oIİ±‹+}æ÷´ùœ_Êü)\rÊq¤siòVã„pÊ§(Å÷éwÉ8àá–2³G¢×vDä8Pj2ƒİ{îx•ÅyáˆŞ|Bg†±¼ ¶7;oGè—¿½Ÿ”xïøøışNf§Ôë^X¹ÏßÚS”±­¶²í»@üBú¬iJğR6ˆğàäÉk[ŠÓ¼®„²VEşóNÅ¶ÓUwİ¤­¤};Úö9ÂÎí$9ã¨êñ10ÉÑŞyŠøú™ˆm\\M»µ;kFÃªãÆÃ—¨Áös¼t{°åã§«Ù¯3a‘é:~O¡ÿ\0šœ9°ê=[}iˆáp5€W£M‡í-Ï¤1Í“‚9uqÌ‹AÖ8Èû–‚N8é¿i7×æ{×Rg³Ã\rµmU»-×ëÜ9©­{«i@Vj9©0D·í±®Ş1çµy-]§fñ-vRq`ìÜ8ê#Ò«öQxÚÑ¼|Vãšó‰Ú^›\"@ÊªvIk<v$Ñ6ífÚ…Åzàê½+^b#o—ÖÎ¾\rvY®ûïóHvFÜãŞ^	ôŠv¼ş_øõF¾İêµ¹ıïwû¨G÷ı?²uóş?ªDy‚åÄÍÍ€NzzVë¼ş?ÆÌí®É=6‡‚åó¹Æâ7¼è´ŞÌmû8lÂ×ï_G‡I\r8qÖ#åİÅËù-½§vöV±æZ¼¬ı),50h÷íùw-éC;J#ZAÄ+Ln¬6l{fakÁÍÜ²˜ÚZÄîÒ^Z9Ù,N,|n‰ãÏxµÁA#j´Ä^»J\"f³¼;öigyB•“²Íw¡4w¿W(¦òÄw¹qN;m.;Åë»r²\\@@@@@@@@Ad²5sœCZÖ—9Ç\0\ZÉ)¸ùß/åGå:çËˆkİ£?go¢<.ãÅÅv±Ò1Óg6öã¶íœ¯F\ZÜ,4X<ÔÖ7•&vk.¶f¨R…ÁH“*N‹°kµÎYä¦üÖ¬ì‹•y]ÂÍÃçu¯$Ìónó§F¡Ğ;Ñ·oúŒéxäÖcŞœ^5ö·—¿u\'Ì{ÁIÁ›=dê(¤¶”ˆ[ù½/p=z4ÔâÉlsÛ†’åÍ‰u¢íŞ€VS±ÚŞæÙ£ˆÃHø*ğsNüšBVŠ­*ĞÊXàGxŞ7(˜İ1;66hğ×k°î;–Q;KN«ú;ÎAZĞóh\'\"ÁÔÓ~Ä¿”“~r®£ÚS—X_\rømówÅÈt\'¥¼¬` 14ÙõOá¬Gm)\"ç^­%8²oá†¢ÛSo.Y›´öë\'E¼†¿oÁt­/.­›IçpÀ|ÕëB–lAYUB‘p(…TŠ“t)*RG+}(Ş×%¦öïÔ«jÅ¢k=Ó[Mf&ºÉ\Z×´İ¯k^Ó½¤\\¾~bbv—b\'xŞˆ‚„¹çJ@ËO\081•ßÄóføŸÔºz\Z{³g‡WnqW‡^ç‘B²J„­*\n%7&M‰aÛ‹yí;Çuë(9všÎÓëş%4’aÛ:8ËF²‚\'8ŞXo¤âK˜‹òXXy’¹Zœ|\'ÇW¿\røªõ¢3ÓEndú°Óé~yt½‘±tôUÚ“>eâÔÏ½ÔÀ:¸½¬¨™[õ–=!¬fJ‚¥\n‚‚ë©¢ºĞu<Ä¯ë(£i=¨\\è!‹}×4w.>²œ9gãÍÓÓ[|qğäô=bò·qìì¬ë«j_{!¼˜40ı$÷®Ş¼8«\\Ü¼Öâ¼ËPJÙ’Ò¡*Ò‰Q@5ö `İB[¥|.#`oùÊë:ò•ç£Ñt-”tjj)ÉìÍ•»´ãu¸ÿ\0qa­®õ‹7Ó[Ş˜vÍ{%é*Bü­T ``åÔF~$®¾š6Å]ÜüÓ¾I]”OÕ`{UëÕº5@­Yu“qV)uÔ¡[ ]è=G–’xIô˜Ù\Z8´Øÿ\03|ƒ]^Qg¯InsmWV#I¨Ø÷ŸÊÒ|—>µâ´G—¶Ó´L¸¹q8“rq\'yÚWyÇ[tJ„¨º%iP,ÒÆÊz#¥qoµen­#£Gó˜²¥Õy_ã§›o<Qâ”á¯ Ún¸îŠ¨0Îä¤fåJ—}î¡ã—PÁñi]}4ïŠ>»¹ùãl’¿(cî>ÕzõRİ\Z›­Y¬çà£ªYn¥Un¤.‚·@º\r®jÕuuØ9Æ3ÇL=¥«\rMx±K\\¶H{\\ğªĞ£›{ô#™Âşî’çik¾X{u¶9s;®»š¥ĞP”J—P(‰aœÚÇ¹VÉ…Zû¤I³o“?gùŠÎıW¯DLÚÿ\0¨Ò[şö´_Ø§/üsò1ıøù¾†§zã:I\"Ô”{¥º=\Z˜\'Ù,&3»J7_Ú?Jéh­½f¯¦=è–ª‰ıd-âİÌa5¼ò–a¨›·±óZL©¬i¯º² ­Ğ.ˆ.‚è¥,s^5±ÁÃ˜7ÆÉ‰Úw{<ÿ\0©*vO{¤šÛç\\ı}ëOáõù=š©åñ7]K¨AK¢T%@Ç0»OŠ‹tLuFEœJóENt\"ìiqç®Ê:ÉÒó\nœÉ”©·1Ï•ÜXâêÑé©±JØc{Ã¼ÓÈtPE©<v~dsUI#Z/,g®ˆm.h7hæÒáÌ…¾Ÿ\'÷Œ³SŠ®Mê¬âÂp~-ş/î>©xîğVYò¤=­!«\0îz­g²f;£¢ŠİH]]ntA¶Ëµ½c(…ï¡HÀOâÒsOò†\ZpÍ¾mr[x¯É©ºİš—P)tº\n]%‚’ºçSO‰Ü¼ó;6ˆİ>¾«êÃ6¸ÜòZbù©eÑ6J?]Vá¯ê\"âCÊáƒò•æÖäéOÅèÓW­R˜/Ô˜€€€€€€ƒÍ¸A­¨é7M4Æ¦ z‰]w[ì¥\'Àˆãq¹u4¹¸ëÃ=aáÏ†x££[“ªÄ€µÖÓ¶ úÃxZZ»NìâwR¢€ŒYˆİ´|Õ¢ŞUš¡¹¤ksWİ]”ºĞ.t já€ÿ\0;Ê\n]è)u	QñÆçz A7 ÉÇ[Í¿×ŞU&ŞŠ°U½¬.y°ÖqI´¯6Úäl—-tíŠ=g¾×lQíqòM‚×%ëŠ»Ê´¬Şv‡tÉ=E1‹26†´mæw’nIŞWÖ›LÌº5ˆ¬m\rÔ²ªYG$\Zšú&È×1ícÁkšápàv13¼\"b&6—\'Î|ÇšÆJ`é¡½ôEÌ±wkxâ1Ş6®–UmÊü§ôxò`šó¯F‚›+¹¸<iÛêw~õèšxcOfUˆë%¼ÓåuN	Nğ¿é0Z>ğ<Ók¶Ÿ|^â{Ç#­§ß¸ñÈë©÷Åî\'¼r:è7Åî\'¼r:è7Åî\'¼r:è7Åî¦Ö9)×A¾/u6±Èë ßº›Xä¯Ò`´}ÖòM¬oreX†¢]È4à“Šj2»Î\r\Z~³â¯„M’òlUV¸9­,ˆë@tmøF·Xq\n™sÓÏÂÔÅkôuÜÜÍøhãÄİv/{¬_#·¸ùj—“-²Nò÷R‘HÚŠVk¥\0‚¨0Ë\rĞ@š™Ë9­KRI–—Ÿ´mØş÷6Ä÷­išôû²¥±Öİaå+z8ªyÂF6@8a¢½ÖÛ¼14v–²^¦\Z§ŒócÛæVÛ_ñSÙ§Ê;³ }¬?î|”ûm<IìÖò°æMGï\"÷şIí´ñ\'³[ÊÃ™“şò/äÛO{5¼©ÿ\0OûÈ½ÿ\0’{m<IìÖòÁÓıø½ÿ\0’{m<IìÖò¨ÌÙÿ\0y¿òOm§‰=šŞWÊ¨ıä^ÿ\0É=¶$öky^ÜÅ¨?iûŸ$öÚx“Ù­åš>ê¹¢ƒÏOm¯‰=š|¶´©q£Œ4ø¸Ÿ‚¤ë§µV7™zl“™4páXánÔÇ¬7ß¢{ òÏ}NKwüš×\r+Ùê ¦X5OŠ Î\n           £š\nS‚$´|E’‚Ï¢àƒ¨¸ Äê-4<>ƒÁÂ‡‚¢àƒ;(¸ “¢£à‚\\t¶A¬È-1ƒ±7S„İHXh[ô$¡ ¸Q ½´FÓ„ˆÀA}ÿÙ','Authorized'),(3,'Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','#87827,Rajaji Nagar,Bangalore-21','05/06/1987','Male','560021','Bangalore','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0g\0\0\0€\0\0\0\0wÃ\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0^IDATx^å]	˜Õµnò€gÄ\rPeQY4Æ¼$>1âAQp‹Æ˜¨E%¬3ŒÊ\"‹ ‚ÄÈ\"Ì\0Ã Š²*›¬Â€ **› çıÿ­ºÕ===½ÕÖ=ï~_}30ÕU÷ÜÿıœÛe#P\ZÆ±ÃÀ‘ÆU¦L ğ_å3+k¦/u\'íÆÎÅ\"9‰Ìx\0×ƒ\"3^9ào¸fò2ÿ??gÜ/òn‘ÕD~9’$Òb–œäæ\\,6ø‹±è\Zë§	Ä4,4Ş‡gäàz¿¯È©Â”]‚ÔçÔ)‘yO™ÜÁÕ\\ß§eˆäõYò’Ègïàm™%òùl\\sŒŸü÷æ™\"+Ç‰Ìï#2µ3¸\n,9/×O{S¤Ôç4@Y˜.İñS!–VŒÙ”ƒÅÏÙ6Wd+/üëâ½Ûò\ràÖÿG$÷1\0u_ğù‘¹9z0e@J=p¾ÛdŠStQ<å÷Ù0ÕXÜxÁˆ	µ /z\\Ø-Ò»\0iñà”\0(µÀù0Kdº¹›	Ê,ìîõe^lÎˆFIWÜ¸x8	À(cïÎ}TäÇï|)5À9zÈXZX\\œéØÉ«ÿ-Rğ{ „ƒE±·ñ]lˆ¿c&×N‡~úzµo\0ùÎ¡¯\r…ŸyO+jö“ÆNN–ì~®`>¸hP‹¦wÅ\\À¹>Á9`´R&@ú‹lß?`4°uë&aÓ˜	9y¸Êãá8GšµæcÈ|îZ»;ßÉÏÓQ\\mŠÚ‚<…Ç?pr©_ ÊH<­£•~Ò€ÁìŞ8:ĞôhÕíÛê@ş€³V™Ö1z«ø\n\0‘ƒ´%ÇŸ…\'=È{p(Ïµ¹œÿ4tDEÂ‡Óéè3aÉ­|5h¸Ìú[)‡¿åÇ@ÙÒ\nrt]b÷ƒ~†ş¡(ŞÀ\\ŞrÎûÿ\nê™5ˆo…ÈHp8O:Ã:6ÇĞ’ËÃ;p@˜±1î¼÷{§¸‰ÂŸ½LE,à*<Ş“²6I-N\'	+ÅÛœ\'Lñæ.÷xÎñ£FH†à,zÁ`º¨ÜaWZö²kÜã\r8ó	r\r#Áé¦kŠÅáÀ=Ú9uQ÷xÎ\\Òtö2˜é&­ŸbF°Üÿ…+Üã>8ßm	Æ¨Ö\"^åæ‚yıl+Y€\\îƒ“4si0\"¥æ=k\Zˆ\Z¸0Ügò4gî?İMšyÍ5|Ã:*9—®œ£ë\0–,]\"àlAŞIéS\\;:Î;îrÓ¼*\'‚ÉSú±»İ|\'“‚ZïĞ\"ux¸ÎV5ÉòŒä²tÉÍ…òãÙLmëpÎ”CƒJ\\ÇŸúÀ%#¶§JàÇºúN€£}8ÖÑ>íèrºÎ\\3dÃ‰;UÒäêb\'\Zµ\08‹(¤Q@ñ–VàäšU,¬´T5g‰Ÿê÷œ¥8H‰88Üåœ\\³„vZ×ÒgF«p[KOpşpÎ’ái\nciÜU¥Yç|„rŞ´Ô9Ë_1­5(ËÏÓ8‡S¢®„Xİ€’NÖZÁG†ŸÃ\n~•*HuŸèü\0ÎSMéà )`<Ê]ƒà§ıÁ¼Û.J8l\'Ñ6b9<Ü‡“aZl49K›¯Ãt»­íZâ04ns§Ëî*Læİİlåğƒ+Yì¡š»Ò5*­Ê¡ÌZã-¥(¾Æ¸\ZÓ ª-]ó9ûÂåäI„ªUKTé¦èıJß˜5Ô³ÑÓãÂp_çpÒ9¦hËë^zjÖM&Ú~Øã4^èNû}t2+G\r;mãŒRP}RïÍ|•KÃÎa¯¿69?ÌLÑvÄ§JO›ç¬\Zï4^q§?Ñ÷ ç%]u+>µ®q‘kÜwBC÷Tá‰`­t>RºéZ¿¶Fî¸^Šº‡7bM°…ßš°•cÒO÷¨Ş\"³Ÿt¸<¼‡Äè>Æ¤Ò)bÀ~Õy¦h¦k°{•ËĞx©s4)»—C¼u58hö?PR´ õõ9fë!ÌPÏãñ`xÏ9$Š5lª\'wc*´·G3PV½<‡‡Æ\rÀ!qªL—§v`7.@;ßöksW`!\nÀúîwÍvwvS;ä4~ˆ5MÚÉãæn$Á‘û oŠq€a¸IwQ³HeÏgã­)‰¬_~2å¸y´\n³Š© ƒhæSôêœ)|9Ç?±¦Á:v‡1ö€TøzhT?šyñÎ¨R%[À ’óëO=åı2_Á9…“·íØ#r?•Íã!8f+ù’¡ÆByIØnáIUÚ\"ã\\òpŞÀ¡]¾\0ã¹XÛ¶ã2éciÿÜ[R§õ@	\\İS~u]o©zË\09çÆ,™„Ü\\ó0 uh*~ÿG@ºi,P„mBç{èµÑÜ2ë/òåäÇä†®ƒå¬iòÒä¥²iëWƒä*çÊø¹k¥Ó³“¤üoŸ‘òMûH­ÛJm\\›W–YRÓ¼*İ’%íºô‘£3©ƒL.R‡â!_Âˆ3©êŒ;\"Ïü,Í÷µo?èƒ+ÈµùÉ¸~İ¥ü\r˜g+ãº¸å@9ãú>Ræ7OËíO¼!£ßY*ß~ïşq“®€³dõÉxn’âŒ‹±ğ„`Ô‘5ZdÉÅ ø’Û_”:w–Ëï)\rï-Wv§..F¹¦äíìÇá¤š:HŸó9\rÍnZQìZà®\'õM\'’÷ØÏĞŠÂB@/µ£¾Ëë,ë^Rª7ï/5Ï’Kï\"—´yÑš3çN\ZH¯ÀzIåûÉË\0jK@9Îiqç-ı\\Îº®—T¹%ÓäâÛ\0	¡õï\Z&MºŒU ğg¤ëò/›\\•)-ÛƒaFÿ[N½ƒa¶wì$7©\'°¨<¨çÒ°uÈé³ˆOÌ]ÎXõ:À€şâIºÅNÇÅ3óî“‚‰}¥ç£¿\0ˆ¡g·Ê–&æÕ\\3^•í‡cC\r’Zø¹]s>ï\r\\ÛKZ=:F–­ûµìÎÕ®9ÎšÍ»¥ÜïŸ)2iN;‹\rŒp€\Zw£Ä?ß¨Íër?ê[Ş-2yÀ\nÙ5¹»œ`f›e¾š£ôOu–4œZëŠp‹ëç<,§ÿU>9I:fœ’D“îírHª·ì§ŞÛ\0Ü\\ÒæÑ Õo÷R ê…Í3å¬ëûÊÇkw:’-pNœ,”Œg&Èù7°vRu°?9$@Â‚¢‹T£e¦Üpx¤ónÂ.½¦Ÿ<õX/Ù7ó9ìz¹°¨èÁ3™§Nh¹(ºøÿ-ïq9…PÑ°öÿ¾¡¿œÑ,S:dì³ß¸Íxã»Ü %‚Æñ:½\"u°	5\'égÔo•%»÷àH#ip¾Ü³_Wt—:T˜¦NánÒ;+^â\"İw…)ÚjB$vëVˆ<-U[<gê­,¹êŞyHõã÷\"ß¢µñ>R\\i´b‹²9ç[ö’{:ï—€a­Û7è\0=Mº”,vK¢‹›‘ Qìéõ(÷§¾2xü)äáåIŒ¤ÀYºf»”¹æ™ Åu[¶-N‰&Ú®º}‚Tiñ¬LÃ{†%AfÑ,@Õ ‚¸ˆU[ô‚h;.í¯ş}6†ÅÏ†r]†ÊÍúÈ‘£W%8\'ï£\rÂ¡wGƒ»†Û&&Òbh½*..g:5†¾–¯,±Ğçó‰ˆ´¨ ‚“jµ6¹‘Öİ•OË¦8›ÀHœÅ+?—²ğU}%Wtå\n0$:hµX\rºàÇ#¿$@Zô[õ[CL¹@S2\"-\ZH4Šô;Ê^Û[.‡ÈsÄ\rÎƒ‡%\0GRCEh—ı£}¾1ÌWmhâ>Y¿3N²¢ßvêÔi9ûFCŒ…êˆË]Úl—İ=ÂâÒòpf©÷âqƒs©©økR.·á*0\Z´pÑÖw$OÆw{[»¹,³Ë`:Sğw·6¥ŒrÀ±~åáÀîØõmLJâç¾¾S-bè9»E@øsµØÔœCÎub<ıâ4‹r(ßK\'Ómºh…ê\rGŠ5b‚Ã`åp¬¸@´Bœ0•]œk•“ˆ×ÙôàxádºH8­õÚ…³k„´®{ñÂ(#&8WgŒ€\\ˆ˜S¦¸­gJ»š‹Yá†¾òÓÏÇì`#Ç~9!•M?G‡“İ,vï¯ƒ02ã1?,‘¨à,X²QÎÁ‚ğAu¸İI%ûye˜âWßş`œ%«Š‰´dçeçsZ¼Ã¤¤œ«î®¸Æö/Ò1£ÁSóíÕ‹ıOXE$ #rğÕÎ¢ÇûÙËî©R©m÷‰ñ)œ-Û¾’³Mg³M÷ÅnÜ§õN‡îˆ2\'9\nOIàw:ÚÀ0àĞŸªÓæÅÅ•oÌ=%‚sM·ÑA®ñq‡é´Œ‚Æè&Kr8|rŞÛ0ä/8cåŠ£0—,eÆ·ª8÷”N$’”®ñĞtêi›J”I®£ÇSÏ·g¯°òL~£Şßu¬â©€ÂGDpzÍU¹	ÊC7C4‰,ç\\€ôÄ8‘ÉŒªÍŒ\rÇ+‘w»y/£œOXn¹ó‹êÓˆàÔm;Dí0Fníäeœ&Ê·”O7îNr[àÿ2üµ?¿2àphpq½k´|¾]ÁanœD4ho¤•SåRààÊ‹š€GÁî}V¬®Q\'÷Â4É¬Sí÷„’Uœş£ç\"lˆ´†.7%D)™#It“—Zú&dÓ³À…1Kª’Y!¢­8µşŒl)ÒüÕDLƒ¸ò)aAb\"#\0+ÏpdQ¼‘BÒ@ÏE;¥Uš7^1pj\"oO\"ê·K-‘F\"8\'Î-€BÄ? Î:ÎÁ{Ë ĞÈÏÖc*=Á¹ôöÁj~ç¢,K\"à,[µUªŞjä×SÅJ]Hf)u>iã‹çX¹şKUî¤¬4˜¯©ı.mµEçêÎ£¬\":Öj¥Hı’\0¾=7ş0N§RVßè5f.‰¢ßisW*|ŠpNEswQç¤0¦(¢Şáüîï…¦¦xS\r{(P«£%UébpW+^+¹8º\"¥Áİî\'’]$]4¸*¾¾Ì»÷Ê9¦óéWŠ ^Zµƒ\\áFãëÆ,Î™³`-j„a0]›b&t(qµá@*£\0YÑ#GbçvŞÌYié§jEwñcİÇÍCÚ*İŠSNBÁ©}‡‘\0¢ÜkÒÅ}C%GÀ$B+Î³oè\'äŠXã‡(º(c-N\"§Èç:	¸¦­j88n5ŠX¬È$£ú%xÓÅ \\n Z_>Ùr–®ª\Z2§èÒÏáÆ£wïÔs)±”n„QğÅîïƒbí\"³2Ä©Búœ¼óV-¶le±eE[G”±xÍNCTs“¸\"h€’\'\'9RñÓ03iÎÚM»Z$Â©\rÃN=+|gj£àú.†USÒè÷ê<³ù)ËQñ£çCqíd˜K?k×úá18™/ÏRfœ*GuÀ¿aAûEpfÒ]áàXFAŒÄûf”_ä‚HÓsRÅë­ÓgVéªC8®3Š8cÀ¾Íg¹™i¬w§Åeâmï¾C‡ÿø½Qrë¤^_ŸF÷\ZzÂ‰uã3tùn¹¦}\rpÊ73JS/q Ï¡Û7œàÀ’ÖQ\\†šØ¨iLÿ`ƒÊı8)v\"ÍG—\r;å~\\jf|ËÎ…¶©`§UÔ]ÜÙNí¤HÏ	µØ^›i„:ÂÇ}½ß6ô\r¬:\'ÍİHó¡hs*§}s‘\r°¨[‡\rìÖ\nëú2/J(çÆy°ú@#ŒÀÕFÑ}­Öîg=ÉÉ\\C\'6$ûƒ8oZÏ5w:Íg§ôV,BµQP¡)¾!>llİ¾GX‹ìUŠÀÉM©k%X²˜2g…c–\ZsáNùI±ÀÑİcßô”ÇqDeÈ<qÚ!³\rëÓ\'Ö\\øwŠóËï±ßGé¥Ó\"£f[‡4ØQâ:×!NÜÃÆËs¶}Q´âæ‡_1ZÖiB{”¿¡•UÇªÁQÖh‡îoXf´pêßåH#¸ÿS\' (ïùëCø)¤±IœêŠğˆs´8²û¾\"œÓâA£nÊ®® HSİÔ--0xëõJ°\ZgÁŠ­rRì÷t#d>ÎÇÎç³­vKÌ?Àf(»àè°ƒS¶~\\\0ó(ˆ-Š¯æà®ÌÑã¥9*(Ê.2·MèğyríZ¼E¬µ& »mrMI\'½ä¸À¡7­Kt!ÆôhĞÖh¥5çuõ¥]n-âçÜñ·±¶Á¡	]«•ó!ùX Õ½Ãàz†iöí?$?ÿ|Ôê\"ğ£Æ›¾×¥8l)Ö¼£ı½JÓHSYä«ì¤|¶ô¬	â¥¾ÑÄ5ìˆb<ìÖŠ7õ—EŸl“7g,D‚›í,R2ŸeÏ®î.øœ8s‰-?Ç\n›û°Ô)Ô-µ±cGMY.ízNr5E0£¥‘‚$[f¬”˜åÎÇÆJ`Ç—ßÛŠè’¯•/Šï¤(a­ÇæFì¹ŒµnıİRf4h CË#`Tà“¡æïxC‘2Ôa>öS\rÉ<CG\n.@ PºçgU\'7Ysš™Uâp!J88ån2ª<“© uÂÌd2ëÄg¨€9w}qçÚ5gíÌKù:“+ÑúæÌĞÒ¨_Ã2Ğæt¢¨Óp3Ók¡Ëc”@ƒÃ¹ø!bõ<“õu\ZuFÒ\"\rW¯—ğí\\šs>\\¾)é\Zr›S¹ŒX@Dú;‰\n=†¥îöLÙdæú™dÁÑI¶‹Ì²(şr¡Yà‘h).ÑöóŒxÓœo×	ôFVô«Ú\"Ûr¨­ŠÏÖ hÊn*ùx\'Y“15?[áÍ0ÁaÓ—Ÿ\"k–ç\\bêÍÊğ×BÓE\nÙuy¹!ŞsÇª5`;dïF(é>Æ1R‰i÷ıvÄ\Z[m´¾lÒaX‘¼Tp:tÓòyèPÅ3é\Z(Úc$5{İº‡¡\Z¯²±hH„sBÅY¬cø(ÖÙv.,7êx«V(ÖüG••ˆ8µÈÉş=npPÈ“„yÿXóE«¶Åg×W{åü›Ì~}8—±|†T\0‡YíÖş¾‹4­sbù9LëşV:Ï=¦sLÎá\rã¦-•Ìvw\Z	Ñ\0ª†Ú1¿9‡F€İhp²œş9&£úŠl’B­79†uÜ­ÿşZD`Š˜Òáwô~9O*™MGÕ£ˆ.Š”XÜåá%>u© Ò8?ÕK¡¤™ˆf¾Vş`S·…6¢é5VŸ÷\'}\Zn¦:çÊn¯ùªü]Ú¥!L]xŠR„¯…‰1bTøÖ{ëä×xXğäu”\0%øıéº vç­¹E–¹†ç`³Oyom,\\‚á›Xw~õÍ>ix×P¡ò2Ø’_³’m}µŠ]\"JÛç-fFûiıòDÂk2F©Œm¼#&ç„>èùqó¥\n-9ÓÔ!ÊR¿=óT\0˜º·² «u¿‹‡FÕøœñbR<|ï\'O?.mš,çáìÏ\Z!Ñ`vb3Æ¦¿¨(Ë‹9Šy”èÍJN9R†Z–ìHˆsB_râÄIéøôD%Ş*1Ñ¥+ÓDd$-OË¥\\RæE@Î£6 SŒÆ‡~ÑA©Ø¬¯\\Ò~¨ŒûÏ¢d1Is\"½1ágğ3†à¬ÊRÙ<%4ùE6\'!Ìô‘0î¶DóF^pAè;8?^\r;V›Œ–*]\nUejêÒHp*!`Yçu6ì:ZöîÿÁ6(úIsN¤ğ@í9¬;’êà(›\\Íìı	ÏVj\"´ä.TşBç¬¹V—¹8î€b,¼~ßË\"tÎCgV5áß§ÀJ%6mUº¥¿TFmt«ÇÇËÁƒ?:Hèƒ\'|†?âÀÓáo¼\'UnÍ–Ê Šç‰1™Äèwèî+œù7\rRLêû).é3è«.ÂíáÿFĞÕe~?úÍŠ„pAè<W`.[¨O+\"¯>r-×ãõOÖ¸FøC]\'Ûw~y¼P\ZãÌê³øõ\\…<±‚€Y—µa_¡R+¾‰ü›ÖÁ¡ÿ¡ßY\0T—Ÿ	*4ãœ²¤ÏğY½ááWjú1<\'\Z‘ÇŸ”ÍßÈŒyŸÊqùrÏ“¯ƒC^ò×õ‘òÿÛGÊñÂ÷*”mŠ=“E.øÅşÑ^Ş_®i?)-ñÇŞR©Å@i÷Ø8é=,G&ÍX\"Ë\rŞŸÀÙm^‚ôóBVe³\nQ†\0\0\0\0IEND®B`‚','Authorized');
/*!40000 ALTER TABLE `healthcare_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_a`
--

DROP TABLE IF EXISTS `hospital_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_a` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_a`
--

LOCK TABLES `hospital_a` WRITE;
/*!40000 ALTER TABLE `hospital_a` DISABLE KEYS */;
INSERT INTO `hospital_a` VALUES ('hospitala','hospitala');
/*!40000 ALTER TABLE `hospital_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_b`
--

DROP TABLE IF EXISTS `hospital_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_b` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_b`
--

LOCK TABLES `hospital_b` WRITE;
/*!40000 ALTER TABLE `hospital_b` DISABLE KEYS */;
INSERT INTO `hospital_b` VALUES ('hospitalb','hospitalb');
/*!40000 ALTER TABLE `hospital_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  `searchkey` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'arun','hi','arun@gmail.com','9535866270','# 455','09/08/1991','Male','560016','Bangalore','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z-%&+.7-7+-5.--+-+-/5-7-57----+7-7------5-5+---+---8--ÿÀ\0\0è\0Ù\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0K\0	\0\0\0\0!1AQaq‘\"2BU¡±ÁÒ#Rr’Ñğ3CST‚¢²ábs£ÂÃc³ñ$%ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0(\0\0\0\0\0\0\0\0\0!12\"a±Á#4AÑÿÚ\0\0\0?\0Ş%@@¥)@DD\0)DP¥(€ˆˆŠPJ‹(jô€ˆˆˆ€ „R€ˆˆˆ€¡J ‹©Qe(ˆ€¡J„\"«kˆhä_>\nábzÇ­t:8†É#Ÿ-®!	u÷ƒGYê`siêí1#ã6š™–ÄÆ»ÆÂol@YÒm+{v†ËÒšá£éÉlµLÄ2-ò8¬İ«âIÊÀLîÀ?©À¯G t]8Î#3‡9¸ì¶mºÁëUgÒ­e4\rcØd”|¤hÇÎŒŸÚ±Àv¹ ÚVMGYÌC+$ió£ppïLVšin>lËÿ\0Ûnü–*×G5ôotğHèŞHÆ]‡\rìCÃ|¡skH8Nh7»Š¬7Qõî\Z×\Zy7;A „­2Îİ¼3íš \"\"\" ‹©Qe(ˆ€ˆˆ  (\nQ@(áë¶Ÿ42Tä^\0l@ì3?&ßˆQèi_uj/”m›GM¹ïSÖÀÆ7Õ+Ğbz´WPyÙ¥%÷“;\"7¸íèµ—+§Ï²v<còo:3õº²_+DÑÔWÎ)iò»Ü|–F2.wFà7ŸVi¬¼›E\rä§Ç$ñay$Ÿ1åµ¬l7_Å²æmÙÔVg»áO¦IŞ¬¥Ò‡ŠÇYqµKåÈ:ùÌø+§,‡Kµ%÷ÜC†ÑkÜ\0A½ò¶p$*(çe{4lh&Àn6½…÷d¾!A™ÒekØöËË_k›´8f]#©š}µÔQÕ\0ˆ-‘£Í™¹<uo–ùÕ¶y\0Ò‡œª¤\'\'69š?Ä7!î1w ÜèŠ/¹¢\"\" \"(%¨Rˆ!J\"\" \"\"Rˆ€´wÊ!Ö¨£?öª;ñF·ŠÔ?(	<ì§c­©2lB7sd8\röÀëÙDÎŒ½r;¢ÄT9#Ç¬ss·™a-`êÉÎş%±&§ ·,úÀÕ(9º*X¾¤àôœ\r¹ïºÉyåŸµ¦rÑŞ±kMeäÎ–¥æh`{®Hh78í%›Q—’ZÀ|ZˆÒC›êÍo\'µ§hîÉR07‰Sµ¡\ZÖZEœ’Öï¨„ub?‚¨y\"ªıî/¸ï‰n±zS™gOzîiW9ë£×Q°Ë#\ZøÛµñì#‹š@ tæ¾ç!Ÿú½‡MPV(¸-ËSMØá‰® ì-;AZ¿‘]^š--Q74áOk GZÎ{fc@móvMv{<S½wKç´¸½1ŞÕŠÄE%B	DD¥Èˆ€…yqRÔ\0¥ ”D@Xî°yG¨{D¾.±@pó€dGªæŒÕoâÏ™Kf†hh€Á^ó«åÃ&C¨*üâÍiš¯yÔçUŸ8œâœê¼çSV|âq65Q»±‚n-·mˆ±Ìú•ö¯4\0€.ÙÚ¬ß&õõ5f‡œ#-ƒ¤ï!M>+Á†’û¨ˆ¶1ˆ •\0 •(¡¢\"\"]ys”¥¡\05zD@DDR „\" Æ4í8d€µ 5âàaq‘Ë¸ö«\0õ’iê`øK¶îë\0xŞ¯bÄñ,<ÕÖÍ¼SµWÓ\Z·Æ˜Õy[…Æ4Æ­ñ¦$É‡ÑÑPó’µ¤\\—_1aÇ¶ÃµehÀX\rÁ|}Y§3.÷’CZHöƒÜÙ[8kŠå‹šÙ¶¨qP\Z®TuìDD@Qu*,‚Q\0¥)E¢´‚³€Ãkï½úm±] \"\"\"ùºoORÒ3DÍfD†æç¸\r¸#mÜîÀ‚ãJ ’û9·íû%`T€·ÅpØ.Ëïµç;,o\\õîJ‡3Ä1S±ñ¿ppK0É®µ˜/bC\"\0ncSÜXvÁâÛÜ»û/½gç¯‰hà·˜P™Âùî2à©â^ŒİqùÚ¼ó£öyöûIkƒ§,‡ÉnÓ¿€â«67¿`°õ*¤µ˜ß)Ûı¤õ$Vd›D2½XÃóXÃMğãq7¥}\'-G¯Sèí%S€s´ï™Í|7±ŸE‰„äÙ,Î§clˆÜ\Z³®5í½4àº×tOñ%oQœûEÇJô«ˆ‡›iÌÌ¾ãZ½\")@ˆˆ­\'¬ÂHÃ{tô_‚»@DDD@DD¥(éÚÓp-n’ª¢·Ò±Áç™áŒ‰¥ÎqÜÑí=ĞWs€“`3$ä\0âV¬œ¬èúk²j¤Ê@ôÌr#ì‡-_¯ºñS¤Ys7™6Ä8ÌG–ïğù#+^Ø…y¤ùMÒÕ¯æ©ŞÊ`àHl6Æ[¼Ÿ×{´4ä¾O0µÓK/9$¼ÛùÜBG›‹Y¥÷.ßrrsM²\"ËåĞV˜®0â- oçrÂ\r·|³àAÍx”¹Æî¶#rmkI°Íì2Ì ñ]Pù“Z<V‹Ù¹[\"I\'´›ldº?E±µÑ:ö.7µÜšh;Âçr{SŠ‚˜ßdLoÜñô¨˜Êbpú±°´àx³†íÄqiŞ?&Êä@ßªıC¢1—LZÀ\\\\ó„0\r®ÅæÛÖ6¾hÆÉÍŠ©K/c#as€ê}®GNÖW5éy/ì‰•Ÿ¯î}é†a­\'c[´ÿ\0nŠ«hù¶’ë»i\0ú££§pú2jwÄ%¦{^É?XÃ‹¸» ß-İæéê¬I%ÿ\0FÉØÖ“îQ^-g¿”[“nÑáÍºNLsJûå$³?ï<›úÕ°‡\\‡4‚6‚6·ôŒÕF3!Ô¶³òxô«²}Ê^•¥!†q;\0%Hç<^‰EŸ´ORÙ:»ËÖe\\n¥yóÒC¶\0-ş&€8­„ÜßÊßùáÁNwO;$`’7µìx»\\Â×!Ã\"EÌ:›­Uz>PèxÜo$/\'›xó¼Ç[Îì½ÆK£5{MC[NÊ¨‹ ÌbcÇ”Ç±Àş\"à„¯§a7#3·2ª)DP¥yÆ•ç	Aì¨ \"\"Ó|¹ë/FÆï¡³Mmî\'è˜z¬\\GKå¸Ü@;±rv°icWW=Y7ùÄ¯sÊòcŒˆ(ƒqnş>îå/`°#»§Š¥³UAAæ›‹yÄ	ámÃ€µ—«¯\0æGÖi»}^Åç\n·[“’éï£ZAı³±İ\"_d‹Kb[O‘YÌ‘ÔÒy¡ğÌznşFİÓå\"–¦¦™²1Îæav\'Â?XÍÒ8oÂs·jÃ£æy±klü•»+\0do{¼–1Î=@¹ÄÄç‚û‘Œ¹ØF@b7°à×½é<³4šã´~Y:Š÷‰l^M(êb2Õ1ÎI`\"ódpò¤s†Àwç|¬²=t©ôÚ©oâ˜‹\\¤Dó¯©ª	h)ä\0Q2àd€³…ºÁXÇ,h9¡äÕÏÇÀé	ê%­íë^GSÉ<œ¶´Æ;´Ò1X†œº]RÄªÒÄ^ğÑ|ö	Âİî n\n‡D„’|ĞH;ÁÜ:‰Ü 4a~ñÄôpÆ¢tx\Zlqaq ‚@€-»>Û_z¡t2~ÏÍ–{ÈÎ±šzßš=ßE[›RÑâ;£½\'¯¤wçÖ¼GPøŞÙ#6|NkØxHÂÓØ@A×è¬ô>mE<U,òj#Fõ=¡ÀzÕâ‚ŠP]¢\"…(ƒåHüßEUÊ\rˆ…ìiá$ŸFÂ:q<.Ya]ËÕ_7¢D¼T@ÎÆâ—ş1Ş¹í®At×*ÁŞõh×*ßÄ^íãkMÇà¼¼ç–Ã˜ê;œKÍò·Õş“øjAãŠÏ¹¯Á¥9¢r©†VÆFá”+°Iª±±p%Ñ€ÜEÙsM\05e€h’s$’Uîªé?›WSTŞÂ)¢.\'tdá“ùäÊÂ=RA±teƒ®BïZV*£ì[O•™ÿ\0üü^hs±µkÈ™ô}‹è½¿µ3óüCQ?còE(væÉıÓ7±Çş¥†òû\\9úZ`|ˆå•Ãí¸1‡ı9İäzk2ª>±İì·ûV\r¯¯mV–©{ñS˜àkc{°2ïÃĞâ÷ZÙ€ë\\…ãu•×ñóû´ñÎiCGÒºGd.ÖùG0-·#y\0ûv{3£‰ÅeîÇ²Ï ¸—9§éƒm†À—\0Aó•-#\\Æ±±FÖİ˜.Z`{mg5Ù´2Äàqeo–é	»‰$¼‘s™¹ò‰=^Õ™ÚâJ‚÷™ü€\0Á°¸mË¥Ar¢…Şä#•9åIÎAÒ‰éwDFÒni¤š#Ğ±°v1ì;ZäíZL5tÿ\0³’ÏÖ5Í?ø½anD@DDPˆ%iÿ\0”mE©èâúóJÿ\0¸ËÈ´s\\·ÊMş=x6°÷˜¦šäMrö­ÚåPÜmßc»aØ‚®$ÇlûúÕKbAíÙ/.Ì[ŠòN_gúwwlî^1 ÜºÓ¦şs¡¨&&î–Hšÿ\0óY“ù˜WË‰ßGØ±\r¥ïBÚGĞÕ¶V}‰\"‘®©Í¿ñ¬’9mé¥ôŞ“8àúËQîd¼˜éÄêç½À6C#‰ÈaRâNìšµn–Ón˜»!ô„â~.xÆdndq½­{/¡6˜æ©ëbiñªşi_³•òvXÿ\0\ZÅ±/Ô?“o§Ú\Zx½¬\n÷‹>¬‡¼÷û¢×oì{Ïg¼&%‰b¶$.÷*X‘÷\0¿1ÔöA.r¤ç#œ©¹È6×ÉÒ¦Õ•Q}x#wÜ}¿ä[ísŸÉîKig­I0ÿ\0Rî]€ˆ¢è%B”A	e(€¼I T¹|Êç Òß(º ùé\0óYQës?¨šåĞÚé¡\"«ŒÇ3/kápÉÌ<ZíŞÂ´®œÕJŠwĞdfç4xÀ‰¿…Ğ|†¹{¸\\öªØ;r÷‰lI‰QÄ˜Vüô/.ËİÔ©âR|»ºĞU‚[8•—E[ôv¿şÖ‰_ÅZD{veø/[Óz˜¤Z¶ñçıgæ¦q0ñ]6\'’¨´ß%G÷{“·«‚óyy\'’óyş×Ö1U/õlêLJ$Ä«J¶%<á¶Äß·­PÄ˜{.TœårúºWj*HÂÜ,>{òèO³¥]È5@f–¹ßO0õ°û—JÅ0vÅ¨5Vâ£oÑ¶ïw•#¼·tt7 zÖÉÑî6Aö”YyŒä½ \"\"\" o4UÉ@ƒáVhÌ[–9¤ut;rØª› iÜƒHé­BŠBIŒ_ˆÈ÷…‡iN¥oèä=Oõ…ÒòhöÊÎmÃ¹+Ujk?U‹ìÆËæÍ£ªåA şnğº²m[aóUŒÚ¦Ãæ å¹£ÂÏ=·ÈâßaÀlº¥‰täÚ—ÚÁÜ¬fäş¶¶ƒîAÎw¿_·û¨³¸âº\rÜ›S~ïÜoà¼ñ¥7îìû¡€Ù»‡¼¯8×A·“ZoİãûüÌ<À6@ÁÔÖr\r5#y–JÇâ¹\rx6œ ›1»\\\0çeÜ8¨\'w“†ü\Zïm—HÃ©1Œ¨+ØuIƒÍAÎtÚ­Zÿ\0ÔáéyÔ.WÜ äòg[œ}º=çğ[şZ`óUô:\rƒr\rA¡¹>‰„näoŒ}{;i£µl7rÍãÑÍ•Äp7pAñ(´Pnåö`¦²¸\r€”DD@^\\åÍ^éoHKİÂ¯İ¬ZÀ\"çŒõ!Íi%€\\14áÁ|\'s¶•îºÕt-®½€¹ê‡OkÃSÔ¸a$5ƒÆ³İ½¼\"~|E¶\r¯…ús/şÍNmsÇÑŒão”ñâfÑ¼ì	©—G¢çwë°‡™ª€/tbñ€yÆ´<·ù.gÔéu«NÈÒöUÎZÖ=ø°°4µ„5Ø\\[g\\2)©—E©\\×.»é†/­™¤nsXÓÜZ¼xy¥½!/s>ÔË¥’Ëš|<ÒŞ—º?…<<ÒŞ—º?…52él#‚Œ‚æ¯4·¤%îáO4·¤%îáMLºS››5øy¥½!/t\nxy¥½!/s>ÔË¥9±ÁNÁsW‡š[Ò÷Gğ§‡š[Ò÷Gğ¦¦]-„pK.iğóKzB^èşğóKzB^èşÔË¥•Í>ioHKİÂioHKİÂš™t¥î½\0¹§ÃÍ-é	{™ğ§‡š[Ò÷Gğ¦¦].‹š<<ÒŞ—º?…\\Òkv›”l®ÃkÛš¾Í¡52èä\\ç>µiÆyu’‹›gÍm¶+là¼·[´Ùµ«e7È[šÛÜš™tjYs[õëKƒc_-Çù\nóáæ–ô„½Ñü)©–:?6Ë×¹fRò€òö½´ö-2¹ÅÒ‚e{ã–<Rsq1¦ÆPìš/€o%È‹·*qëÁi³iœˆ7ç÷sêİ%ÜØ€ ŠÇâø¦6]lÕZ÷+˜Æ6\'3\0€bd­¼N§$´ˆ…3AÄ_¶û£(×k“Ş0²\'ÄËÍLŸ¢)XHˆ5®w6ÒÆ·\rİf›«š]{æ$ŠsmŒNşa±¹ìÃg€ì8ï|®0¢&#3q 	6v2|u†\"û¯ŠA¨ËAñšĞIö\" ¨$gì‡Şwâœã?d>ó”\"\nn\"ùtî¡ÿÙ','Authorized','[B@1a9b4a4'),(2,'tmksmanju','tmksmanju','tmksmanju13@gmail.com','9535866270','#87812,Vijaya Nagar,Bangalore-10','05/06/1987','Male','560010','Bangalore','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0c\0|\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ıùšdŠ2Ì@U$ô¯	ø»û[j:OŒæğß‚´KêÖ›~Õ=ÍâÚZZ*—!‹1Á;UN$Šãücñ§Pø­ã=\\éú•Ş¢è—riñ›aû¹¶ÊÄÈ¬¡oLÎS;‡İŸ€t»¶<sjÁõ	š{‡KºVlg\'o\n£Œ(â½JyMgå§‘ãÏ9¤¤ãİ´¿¡ÛÇûDüTœ M3Àne$(]ZS¿n2Ã÷ä©àr:Ô±~Ğÿ\0¤Ù/Á\r¼’§ûR`@åÿ\0Ôp£×ôÃÜx^Ê]Á®uC¸\0ÀN€:éíÒ¡¸ÑíFK\\j½ƒ¹k„ù±Ğ“ ì:{VßØõ{£7S[Åí	ñAÖ=ÚĞ²™¶§0TOï·î8¶y4ø¾?üLuËXx%QW|„êSşíIÂ“û¤ôMy|©[íZ©&A)ÿ\0IL3v\'÷|:g zU)µ$ƒËëS‘cs \rpŸxõcò`·¡ê;V°È«Ëkóâl<7Lö$ø÷ñ(d=ƒU£PdÚ2“?uîs¸œ|½}qS7Æ¿Š1’¯¥øH22£¾•¾cÑ\0òŞ£¶kÀ¯õ#	¨krA¸Å,RÅ##0Áb\n\rÇÿ\08èEnx[ã¬şG¬y3Ø Å}nvª’qåÖ7bNKœv³šÃ“â(G«¯#làñöjV~g²Œ¿ŒÊŸağbâ¶òfó®ÅÄX$wì=iãã7ÄÉYl<\"şcmôØ•‡ŞÚ|Uzè+›±ø‡¥^ÛÄVéJj±¢@	Ìq±*â~ç zãİ6llº‚s(ùB¶Ñ\"ƒ÷G?$í÷°=r|¾§½æn¯Æ‰ï´.›á[cù•\\n“>OÜŞ8éÆiÑü`ø™\"©6>‰W{Ù@?å¡ıĞÂÄõÏ\0Öü\'úc¡l·”°eÔüD:*Å8xûM$î¾‡´¤Üqÿ\0=dú}:P­Ø\rÇøÁñ!X¢xQT/˜ì×R¨;ı×ºÔúT·>#é§Ím#Ãwi\Z‰$„_<r*Ÿº¿4`onÃ=¹¬4ñÖîk°wHwØä	óÊßÀƒ…=©«ãÍ>Ù7b)ˆáüÃ7×ïÎàOİç>ŒşB=—àÿ\0ÅëŠzDÎm§Óõ)ZŞîÎeÄ–Ò.2§P}Á®Î¾tøã>Ú^….`‰gÓm¤xÕòMÒƒ–ş&*£\'\'$u¯¡¢¹GŒt ô9ëYÊÉŒøá\r÷ØìüCm’ÍmâM]NîO:…ÉÎ}ÁÕG«µ9ä÷¯?Òn‡ñ?â%†_İ?»¼¬¿ûSõ­h5À \0¶Ozı4ù Ÿt¿$~e\Zê\rÃ³—æt’êûAçëT.õ¯”óX7:î	ëùÖmŞº\npØükhaîÌ+c´6ou¡Ï<VEŞª €:ÖEî³“Á®[ÇŸ4ÿ\0‡ŞÔ5­^úÛNÒ´¨êîæwÚFƒ,ÄöÀçÖ»éÑåWg‡ˆÅ9;GS¥Ôul¶	Èç­e?Šn4ë‡x%hØ©VÚFHÁRëÚ¿<ş.ÁÂ4>ı|%á¯ø‡PŒl÷°Çag1Èfó@˜Éû›­pşÿ\0ƒˆ4‹Ë<kßµkK€@ÎŸªÇp‡Ôüè„}?ZÅg9teÉ*‹ñ·äENÍæ½¥:/ïIş,ı6ŸÆ«emåGa§,*»<µãM½v…W\n£¾\0Åfß|P¸Ë©·¶*ê‡™1@rüãñçÀ¿ø+çÂÚ]‹GKÍKÂº­Ãl‚\rv‚;†?Â³#<dúÊIõ¯}»ÖÉ\'kÜÀağ8¨óÑQ’>O6ÅæØ)ªUå(??Ğîo>.]ÄÛÀÅˆbL’œ‘ĞŸŸ¨ª_µ‹°‚ÏæRKxşó“ï\\%î­òÖt÷{É$áOjõéå8^´×Ü|Æ#>ÌV‘­/¼î§øí©E\"â8>VŞ˜i¾F<nÿ\0YÖ OšÑá²%‡úĞ=p7÷®&9•²õéšSv=H­¿³0‹ş]¯¸óÿ\0·s7ÿ\0/å÷³¨ƒãV»¡x¨]ZÌ¶“´H­¦šÀ$½_$1O©ÏÕ\0?à¨Xø\r¬üWw~º•ÓÃ±Eˆp¬®ÙÀ\ró8\0|¹ï_]Ü†ÖG´køVÿ\0Ã?ËãM6şæ(ZDŠğÂMØÄq¶?ñêù(ÊğrÂóJ	4Ö«Cô³ÌËûGÙ{Y4âî›mt×SéŸ‰—ßØŸµÅ@ÅHÖ–p=A³µ9üÉ¬Äñ&-¾óMEûUŞ¶ƒûi|Fƒ;|ùínõ\rkçóC\\\0ñNä#wsŞ¹rêÓ	J}ãÉWšb=.´;N_›;ÉüN‘¹ª…ÏˆA9Şßqsx›zòİ*…ß‰ºÕéÃû=LSgcwâ0?‰?~RÁ{i½OÄ:Ğ>ÁÕ•¥ÄºõÄâ_İêo )ØqYÍüDàp\r~Œ]x£*pÇ<ã¿:ÿ\0à»^şØÒ>x-Ã9î´ÉîT\0SxIbV>€Ç1fşõy\\I„¨²ÙÊÖµüÕÏ_„ñŞkN5Uï{y;=ó°.”´øõ¢¿%¹û`€„$„|Üõ¿`à›ÿ\0õ?ˆÿ\0±ï†.õ›‰®¯ìüı<Îä—•!•‘ä U\'¾Úüê@¯Õÿ\0ø\'„¶º/ìsà¸­\'YÕ¡i\n¹+ÜHÎ‡İX‘ùt¯½ğùIãæ“Ó•üõGæ*¸ÿ\0eÁµïs«>Ú;ŸFOªŒòMA&£¹òŞ¹ÖÕ‡?7Zbê›¥ûØõ¯ØZ²?]6İÎû@úŸÎ”êxç¥sÍª(ïJºš±ûÕœ‰öLÕ’ğI«’1şµõìàñÂ­zè `ºü±äû[[ë_#A}»U880+ôş	9áó«~Íº­Ç”XIâ;œsĞmÇó¾7Œª8`}d¿Sô_¨_6môƒüÑåÿ\0ğP«ó¢~ßŞ,ˆ’\ræ‹§\\¯=‰?öx´¾*æÁsÖ½wş\nêŸğ~Şâói	áKÉõK‹¼ÿ\0èb¾S¹ñ~epN>cßŞ»8f‡´ËhÏû¿“h÷8¢NeıïÍ&z-Ï‹HèÃ™¬ûn#.r}ëÏåñfáyïU¥ñAÜr~œ×ÑG	ä|Ôª7¹İÜø¤ıkæ¿ø*dßÛß±Ïˆ6Àn^ÎêÎeÚ»Œ_é£0ÏûÃ>ŒkÒ/¼`#ö®gÆcñ÷†ïômN9\'Óu;w¶¹‰cIŒ8\rØã¡ìH=ª1Ù[Äájaã¼“_¾[Šú¶.!í&şLü×úĞk§øÓğù~üX×ô¾ÔÖºuÙKfÃÊa8hËª	(ÈsÉè+›U5üãZŒèÔ•*ŠÎ.ÏÕÒtkF­8Õƒº’Mz1¹U\0¶Üp~cù×éwüÛOÕ¼%û,h0j‘Moö‡šîÚ9£$º68`wPàô ×çßÀÙÚÃã‚îQ™ß^°2ğP­Ìg ûWê#k¬å˜³¹%›¹99Ï©É=kôo°\nUjcø}ÛzÙÜü¿Åcö°*?æ¿¦–üN«ûcŞíƒƒók•]l·\0ŸÒ†ÖŠõ&¿Vv?X^çUı±“œœÓ“Wù‡5Éÿ\0m:œT‹­mÎ\rgÊØ}VÚØëìu\"5mÄâ1ıkõşé¤=ÇìeorN>×­ß¿\'“¶AşÉ_’šFªdº˜¾Wó¯Ùø#w‡¢OØÂ²NX=Íî£0É á¯f\"¾Ä+Ç³_“?Gğ¿–gRO¤?XŸ,ÁvĞÿ\0k] Ë}Lsü‹_^ø”-Ë€Ü?Î¾éÿ\0ƒ.Î‰ñóá½®´}YAÿ\0rk3ÿ\0³‘_š:‰Z;Ù\0n­šúN>OJO¥×şLËã\ZOûV­ºÛÿ\0IGrş)ã—#éY÷ş3\0`;n>µÂŞx£9\nù&ª\rc<³zšûH£æ£†osµo4£ïŸSU5ÛhšeÅåíÌV¶¶¨d–Y[j¢ä×ŒüUı©4…‘Il%\Z¬¤…³¹Cÿ\0MƒëÏµ|¿ñ[ãÇˆş0\\cRºØ£nŠÊVñĞrY½ÏáŠøüÿ\00Yrté¾z—OWÓÓséònÅcšOrŸw×ÑuüûöËøÇàßŒ\Z›>o;ëV/$W7íF·vä|‹É\nÛˆ%AÃ·8À¯ ó×$ûĞM~™æ1Ø™bª¤¥-ì¬¿¯3öL·8jmµ®îÉ4û¹´İB›yZ+ˆ$IbqÕNTşx¯£¼ÿ\0Õtë!ˆ´xµYW\0]ZKöv`8å\n•\'è@ö¯œ`S‘„óÓñ­rÌç€“–v¾ıSù3Ë&Áãâ£‹‚•¶{5è÷>çğí¯à¿\ZíKéôk–ãf ¢4ıñ•üØ\ZôèõØï\"WŠe–7VFXWæy\\ßÜ|øåªü ñGq$º;¸û]£11²’78ÂÀs•Æ{æ¾ë)ñnq§‚³ûK§ª>5ğö#©‚“M}—ú3ïÑ¬íàšW-Ë\Zälu´»³X¥Ib•C£©ÈpGPjä:ˆÚ2qø×ê´åfÌ*am£Gm¢ê;^s’6ÇïšıØÿ\0‚Jè‡Oÿ\0‚~ü;\rÓY5ÁúÉ#?şÍ_€Ú&¢<›œœ\0¾½±ş¯èKş	Gÿ\0ûøFÍœÏá‹)ú~oë_ø“+ahÇ¼Ÿä}ÿ\0‡¹qu¤¿•/Äø[şlĞÄ:§Áld4êšxÏ@%Kwÿ\0Ú\"¿$5Mkı*B®HcÇ5û7ÿ\09x2ï_ı™|¬iq»ïkŞ|–ñ‚Ò	²¨åˆfRG¦}+ğáõmH3	4mQ\\GØæÏò5ÓÁî\n†T°õê(ÉIîûåXŠ¹„ªÓƒi¥²:»9Ëgë\\×Å\rx÷Æ^[?Ae™	ûmÌúå†$kŒŒ\\Íç–P@àd\Z¶ºıò°ÿ\0‰>©ÿ\0€Sñ5)ñ-Ğ djX‘ö)øšú~o–bhJ‡Ö”9ºÅ«6.ÆP­\Z¾Ãšİ\Zvù\nß±Ä¹3»IĞNNN|c¢‘Ÿ_øû¥‹ö\Zø.vèŞ zxÃDÿ\0äÊ÷´ñ=ÉşÉÔTÿ\0×”ßüE=|Q:ƒÿ\0­Kÿ\0\0¥ÿ\0âkáŸpëÿ\0˜·÷Çü¨şßÎüÃ¯º_æx ı„ş(1ãFğğúøËCûyR/ì%ñ<ÌÃ™ÿ\0±ÓBÿ\0äÊ÷¸ü]p§\'JÔ¸ÿ\0§9ÿ\0øšqñ}Ãÿ\0ej_ø	?ÿ\0Qş«ğ÷ı¿¾?ä/õ‹9ÿ\0 u÷KüÏ°Åÿ\00oái¡òeJŸ°§Äüœh¾ãÓÆzÿ\0&W¼/Œn¦—©ÿ\0^“ÿ\0ñÿ\0øL¦nºV¥Ïı9Ïÿ\0ÄÔÿ\0«?Óşøÿ\0¬YÏı/º_æx?ü0Å#ÓDğ÷şšÿ\0&ÒØ7â¤£¢øssøÛAû{^ò<k(?ò	Ôğoş&¥ÆÒ+ø•ê\0¿è“ñ4ãÂùßşøÿ\0‘/ˆóŸúü%şc>øO[øà;E×£Š=SMC©Ô7h€1Ø°»ÆøR¼«ÛµtñÌÃ<jÂ‡ÇNÆ•¨çÒoş\"¥_KÏüJµÿ\0n“ñ÷˜LÏ*£J–!>T–­t>/—cëT•WE«¶ôO¯Èê,/L\Z}Û6FÕÉñŠş“?`oÿ\0Âûü)ÒØ6l|+§Aë÷m£Ò¿™ïSñö¹•§i·«6©\"Z‚ö’„BçhbJá@=OµStËmá†¬­¥Y ´Ó`…<¨ô¯€ñ3Ãb•\Zxi©ró^ß#í8#.ÄaåZ¥h8ŞÖ¿ÌÒñO€ô_\ZlM_K²ÔQ>êÜD$ó¬3û6ø˜“àÿ\0éÉ?ÂŠ+óG²?@BÃ6xş„ïà…ğÍ_ÿ\0èMğïş\0§øQEMÇ`ÿ\0†iøÿ\0Bo‡ğ?ğ£ş«áş?äMğïş\0§øQE;°ş§á÷ı	¾ÿ\0Àÿ\0\n_øfŸ‡ÿ\0ô&øwÿ\0\0Sü(¢‹°øf¯‡ÿ\0ô&øwÿ\0\0cÿ\0\nOøfŸ‡ßô&øwÿ\0\0Sü(¢­\0Ã4ü>ÿ\0¡7Ã¿øŸáGü3OÃïú|;ÿ\0€)şQIìÙ¯Àşdïà…ğÍ\0ÿ\0¡;ÃßøŸáE¢áıühÀÅá-2xùlĞJêml¡ÒíÒŞŞ4‚@TDU€QEP‘ÿÙ','Authorized','[B@1117cc0');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `pname` text,
  `view_per` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,'arun','kiran','Permitted'),(2,'arun','arvind','Permitted'),(3,'arun','rakesh','Permitted'),(4,'tmksmanju','Harish','Permitted');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES (1,'arun','[B@1a9b4a4 ','07/11/2016   17:33:36'),(2,'arun','kiran','07/11/2016   17:33:49'),(3,'arun','kiran','07/11/2016   17:36:12'),(4,'arun','kiran','07/11/2016   17:36:32'),(5,'arun','kiran','07/11/2016   17:37:54'),(6,'arun','a','07/11/2016   17:38:04'),(7,'arun','a','07/11/2016   17:38:24'),(8,'arun','[B@1a9b4a4 ','07/11/2016   18:47:19'),(9,'arun','[B@1a9b4a4 ','07/11/2016   18:47:41'),(10,'arun','ra','07/11/2016   18:56:39'),(11,'arun','arvind','08/11/2016   12:47:26'),(12,'arun','arvind','08/11/2016   13:41:44'),(13,'arun','arvind','08/11/2016   13:44:05'),(14,'arun','arvind','08/11/2016   13:44:30'),(15,'arun','ar','08/11/2016   16:01:42'),(16,'arun','sh','08/11/2016   16:05:46'),(17,'arun','sh','08/11/2016   16:07:17'),(18,'arun','ar','08/11/2016   16:07:30'),(19,'arun','rakesh','25/11/2016   13:33:18'),(20,'arun','rakesh','25/11/2016   13:34:46'),(21,'arun','rakesh','25/11/2016   13:38:34'),(22,'tmksmanju','Harish','26/11/2016   16:44:37'),(23,'tmksmanju','Harish','26/11/2016   16:45:16');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `task` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'Hospital A','kiran','Upload','04/11/2016   17:10:21'),(2,'Hospital B','sharan','Upload','04/11/2016   19:03:12'),(3,'Hospital A','rakesh','Upload','07/11/2016   15:33:17'),(4,'arun','[B@1a9b4a4 ','Search','07/11/2016   17:33:36'),(5,'arun','kiran','Search','07/11/2016   17:33:49'),(6,'arun','kiran','Search','07/11/2016   17:36:12'),(7,'arun','kiran','Search','07/11/2016   17:36:32'),(8,'arun','kiran','Search','07/11/2016   17:37:54'),(9,'arun','a','Search','07/11/2016   17:38:04'),(10,'arun','a','Search','07/11/2016   17:38:24'),(11,'arun','[B@1a9b4a4 ','Search','07/11/2016   18:47:19'),(12,'arun','[B@1a9b4a4 ','Search','07/11/2016   18:47:41'),(13,'arun','ra','Search','07/11/2016   18:56:39'),(14,'Hospital A','arvind','Upload','08/11/2016   12:40:52'),(15,'anil','Cloud','Report Access Request','08/11/2016   12:45:05'),(16,'anil','arvind','Reply Letter','08/11/2016   12:46:29'),(17,'arun','arvind','Search','08/11/2016   12:47:26'),(18,'arun','arvind','Search','08/11/2016   13:41:44'),(19,'arun','arvind','Search','08/11/2016   13:44:05'),(20,'arun','arvind','Search','08/11/2016   13:44:30'),(21,'arun','ar','Search','08/11/2016   16:01:42'),(22,'arun','sh','Search','08/11/2016   16:05:46'),(23,'arun','sh','Search','08/11/2016   16:07:17'),(24,'arun','ar','Search','08/11/2016   16:07:30'),(25,'anil','Cloud','Report Access Request','08/11/2016   16:33:31'),(26,'arun','rakesh','Search','25/11/2016   13:33:18'),(27,'arun','rakesh','Search','25/11/2016   13:34:46'),(28,'karan','rakesh','Reply Letter','25/11/2016   13:38:21'),(29,'arun','rakesh','Search','25/11/2016   13:38:34'),(30,'Hospital A','Harish','Upload','26/11/2016   16:37:52'),(31,'Manjunath','Cloud','Report Access Request','26/11/2016   16:39:15'),(32,'Manjunath','Harish','Reply Letter','26/11/2016   16:41:20'),(33,'tmksmanju','Cloud','Search Key Request','26/11/2016   16:44:07'),(34,'tmksmanju','Harish','Search','26/11/2016   16:44:37'),(35,'tmksmanju','Harish','Search','26/11/2016   16:45:16');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-26 16:55:55
