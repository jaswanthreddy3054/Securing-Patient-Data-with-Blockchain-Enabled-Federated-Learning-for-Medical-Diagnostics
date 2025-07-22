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
INSERT INTO `healthcare_sp` VALUES (1,'karan','hi','karan@gmail.com','9535866270','# 4545','09/08/1992','Male','560016','Bangalore','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%-2!&)+...38387(-.+\n\n\n\r\Z-%%0.-+07---.+.++-7---+-7-+--/-----+/--+--+.+-6--+-0-��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0\0\0\0\0!a��1AqQ��\"BRr2b����#�C��$DScs���%34��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0&\0\0\0\0\0\0\0\0!1AQaq���\"��\0\0\0?\0ۮ�7�.�7�.�7�.�7�$]�oD]�oD]�oD]�oD܆�E܆�E܆�E܆�@]�oD]�oD]�oD]�oD܆�E2�%��m�l��a���sq\0���IAi�މ5�oE�?��#��:J$�w����?p��1l?>N\\|����Pi5�oDW!�Y=����s�\0h��{GjC��X��[v��\rsA���oE��{Ns;+݂i��7�3�G�;:Ї������p8�}܆�E܆�I���ވ�\r苹\r苹\r苹\r耻�ވ��ވ��ވ��ވ�\r苹\r苹\r苹\r耻�ވ��ވ��ވ��ވ�\r苹\r苹\r苹\r耻�ވ��ވ��ވ��ވ�\r苹\r苹\r苹\r耦Cz$Du97z/^iɻ�p��;Z$`{����Xr��op�N`WΈ�N�	w�9V	��k!7�\'�u?EUevB��e��\0�L�D��ӟ��6��#3���5|W���n�J�����As1h��k@�kh\0\0,ݥ�R��]D͡��գ�ULO�U�4�I��A�!+�v��}ܬHb{�Y�v$��sqg�n�Q�Ph�^Ҧ�S�ҍ|.4)���h��n�.�=�������3܍8q$OB}�Z�C�UnXb��~���Pn���轻�ފ���1�+���{NDp8qV�d��۹\r苹\r苹\r苹\r耻�ވ��ވ��ވ��ވ�\r苹\r苹\r苹\r耦A�\"�S ��\"�S �d� ���L���\Z�C��@pj��<-V4㱁${�\r�/4�:�%��C��	)�ͺ���.��!b}�u*��y<��~C�A��Z}4գ�TLϪɉ��3�<ꭍ6�E�Aa\ZmD�2��:e�PK��Sl���)�.ˍ��l(�%�:�_\r��**4��R�}�Zy�K���)E��Sm{L7�X��8m\"�f��hWCeNЅ(v�\'�(��S�&R1|*�0\\��Z�Q���`����m�x�&�]\r��_�B�$]P0&S �dL�)�@S �dL�)�D�dL�)�E2\ndL�)�E2�L�)�E2�AL�D^]2	��\rA��g�E�\nb�@���X��� �o��}���!3@=ֵ�~�Vc�h�AemB�2�Č��\"	��tT�	�Uc+e/�!�\\�t �Ɨ`*�,�,�hr�Z_)����{�\0\n�\0�=��:�\nB,�\"N�i�9ݯ�;�o]��46�H��,wн���U��D}���vN��9@��<���v.r��<�rB���_a\n7Q�0��dL��8�絻��O���c��qa��!8Q�p�I��B��\0j����g�Z�R��\0�qa��=\0��=�W4�k��j��O�m\Z��egG�\0��~7\r+�4�0͖��g��!?�_HY\\\nʭ��\"��5{L��S �dL��S �dL��N���Ҁ�DS�=(��)�10��>�WZ�?u�#a� �����\r�Z�C�.+���Hv|6L�D�a>\'v�q(��A �\00�n��SC�r~�ሲ\r�2�\r���a�KM����o��Mk��w��OK¼n����kq:����ʇu���X�b<W��u�u�-.`@����_f^��׳����.�R�g�ƚ�0�\r8�%��w��ş��ȃ����G:d���\0J/�*6��d�!�h�	�c\Z(\Z�\0?�Q��(����D#��zQ�Q��(���c��u|��.�2S�a@mYiĖo���xk�C\Z����+;��\0>nĨ�k������mo���U�OٴWC��$i���^�	�\"��\'�Z%��a�ٲ�0\rs(�ϣ��K~ML�m91���#Zt�?JU:&e�\n{Ҷ�\ntE:#ҏJ�N���Ҁ��ҏJ=(J=(��Ҁ?ڪ�6�x+_J�9\n��A����0�?�罥\Z�?�����W��1��N�!0\'a��xq�Eyd�츭K��n=�Ykzt��}:�O�[���.�\0EZ�8%��6���M����F���\'ttI���(��\"�\0D�tI���(��\"�\0D�tI��q�5��8�#�J��Uִf��u�s\ZҤ�\n-�P�q�^�\'Dܛ�?\nP`��9݇��8y+�\"V����h��W���j��|)�\0JD&��K���CҏJ=(��=(��ҏJ�H�G��y#�H��<�\"jLH��W3iv��t	V�,F�!$@��\'~�$Ε����mk�i{�ƴ\n�8��pӳ�!�\0e��?���0���BtYE�����DQ�/�2d1���G���6g�y��{d��ߺ@���V�.&ϴKc5��!���Y\n/E��&����4r1���\0�U�3�/�U�����3�/�N�S׺\"�D��������y�(+��;I9�[|ʗE���\0x�Kb������$��sr���MI5\'ĕ�M��}C���#O���G�Z���C\'���\0\n+L7�\\���h\0}���ÊۑXǷ�F`�H��[�L��ýh�\0����5�,���hC�W�J�ŷa�4�d^i�Ho�!��sOn�W�Vh����^H�G�H��$y#��G��zT�ҙ��*TG��\\\'n-��.�8&+��=O\0�gJ��Hܓk[O�{�@}�f��\r4tGs��.�Lw͆�kуG�@�\r���\Z�\n4<�aq�<��~�d��E[g��aD�s�0��}�e�k�8;��h��<::V�☑Q\\S�N�chҮ�}��@���[�j�[�j�3�5�1�*PEAx��螴lw0���qķ�=|j��\"�]F?�]���e���p��\\�d��R�tE�I{�%�x�϶�/虉�B�����	o�7a9�#��CfY-�*h^q$�k�Jׇ�ky��c�ʭ|S̸^ܻ��\n Č��ɍ�H�\\̼z\'{kj}�r+�k�aӅ�:���E�֍���w�3�Ak�����.Ru6ʴYly�$xw�#Bx�2���>H��j��7��:@!�B�����?O\"��y��vj+�ɘ$	���xϊ�?��nǛ^Z�_�+ҩlU��C��.�h4<A�Ә*��uo�ߘ{�G��zT��OҊ��9�)��Z��6�}nd�_�fP����qh�b>��	eN\\�O\Z�5�$�a�߯X��4i�$��ъ�L���ItT�zb�P+����q]�\"��,�7�HQOu��\r?5H�$N�j��8����m�p!�4g���*Iƹ̟�v��t�OtwPk\r�O��9��G�-��\"c<��X�1����9���Atɖm���[\'�q������\0��>�p�Ȇ�Q)�Ɉ��c�{��1���n�9TUq�\0���-^�y��-�}�o�)5F��Ø<�מG5�����,�H���㻄<^�z\n�(�s��h��A���@��$W��]�z�Z�~�h�4����h�ϚPr� �/6$���de�x\"+D���xS*t	��:���MSWH��y�`\'�ř�����ǀ}o�괨��V%��j�����p��9�[<������ݱ�ע+����s	/9�*����mA�[��]����_=���m�T��L�!İ����K�Xy����I�=:�(�ry�\\&E��ҝiQ���\\��U$�Tp��]9MO��h={}4�S�ESw�y4��*�%6^�.M&*Q)��$9�t�U�i�ri�S�Z�래��y�뜙{����١�\0kw�q���	��,��}�A|���!��\0��ΞK`��1N8�^���i��\\�+�Es�H�a��^�oT^�oT��8�fݶ��\0~�ͺ\"���	>U�+ͻ�RZrU�TLm[V-\Z�ίii-p-sM<AJk֍ڮ˶5\\(Ƞ`�099g3�����#K]���y���F~4���zq�P�8؋���D����DKi�q���_QE�x�J�4��/Q��w��~4��%�$�S��3��� �M/ι�=6艧DVӭhq�S�+!�1F�}���3N�]��0C�VB��}#�Z��c6Z����)��]+M�z~/o6����\0Ƶ�\rkZ\0�.�\\Pqj�#/@1n�V-��껽M=�a�\"�cz��cz�/f7�/f7�/f7�/f7���z����۽S����oTS�\0���rv݂ȍ-{Z���<���כw��5(6�U���[c�Q!��\'�o���+�}ZK\\\\8����/����W���)�w��#�T�~�y8u�5���D�uv�a�S%���Q�1T]����_,!ʓIc���DJH����sO���H���	ě�#�P��w��~$�$�Q{�\"^N,O�\r��O5:Z1L�\"C�+�>��?������k/�0�B��w����U���N%��<��X搚O��4u+��{\Z֐��D��\Zzs]���\0\0�8\0\0_�٠xoUx�Cn>-)�|ʮβ�}�\\�G\'(˽T�\0��ꤷ�w��K�\nsn�J�cz����ٍꀽ�ި��ި��ި��ިٍ�ٍ�ޜ�ޜ�\'E��oT^�oT����䆋��ޫ�sn�I�NH�NHh���w��Hm��T���1NHi��Y`��_ʮ�dt��WZ���A\r8��5x�=EUl~��<aB?�ա<\0�{G�DMvΏd������C��/Muߖ\0�k�O�q�8�~ϱ�u��э\n���z���x�)�n�){\'���U�������&� �2	�F`�ͻ�Ikiͻ�yޜ����\r\\۽Q{1�R;Ӓ;Ӓ\Z.�cz��cz�w�$w�$4]���E���H�NH�NHi��','Authorized'),(2,'anil','hi','anil@gmail.com','9535866270','# 43535','09/08/1995','Male','560016','Bangalore','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!3!%)7...383,7(-.+\n\n\n\r\Z\Z/% &---/.+-7---/---+--+---------/--------------------+��\0\0�\0�\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0E\0\0\0\0\0\0!1AQaq\"���2B����#CRb��3Sr����s�$5T�����\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\03\0\0\0\0\0!1AQ\"aq�2������R�3B�4��\0\0\0?\0�(5W9)i��?M�\\q��㱽�y3�p��i��>�v���2s���y������0o���k{W7\'��~�v����W���5�gms��lq��W�ޥ���m���F�vZ3��}���T�\Z���#�O�a�\0�6�>j[�)��x�obޞ��>�D����=&a�2nzSIa t?{���\0�����<7�ov~=??�g�&�%zsz8��C�E�F�WF&&7��cnR�Jk*ㅎ�G1�~y੓%q�mi��&ӵ\\�/gd���Q,?i\'25r����Q�_v����W���ns�5�yαy��.���\\3=^�d���E�bg�v�+h�Xg7�f�F�w;��i{w�\n��S��IM�����5����_Q�G�m�؏���YnMʵO��蝋�����ɂ}�����L�i�9�n��r�Um�;24v�\'����-6���u�Nl�<�ymW�������������������D퍎{�k��[Z+kt�ֳi��.�k�\0#�G��;�|>?1��[Q�h�~.�5�_�t���[��}�v�N<Q^rZ��9��U�����]���4�N��I�bX^Ŝ��+:�8�S	�%Y�b.=��r�+�\Z�%���c�\\�v<|�U����j�5�+z�.���e�qi6F�JϺ������i55�M�xq��V۷f�z�<e�\'�V�,�m�?[[�y��p�SS���:G_���a�8��C��=[t�;n����6����m�\'9�䴙�]�^�+EQ2�#W�WuMM؞�I��XՔ��(�5ch^%������/՞F6FuV����dz��T�`teh��:��䭦�82E�w�#6(�M�\'W���9���5F}\\LLo�Ӵ�R�z��RJ�Q�϶�\r]��2�t��h�jW��X��43�^��.t���J�*����.��Z�G#�o�/U��V0��JLm[V̳��H����(��(�5ehi� X�\ZB,�cf�� XY���pLv�KF���a�<l�[?�+K�uk=��0���c7t��[�C���f���=k����~^�N//L�O���������������g�F�&��ec!wH�\\�T�\r��G��\0O^�����<�o�f���n�?��Ꮂ�d�ě���yW�<KZ�)Q���R���%l�,B,�5�IVi��l�eXY�0��J��q�oo��\0��֬�K/G�\Z5Nf�\"v����^�J�٦�c�y����%їй\"�C��{�>\r5��y�i��h#��|��&�w�������!�LI)1��e����Z�9�`��YM�s�M��#�V��d+KHF��m-!B��HbTY2���\0���Y[�.hW��\0�������\0�S������}wu5� ������������������S�t�o�o�+����V~?���O�h�49�\0T89��5��<���gi��Q̖v9k��;^��)0��č�/I��޳�Z!�Y̯�#�6���+^�Jd4w��*��T|�f�t\'wX��\0���B�zto����2��ا뻨��qD\Z,���(� \\�[(���Ir���>=<�9�_�Ӥ�X��xL�/��N�w�u�	���x��J#��=Z,��V�^,��Ċ�H�C\"q,s�f�D0��9��r�ex�5E�g�~�N�;�^�r�̣��tuKy��c#�o�o�t}\'���Fߟ�<��mX�߮�              �V5�p�\\��\r���b&6���;ÒT��Z�0��o\"�\0y�Q��Y�N�I��;��)��I��v�*-�\"9K^��/0��We�b�6Pȣ��k��l��Nz�l����(�E3=o�:�R��,T]��Sq<�\0ϊ��2��y����J��g���p.�;�h�+�t8>�D��r�jrq䙎���y�ۤJ�F�fA��t\\��f[�T�P�t�b�����\\mH�_�?���դ�W��������Yo�q��;�/�����Z��h�	zw���(�Yn�]$�\ZI���Q�T@A�(��+қ�kl�uP�������Ӵm\nDnǚt-�����Ձ+�\\4��GYm������I�~;G����\0r����+�g�u&��r@@@@@@@@@@@@@@A���\0�N������.٪E���d{��PՉ�}�}.���\0\'�.}�U�irS���h���K�\'�N8�:׶ӷG��z�q=�a��7�_!꾓4�͆=������ӿ��Ŷǒy��?���ohr���5lw��U��Rjغ6��h���H�4E��K)�0�Z�;�6XAsbq�ゴRehg��~<6-+�ʓ5��f\r���`��V���]��UU8ܟ��zt:������wc��Sy��]�VW�A8�9��i2VX�-����_w�<x�#ݎ�]�/�ɖ������}2�\'ю��P���1s7;iox������tzqf��=^�y[�9�I��X_CH�?ѩ��o���o;5k���K��߷���ͷ�W���&��A��ρ#w�y[\Zڻ]�״���Mi�Uf�m>4������/��6�J[��_5��je��v�;O�����������{�\0it��n,w1�w��Y�e��l����>��cˏ,oIݱ�+}�����_��)\r�q�si�V�pʧ(����w�8��2�G��vD�8Pj2��{��x��y��|Bg�����7;oG藿���x�����Nf���^X�Ϟ��S������@�B��iJ�R6�����k[�Ӽ���VE��NŶ�Uwݤ��};��9����$9������10�����y�����m\\M��;kFê��×���s�t{��㍧�ٯ3a��:~�O��\0��9��=[}i��p5�W�M��-Ϥ1͓�9uq̋A�8����N8�i7��{�Rg��\r�mU�-���9��{�i@Vj9�0D���1�y-]�f�-vRq`��8�#ҫ�Qx�Ѽ|V���^�\"@ʪvIk<v$�6�fڅŏz��+^b#o��ξ\rvY����HvF���^	�v��_��F��굹��w���G���?�u��?�Dy��Đ�̀NzzV��?����=6������7����m�8l���_G�I�\r8q�#���˞�-��v�V��Z���),50h���w-�C;J#ZA�+Ln�6l{fak��ܲ��Z���^Z9�,N,|n���x��A#j��^�J\"f��;�igyB����w�4w�W(���w�qN;m.�;��r�\\@@@@@@@@Ad�5�s�CZ֗9�\0\Z�)���/�G�:�ˈkݣ?go�<.���v��1�g6��휯F\Z�,4X<��7�&vk.�f�R��H��*N��k��Y��֬싕y]����u�$��n��F��;ѝ�o����x��cޜ^�5����u\'�{�I��=d�(����[��/p=z4���lsۆ��͉u��ހVS����٣��H�*�sN��BV��*��X�Gx�7(��1;6�6h��k��;�Q;KN��;�AZ��h\'\"���~Ŀ��~r���S�X_\r�m�w��t\'���`�14��O�Gm)\"��^�%8�oᆢ�So.Y�����\'E���o�t�/.��I�p�|��B��lAYUB�p(�T��t)*RG+}(�׎%���ԫjŢk=�[Mf&��\Z״ݯk^ӽ�\\�~bbv�b\'x������J@�O\081�����f��Ժz\Z{�g�WnqW�^�B�J��*\n%7&M�aۋy�;�u�(9v�����%4�a�:8�F��\'8�Xo��K����XXy��Z�|\'�W�\r����3�En�d����~yt���t�Uړ>e��Ͻ��:������[��=!�fJ��\n������u<į�(�i=�\\�!�}�4w.>��9g����[|q���=b�q���j_{�!���40�$��ޞ�8�\\ܼ���PJْҡ*҉Q@5� �`�B[�|.#`o���:���t-�tjj)�������u����\0qa����7�[ޘv�{%�*B��T�``��F~$���6�]��ӾI]�O՞`{U�՝�5@�Y�u�qV)�uԡ[�]�=�G��xI���\Z8���\03|�]^Qg�InsmWV#�I������|�>��G��ӴL��q8�rq\'y�Wy�[tJ���%iP,���z#�qo�en�#�G󘲥�y_��o<Q�ᝯ��n�0���f�J�}��P��i]}4�>����l��(c�>�z�R�\Z��Y��࣪Yn�Un�.��@�\r�j�uu��9�3�L=��\rMx�K\\�H{\\�У�{�#�����ik�X{u�9s;�����P�J�P(�a��ǹVɅZ��I�o�?g����W�DL��\0��[���_ا/�s�1������z�:I\"Ԕ{��=\Z�\'�,&3�J7_�?J�h��f��=薪��d-���a5��a������ZL��i������.�.��,s^5��Ø7�ɉ�w{<�\0�*v�O{����\\�}�O���=����7]�K�AK�T%@�0�O��tLuF�E�J�ENt\"�iq��:���\n�ɔ��1ϕ�X���驝�J�c{ü��tPE�<v~dsUI#Z/,g��m.h7h���̅��\'����S��M����p~-�/�>�x��VY�=�!�\0�z�g�f;����H]]n�tA�˵�c(��H�O��sO��\Zp;mr[x�ɩ�ݚ�P)t�\n]%����SO�ܼ�;6��>����6���Zb���e�6J?]V��\"�C�������O���W��R�/Ԙ�������͸A����7M4Ʀ z�]w[�\'���q�u4����=a�Ϗ�x��[��Ā��Ӷ ��xZZ�N��wR���Y�ݴ|բ�U����ksW�]���.�t�j��\0;�\n]�)u	Q���z �A7 ��[Ϳ��U&���U��.y��qI��6��l�-t�=g��lQ�q�M��%늻ʴ��v�t�=�E1�26��m�w�nI�W֛L̺5��m\r���Y�G�$\Z��&��1�c�k��p�v13�\"b&6�\'�|ǚ��J`顽�E̱wkx�1�6��Um����x�`��F��+��<i��w~��xcOfU��%���uN	N��0Z>�<�k���|^�{�#�����������\'�r:�7��\'�r:�7��\'�r:�7���9)�A�/u6������X��`�}��M�oreX��]�4���j2��\r\Z~���M��lUV�9�,��@tm�F��Xq\n�s�����k�u����h���v/{�_#���j��-�N��R�H��Vk�\0��0�\r�@����9�KRI����m���6���i��������a�+z8��y�F6@8a���ۼ1�4v��^��\Z���c��V��_�S٧�;��}�?�|��m<I����MG�\"��I��\'�[�Ù���/��O{5���\0O�Ƚ�\0�{m<I���������\0�{m<I������\0y��Om��=��Wʨ��^�\0�=��$�ky^�Ũ?i��$��x�٭�>�����ϐOm��=�|�����q��4�����맵V�7�zl��4p��X�n�Ǭ7ߢ{ ��}NKw���\r+�ꠦX5O� �\n�          ��\nS�$�|E���Ϣ���� ��-4<>�������;(� �����\\t�A���-1��7S��HXh�[�$� �Q ���Fӄ��A}���','Authorized'),(3,'Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','#87827,Rajaji Nagar,Bangalore-21','05/06/1987','Male','560021','Bangalore','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0g\0\0\0�\0\0\0\0w�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0^IDATx^�]	�յn�g�\rPeQY4Ƽ$>1�AQp�Ƙ�E%�3��\"� ���\"�\0� ��*�� **��������===���=�~_}30�U�������e#P\ZƱÁ���U�L �_��3+k�/u\'����\"9��x\0׃\"3^9��o�f�2�??g�/�n��D~9�$�b����\\,6�����\Z�	�4,4އg��z��ȩ]����)�yO����\\�ߧe���Y��g��m�%��l\\s�����\"+ǉ��#2�3�\n,9/�O{S���4@Y��.��S!�V�ٔ����6Wd+/�����\r���G$�1\0u_����9z0e@J=p��d�StQ<���0�X�x��	�� /z\\�-һ\0i���\0(���0Kd���	�,���e^lΈFIW��x8	�(c��}T���|)5�9z�XZX\\���ɫ�-R�{���E���]l��c&�N�~�z�o\0�Ρ�\r��yO+j���NN��~�`>�hP���w�\\��>�9`�R&@��l�?`4�u�&aӘ	9y����8G���c�|�Z�;����Q\\m�ڂ<��?pr�_ �H<���~Ҁ���8:��h����@���V��1z��\n\0���%ǟ�\'=�{p(ϵ���4tDE�����3aɭ|5h���[)�����@��\nrt]�b��~���(��\\�r���\n�5�o��Hp8O:�:6�В��;p�@��1��{������LE,�*<ށ���6I-N\'�	�+�ۜ\'L��.�x��FH��,z�`����a�WZ��k��\r8�	r\r#��k����=�9uQ�x��\\�t�2��&��bF����+��>8�m	ƨ�\"^��y�l+Y�\\�4si0\"��=k\Z�\Z�0�g�4g�?�M�y�5|�:*9�����\0��,]\"��lA�I�S\\;:�;�rӼ*\'��S�����|\'��Z��\"ux��V5���t�ͅ���Lm�pΔ�C�J\\ǟ��%#��J����N��}8�ѝ>��r��\\3dÉ;U���b\'\Z�\08��(�Q@�V��U,��T5g�������8H�88��\\��vZ��gF��p[KOp�pΒ�i\nci�U�Y�|�r޴�9�_1�5(���8�S���X݀�N�Z�G���\n~�*Hu���\0��SM��)`<�]������.J8l\'�6b9<����aZl49K���t����Z�04ns���*L���l���+Y졚��5*�ʡ�Z�-�(�Ƹ\Z� ��-]�9�����I��UKT���Jߘ5Գ����p_�p�9�h��^zj�M&�~��4^�N�}t2+G\r;m�RP}R��|�K��a��69?�L�v�ħJO���\Z�4^q�?����%]u+>��q�k�wBC�T�`�t>R��Z��F��^���7bM��ߚ��c�O���\"��t�<����>Ƥ�)b�~�y�h�k�{���x�s4)��C�u58h�?PR� ��9f�!�P���`x�9$�5l�\'wc*��G3PV�<����\r�!q�L��v`7.@;��ksW`!\n���w�vwvS;�4~�5M����n$����o�q�a�IwQ�He�g��)��_~2�y�\n�����h�S���)�|9�?���:v�1��T�zh�T?�y���R%[�����O=��2_�9�����#r?���!8f+����ByI�n�IU�\"�\\�p���]�\0�X۶�2�ci��[R��@	\\�S~u]o�z�\09��,�����\\�0 uh*~�G@�i,P�mB��{���2�/����䆮�偬i��䥲i�W���*����k�ӳ���o���M�H��Jm\\�W��YRӼ*ݒ%����3��L.R��!_3��;\"��,���o?�+ȵ�ɸ~ݥ�\r�g+㺸�@9��>R�7O��O�!��Y*�~��q����d��xn�⌋���`��5Zd�� ���_�:w���)\r�-Wv�..F������ᤚ:H��9\r�nZQ�Zஏ\'�M\'����Њ�B@/�����,�^R�7�/5ϒK�\"��yњ3�N\ZH��zI����\0j�K@9�iq�-�\\κ��T�%����\0	���\Z&M��U �g���/�\\�)-ۃaF�[N��a�w�$7�\'��<�����u���O�]�X�:����I��N��3��}�磿\0��g�ʖ&��\\3^��cC\r�Z��]s>�\r\\�KZ=:F������ծ9Κͻ���)2iN�;��\r�p�\Zw��?ߨ��r?�[�-2y�\n�5����`f�e����Ou�4�Z�p���<,��U>9I:f��D���rH�����\0�\\��Ѡ�o�R���3�����kw:�-pN�,��g&��7�vRu�?9$@�����T�e��px��n�.���<�X/�7�9�z�����3��Nh�(���-�q9�PѰ��������,S:d쳞߸�x��� %���:�\"u�	5\'�g�o�%���H#ip�ܳ_Wt�:T��N�n�;+^�\"�w�)�jB$v�V�<-U[<g�,���y�H���\"ߢ���>R\\i�b��9�[��{:��a�۞7�\0=M��,vK���� Q���(���2x�)���I���Y�f���晠�u[�-N�&ڮ�}�Ti�L�{�%Afя,@� ���U[�h;.��}6����φr]����ȑ�W%8\'�\r��wG����&&�bh�*..g:5����,���󝉈�� ��j�6���ݕO˦8��H��+?���U}�%Wt�\n0$:h�X\r���#�$@Z�[�[CL�@S2\"-\ZH4��;�^�[.�ȍs�\r΁��%\0GRCEh���}�1�Wmh�>Y�3N���v��i9�FC����]�l��=����pf���q�s���kR.��*0\Z�p��w$O�w{[��,��`:S�w�6��r��~������mLJ�羾S-b�9�E@�s��ԜC�ub<��4�r(�K\'�m�h��\rG�5b��`�p��@�B�0�]�k��������x��d�H8�����k���{��(#&8Wg��\\��S���gJ����Yᆾ�����`#�~9!�M?G���,v﯃0�2�1�?,����,X�Q����Au���I%�ye��W��`�%����d�e�sZ��ä��������/�1��S��Ջ�OXE$ #r��΢������R�m���)�-۾��Mg��M���nܧ�N��2\'9\nOI�w:��0��П����ŕo��=%�sM��A��q�������&Kr8|r��0��/8c��0�,eƷ�8��N$�����t��i�J�I����SϷg���L~���u����GDpz�U�	�C7C4�,��\\���8�Ɍ�͌\r�+�w�y/��OXn���ӈ��m;D�0Fn��e�&���O7�Nr[���2��?��2�p�hpq�k�|�]�an�D4ho��S�R������G��}V��Q\'��4ɬS����U����\"l���.7%D)�#It��Z�&dӳ��1K��Y!��8���l�)���DL���)aAb\"#\0+�pdQ��B�@�E;�U�7^1pj\"oO\"�K-�F\"8\'�-�B�?��:��{� ����c*=�����j~�,K�\"�,[�U��j��S�J]Hf)u>i���X��KU4����.m�E��Σ�\":�j�H��\0�=7�0N��RV��5f.����isW*|�pNEswQ�0�(������xS\r{(P��%U�bpW+^+�8�\"����\'��]$]4�*������9���W� ^Z��\\�F���,Ι�`-j�a0]�b&t(q��@*�\0Y�#Gb�v��Yi��j�E�w�c���C�*݊SNB��}��\0��k��}C%G��$B+γo�\'�X��(�(c-N\"���:	���j88n5�X���$��%x��� \\n Z_>�r����\Z2�����ƣw��s)��n�Q����b�\"�2ĩB����V-�le�e�E[G��x�NCTs���\"h��\'\'9R��03i���M�Z$©�\r�N=+|gj���.�US����<��)�Q��Cq�d�K?�k���18�/�Rf�*Gu��aA�Epf��]��XFA���f�_�H�sR�뭝�gV��C8�3�8c���g��i�w��e�m�C����Qr�^_�F�\Zzu�3t�n��}\rp�73JS/q ϡ�7�����Q\\��بiL�`���8)v\"�G�\r;�~\\jf|�΅��`�U��]��N�H�	��^�i�:��}��6�\r�:\'��H�hs*��}�s�\r��[�\r��\n��2/J�(��y��@#���F�}���g=��\\C\'6$��8oZρ5w:�g��V,B�QP�)�!>llݾGX��U���M�k%X��2g�c�\Zs�N�I����c�����qDe�<q�!�\r��\'�\\�w�����G��\"���f[�4�Q�:�!N�Þ�ˁs�}Q����_1Z�iB{����U���Q�h��oXf�p���H#���S\'�(���C�)��I����s�8���\"���A�nʮ��HS��--0�x��J�\Zg���rR��t#d�>���糭vK�?�f(��调S�~\\\0�(�-��������9*(�.2�M��yr�Z�E��& �mrMI\'����7�Kt!��h��h��5�u���]n-���񷱶��	]���!�X ս��z�i��?$?�|��\"�ƛ�ץ8l)ּ���J�HSY�쏤|���	⥾��5�b<�֊7��E�l�7g,D���,R2�eϮ�.��8s�-?�\n����)�-��cGMY.�zNr5E0����$[f�������J`Ǘ�ۊ���/��(a���F칌��n�ݎRf4h�C�#`T�����xC�2�a>�S\r�<CG\n.@�P��gU\'7Ys��U�p!J88�n2�<���u��d2��g��9w}q��5g��K�:��+������Ҩ_�2��t���p3�k��c�@�ù�!b�<��u\ZuFҎ\"\rW����\\�s>\\�)�\Zr�S��X@D�;�\n=����L�d���d��I��̲(�r�Y��h).����xӜo�	�FV���\"�r����֏ �h�n*�x\'Y�15?[��0�aӗ�\"�k��\\b�����B�E\n�uy�!�sǪ5`;d�F(�>�1R�i��v�\Z[m��l�aX��Tp:t��y�P�3�\Z(�c$5�{ݺ��\Z����hH�sB�Y�c�(��v.,7�x�V(��G���8�����=npPȓ�y�X�E���g�W{����~}8��|�T\0�Y�����4�sb�9L���V:�=�sL��\r�-��vw\Z	�\0���1�9�F��hp���9&���l�B�79�uܭ��ZD`����w�~9O*�MGգ�.��X���%>u� �8?�K����f�V�`S����6��5V��\'}\Zn�:��n����]ڥ!�L]x�R�����1b�T��{���xX��u�\0%��麠v筹E����`�Oyom,\\��Xw~��>ix�P��2ؒ_��m}��]\"J��-fF�i��D�k2F��m�#&�>��q�\n-9��!�R�=�T\0������u���F����bR<|�\'O?.m��,����\Z!�`vb3Ʀ��(ˋ9�y���JN9R�Z���H�sB_r��I���D%�*1ѥ+�Dd$-O˥\\R�E@��6 S�Ƈ~�A�ج�\\�~���Ϣd1I�s\"�1�g�3���R�<�%4�E6\'!���0�D�F^pA�;8?^\r;�V���*]\nUej��Hp*!`Y�u6�:Z����6(�IsN��@�9�;���(��\\���	�Vj\"��.T�B笹V��8�b,�~��\"t�CgV5�ߧ�J%6mU���TFmt������?:H�\'|�?����o�\'Un͖� ��1���w��+��7\rRL��).�3�.����F��e~?�͊�pA�<W`.�[�O+\"�>r-���O��F�C]\'�w~y�P\Z�����\\�<���Y���a_�R+�����������Y\0T��	*4㜲���Y���Wj�1<\'\Z�Ǐ����Ȍy�ʐq�rϓ��C^��������G����*�m�=�E.����^�_�i?)-����R��@i��8�=,G&�X\"�\rޟ��m^���BVe�\nQ�\0\0\0\0IEND�B`�','Authorized');
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
INSERT INTO `patient` VALUES (1,'arun','hi','arun@gmail.com','9535866270','# 455','09/08/1991','Male','560016','Bangalore','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z-%&+.7-7+-5.--+-+-/5-7-57----+7-7------5-5+---+---8--��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0K\0	\0\0\0\0!1AQaq��\"2BU����#Rr���3CST����bs���c��$%��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0(\0\0\0\0\0\0\0\0\0!12\"a���#4A���\0\0\0?\0�%@@�)@DD\0)DP�(����PJ�(j􀈈����R������J ��Qe(���J�\"�k�h�_>\n�bzǭt:8��#�-�!�	u���GY�`si��1#�6����ƻ��ol@Y�m�+{v��Қ���l�L�2-��8�ݫ�Iʞ��L��?����G�t]8�#3��9�썶m���Ug��e4\rc�d�|�hǐΌ�ڱ�v����VMGY�C+$i�pp�LV�in>l��\0�n��*�G5�ot�H��H�]�\r�C�|�skH8Nh7���7Q��\Z�\Zy7;A ��2�ݼ3� \"\"\" ��Qe(������(\nQ@(�붟42T�^\0l@�3?&߈Q�i_uj/�m�GM��S���7�+�bz�WPy٥%��;�\"7������+�ϲv<c�o:3���_+D��W�)i���|�F2.wF�7�Vi���E\r��$�ay$�1嵬l7_Ų�m��Vg��O�Iެ�҇��Yq�K��:���+�,��K��%��C��k�\0A���p$*�(�e{4lh&�n6���d�!�A��ek����_k��8f]#��}��Q�\0�-��͙�<uo��նy\0҇���\'\'69�?�7!�1w ��/��\"\" \"(%�R�!J\"\" \"\"R���w�!֨�?��;�F���?(	<짞c��2�lB7sd8\r����D���r;��T9#Ǭs�s��a-`����%�&� �,���(9�*X�����\r���y埵�r�ޱkMe�Ζ��h`{�Hh78�%��Q��Z�|Z���C���o\'��h��R07�S��\Z�ZE���宅ub?��y\"���/��n�zS�gOz��iW9���Q��#\Z�۵��#��@ t��!�����MPV(��-�SM�ቮ �-;AZ��]^�--Q74�Ok �GZ�{fc@m�vMv{<S�wK紸�1����E%B	DD�����yqR�\0� �D@X�yG�{D�.�@p�d�G���o�ϙKf���hh��^���&C�*���i��y��U�8�❜��S�V|�q65Q���n-�m�������4\0�.�ڬ�&��5f��#-���!M>+�������1���\0��(��\"\"]ys���\05zD@DDR��\" �4�8d���5��aq�˸��\0��i�`�K���\0xޯb��,<��ͼS�W�\Z�Ƙ�y[��4ƭ�$ɇ��P󒵤\\�_1aǶõe�h�X\r�|}Y�3.��CZH����[8k�勚ٶ�qP\Z�Tu�DD@Qu*,�Q\0�)E������k��m�]�\"\"\"��oOR�3D�fD���\r�#m�����J ��9���%`T���p�.�����;,o\\��J�3�1S��ppK0ɮ��/bC�\"\0ncS�Xv������/�g築hෘP����2��^���q�ڼ��y��Ik��,��nӿ��67�`��*�����)����$Vd�D2�X��X�M��q7�}\'-G�S��%S�s���|7��E����,Χcl��\Z��5�4��tO�%oQ��E�J�����i�̾�Z�\")@���\'��H�{t�_��@DDD@DD�(���p-n��������ጉ��q���=�Ws��`3$�\0�V�����k�j��@��r#�-_���S�Ys7�6�8�G����#+^؎�y��M�կ���`�Hl6�[���{�4�O0��K/9$����BG��Y��.�rrsM�\"���V��0�- o�r�\r�|��A�x����#rmkI���2̠�]P��Z<V�ٹ[\"I\'��ld�?E���:�.�7���h;��r{S����dLo������bp�����x����qi�?&��@ߪ�C�1�LZ�\\\\�0\r���ۍ�6�h��͊�K/c#as��}�GN�W5�y/쉕���}�a�\'c[��\0n���h�����i\0����p�2jw�%�{^�?XË����-����I%�\0F��֓�Q^-g��[�n��ͺNLsJ��$�?�<��հ�\\�4�6�6���F3!����x���}�^��!�q;\0%H�<^�E��OR�:���e\\n�y��C�\0-�&�8���������NwO;$`�7��x�\\��!�\"E�:��Uz>P�x�o$/\'�x��[���K�5{MC[Nʨ� �bcǔǁ���\"����a7#3�2�)DP�y���	A��\"\"�|��/�F����Mm�\'�z�\\GK��@;�rv�icWW=Y7�įs��c��(�qn�>��/`�#�����UAA���y�	�mÀ����\0�G�i�}^��\n�[����ZA����\"_d�Kb[O�Y̑��y���zn�F���\"�����1��av\'�?X��8o�s�jã�y�kl���+\0do{��1�=@���������F@b7��׽�<�4��~Y:���l^M(�b2�1�I`\"�dp�s��w�|��=t��کo☋\\�D󯩪	h)�\0Q2�d�����X�,h9�������	�%���^GS�<����;��1X���]RĪ��^��|��	��� n\n�D��|�H;��:�ܠ4a~���pƐ�tx\Zlqaq �@�-�>�_z�t2~�͖{�α�zߚ=�E[��R��;��\'��w�ּGP���#6|Nk�xH���@A���>�mE<U,�j#�F�=��z����P]�\"�(��H��EU�\r���i�$�F�:q<.Ya]��_7�D�T@����1޹�At�*���h�*�ߞ�^��kM�༼�Ø�;�K������jA�Ϲ���9�r��V�F�+�I����p%р�E�sM\05�e�h�s$�U��?�WST��)�.\'td�����=RA�te��B�ZV*��[O���\0��^hs��kș�}����3��CQ?c�E(v�����7�������\\9�Z`|����1��9��zk2�>����V\r��mV��{�S��kc{�2�Þ���Zـ�\\��u�מ������iCGҺGd.��G0-�#y\0�v{3��ōe�ǲ� ��9��m���\0A�-#\\Ʊ�F�ݘ.Z`{mg5��2��qeo��	��$��s���=^ՙ��J�����\0���m˥Ar����#�9�I�A���wDF�ni��#���v1�;Z��ZL5t�\0����5�?��anD@DDP�%i�\0�mE�����J�\0��ȴs\\��M�=x6������Mr����P�m�c�a؂�$�l����KbA��/.�[��N_g�wwl�^1 ܺӦ�s��&&�H��\0�Y����Wˉ�Gر\r��B�G�նV}�\"���Ϳ�9m���ޓ8���Q�d�������6C#��aR�N욵n��n��!��~.x�dndq��{/�6���bi��i_���vX�\0\Zű/�?�o��\Zx���\n��>�������o�{�g�&%�b�$.�*X��\0�1��A.r��#����6��ҦՕQ}x#w�}��[�s���Kig��I0�\0R�]����%B�A	e(��I T�|�� ��(����\0�YQ�s?������\"���3/k�p��<Z��´���J�w�df�4x�����|��{�\\����;r��lI�QĘ�V��/.��ԩ�R|���U�[8��E[�v����_�ZD{ve�/[�z��Z����g�q0�]6\'����%G�{�����yy\'��y���1U/�l�LJ�$īJ�%<��߷�PĘ�{.T��r��Wj*H��,>{��O��]�5@f���O0����J�0vŨ5V�oѶ�w�#��tt7�z����6A��Yy�你\"\"\" o4U�@��Vh�[�9�ut;r����i܃H�B�BI�_�����iN�o��=O����h����mù+Uj�k?U�����ͣ��A �n�m[a�U�ڦ��幣��=����a�l���t�ڗ��ܬf������A�w�_������\rܛS~��o��7�����ٝ����8�A��Zo������<��6@��֏r\r5#y�J��\rx6� �1�\\\0�e�8�\'w���\Z�m�Hé1���+�uI��A�tڭZ�\0���y�.Wܠ��g[�}�=��[�Z`�U�:\r�r\rA��>��n�o�}{;i��l7r������p7pA�(�Pn��`���\r��DD@^\\��^�oHK�¯ݬZ�\"��!��i%�\\14��|\'s����t-�����Ok�SԸa$5�Ƴݽ�\"~|E��\r���s/��Nms�ь�o���fѼ�	��G��w������/tb�yƴ<��.g��u�N���U�Z�=���4��5�\\[g\\2)��E�\\�.��/���nsX��Z�xy��!/s>�˥�˚|<�ސ��?�<<�ސ��?�52�l#����4��%��O4��%��ML�S��5�y��!/t\nxy��!/s>�˥9��N�sW��[��G𧇚[��G�]-�pK.i��KzB^����KzB^���˥���>ioHK�ioHK��t��\0����-�	{�𧇚[��G�].��<<�ސ��?�\\�kv��l��kۚ�͡52��\\�>�i�yu���g�m�+l༷[�ٵ�e7�[��ܚ�tjYs[��K�c_-��\n������)��:?6�׹fR������-2��҂e{�<Rsq1��P�/�o%ȋ�*q��i�i��7��s��%�؀ �ǁ���6]l�Z�+��6\'3\0�bd��N�$����3A�_���(�k��0�\'�˝�L���)XH�5�w6�Ʒ\r�f���]{�$��sm�N�a����g��8�|�0�&#3�q 	6v2|�u�\"���A��A��I�\" �$g��w��?d>�\"\nn\"�t���','Authorized','[B@1a9b4a4'),(2,'tmksmanju','tmksmanju','tmksmanju13@gmail.com','9535866270','#87812,Vijaya Nagar,Bangalore-10','05/06/1987','Male','560010','Bangalore','����\0JFIF\0\0`\0`\0\0��\0C\0		\n\n\r\n\n	\r��\0C��\0\0c\0|\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0���d�2�@U$��	���[j:O���߂�K�֛~�=���ZZ*�!�1�;UN$���c�P���=\\���ޝ��ri�a�����Ȭ�oL�S;�����t��<sj��	�{�K�Vlg\'o\n��(�JyMg姑��9���ݴ�����D�T��M3�ne$(]ZS�n2�����r:Ա~��\0�ٍ/�\r����R`@��\0�p�����x^�]��uC�\0�N�:��ҡ���FK\\j����k�������:{V���{�7�S[Ş��	�A�=��в���0TO��8�y4��?�Lu�Xx%QW|��S��I����My|�[�Z�&A)�\0IL3v\'�|�:g zU)�$���S�cs \rp�x�c�`���;V�ȫ�k��l<7L�$���(d=��U�Pd�2�?u�s��|�}qS7ƿ�1����H22����c�\0�ޣ�k����#	�krA��,R�##0�b\n\r��\08�Enx[��G�y3ؠ�}nv��q��7bNK��v�����(G���#l���jV~g����ʟa��b���f����X$w�=i��7��Yl<\"�c�m�ؕ���|�Uz�+�����^��V�Jj���@	�q�*�~� z��6ll��s(�B��\"��G?$���=r|����n����.��[c��\\n�>O��8��i��`��\"�6>�W{�@?�������\0��\'�c�l���e�Ԑ��D:*�8x�M$���q�\0=d�}:P��\r����!X�xQT/���R��;������T�>#��m#�wi\Z�$�_<r*���4`on�=��4�֝�k��wHw��	������=����>�7b)����7�����O��>��B=���\0���zD�m���)Z���eĖ�.2�P}��ξt��>�^�.`�g�m�x��M҃��&*�\'\'$u����G�t �9�Y�Ɍ��\r����Cm��m�M]N�O:���}��G��9���?�n��?�%�_�?�����S��h5� \0�Oz�4���t�$~e\Z�\ró��t���A��T.����X7:�	���m޺\np��kha��+c�6ou��<VEު��:�E��[ǟ4�\0���5�^��NҴ����wڐF�,����ֻ���Wg���9;GS��ul�	��e?�n4�x%hةV�FH�R�ڿ<�.��4�>�|%���P�l���ag1�f�@������p��\0��4��<k��kK�@Ο��p����}?Z�g9te�*���EN�潥:/�I�,�6�ƫem�Ga�,*�<���M�v�W\n��\0�f�|P�˩��*���1@r�������+��]�GK�Kº��l�\rv�;�?³#<d��I��}���\'�k��a�8���Q�>O6���)�U�(??��o>.]���ňbL���П���_��������RKx���\\%���t�{�$�Oj���8^���|�#>�V��/����E\"�8>Vޘi�F<n�\0Y֠O�����%���=p7��&9����Sv=H���0��]����\0�s7�\0/������V��x�]Z̶��H����$��_$�1�O���\0?ਐX�\r��Ww~������E�p����\r�8\0|��_]܆�G�k�V�\0�?��M6��(ZD���M��q�?����(��r��J	4֫C�����G�{Y4��mt�S韉��؟��@�H֖p=A��9�ɬ��&-��ME�U޶��i|F�;|��n�\rk��C\\\0�N�#ws޹r��	J}��W�b=�.�;N_�;��N����ψA9�ߝqsx�z��*�߉������=LSgcw�0?��?�~R�{i�OĞ:�>�Վ��ĺ���_��o )�qY��D�p\r~�]x�*p�<��:�\0�^���>x�-�9���T\0SxIbV>��1�f��y\\I�����ֵ���_���kN5U�{y;=�.�������%��`��$��|���`���\0�?��\0��.��������<�䗕!��� U\'����@���\0�\'���/�sอ\'Yա�i\n��+�H·�X��t����I��ӕ��G�*��\0e���s�>�;�FO���MA&���޹�Շ?7Zbꛥ�����Z�?�]6�Ώ�@��Δ�x�sͪ(�J����՜��LՒ�I��1������­z� `�����[[�_#A}�U880+��	9��~ͺ�ǔXI�;�s�m���7��8`}d�S�_�_6m�����\0�P��~��,��\r拧\\�=��?��x��*��sֽw�\n���~���i	�K��K���\0�b�S��~epN>c�޻8f���h����h�8�N�e���&z-ϋH������n#.r}����f�y�U��A�r~���G	�|Ԫ7�������k��*d��߱ψ6�n^���eڻ�_��0���>�k�/�`#��g�c�����mN9\'�u;w���cI�8\r���H=�1�[��ja㼓_��[���.�!�&�L�����k�����~�X����ֺu�Kf���a8h��	(�s���+�U5��Z��ԕ*��.���tkF�8Ճ��Mz1�U\0��p~c����w��Oռ%�,h0j�Mo�����9�$��68`w�P�� ����������Q��^��2�P��g �W�#k�坘��%��99ϩ�=k�o�\nUjc�}�z�����c��*?濦��N��cޏ탃�k�]l�\0�҆֊�&�Vv?X^�U�����ӓW��5��\0m:�T��m�\rg��}V����u\"5m��1�k���=��eorN>׭߿\'��A��_��F�d����W���#w��O�²NX=��0� �f\"��+��_�?G��gRO�?X�,�v��\0k]���}Ls���_^��-ˀ�?ξ��\0��.Ή������}YA�\0rk3�\0��_�:��Z;�\0n���N�>OJO���L��\ZO�V����\0IGr�)�#�Y��3\0`;n>���x�9\n�&�\rc<�z��H�棆os�o4���SU5�h�e����V���d�Y[j���׌�U��4��Il%\Z�������C�\0M���ϵ|��[�ǈ�0\\cR�أn��V�АrY������\0�0Yrt�z��OW��s��n�c��Or�w��u��������ߌ\Z��>�o;�V/$W7�F�v�|��\nۈ%A÷8�����$��M~��1ؙb���-쬿�3�L�8jm����4����B�yZ+�$Ibq�NT�x����\0�t�!��x�YW\0]ZK�v`8�\n�\'�@���`S�����r�����v��S�3�&��⣋���{5��>����\Z�K��k��f��4����\Z�����\"W�e�7VFXW�y\\���|��� �Gq$�;��]�11��78��s��{��)�nq�����K��>5���#���M}��3�Ѭ����W-�\Z�lu����X�Ib�C���pGPj�:��2q����f��*am�Gm��;^s�6ǁ���\0�J�O�\0�~�;\r��Y5���#?��_��&�<���\0������K�	G�\0��F͜��)�~o�_���+ahǼ��}�\0��qu���/��[�l��:���ld4�x�@%Kw�\0�\"�$5Mk�*B�Hc�5�7�\09x2�_��|�iq��k�|���	���fRG�}+���mH3	4mQ\\�G����5���\n�T���(�I�����X����Ӄi��:�9�g�\\��\rx��^[?Ae�	�m��冝$k��\\��P@�d\Z�����\0�>��\0�S�5)�-� djX��)���~o�bhJ�֔9�ū�6.�P�\Z�Ú�\Zv��\n߱Ĺ3�I�NNN|c���_�����\Z��.v�� zx�D�\0�����=����T�\0ה��E=|Q:��\0�K�\0\0��\0�k�p��\0�����������ï�_�x ���(1�F�����C�yR/�%�<�Ù�\0��B�\0�����]p�\'JԸ�\0�9�\0��q�}��\0ej_�	?�\0Q�������?�/��9�\0�u�K������\00o�i��eJ������h����z�\0&W�/�n����\0^��\0��\0�L�n�V���9��\0���\0�?����\0��Y��/�_�x?�0��#�D�����\0&ҏ�7⤣��ss��A�{^�<k(?�	��o�&����+���\0���4�������\0�/����%�c>�O[��;Eף�=SMC��7h�1�����R��۵t���<�j�Nƕ����o�\"�_K��J��\0n����L�*�J�!>T��t>/�c�T�WE���O���,/L\Z}�6F�����?`o�\0���)��6l|+�A��m�ҿ���S�����i��6�\"Z����B�hbJ�@=O�St�m�����Y ��`�<�����3�b�\Zxi�r�^�#�8#.�a�Z�h8�ֿ���O��_\ZlM_K��Q>��D$�3�6�����\0��?+�G�?@B�6x�������_�\0�M���\0��QEM�`�\0�i��\0Bo��?�����?�M���\0��QE;������	��\0��\0\n_�f���\0�&�w�\0\0S�(����f���\0�&�w�\0\0c�\0\nO�f����&�w�\0\0S�(��\0�4�>�\0�7ÿ���G�3O���|;�\0�)�QI��ٯ��d����͞\0�\0�;�����E�����h���-2x�l�J�ml������4�@TDU�QEP���','Authorized','[B@1117cc0');
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
