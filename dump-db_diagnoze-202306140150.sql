-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: db_diagnoze
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB

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
-- Table structure for table `gejala`
--

DROP TABLE IF EXISTS `gejala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gejala` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_gejala` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gejala`
--

LOCK TABLES `gejala` WRITE;
/*!40000 ALTER TABLE `gejala` DISABLE KEYS */;
INSERT INTO `gejala` VALUES
(1,'Suhu badan turun kembali ke tingkat diatas normal pada pagi hari'),
(2,'Sendi lutut atau pinggul bengkak, kemerahan, dan terasa hangat'),
(3,'Nyeri sendi, terutama saat sendi digerakkan'),
(4,'Demam'),
(5,'Tubuh terasa lelah dan lemah'),
(6,'Suhu badan berangsur naik ketingkat yang tinggi sekali pada malam hari'),
(7,'Menggigil'),
(8,'Sakit kepala'),
(9,'Berkeringat banyak'),
(10,'Pegal linu'),
(11,'Anemia atau kurang darah'),
(12,'Mual'),
(13,'Muntah-muntah'),
(14,'Nyeri perut'),
(15,'Diare dan BAB berdarah'),
(16,'Ada pembesaran benjolan pada leher '),
(17,'Terasa nyeri pada dada'),
(18,'Kesulitan bernafas'),
(19,'Bersin-bersin'),
(20,'Warna kulit memudar'),
(21,'Menurunnya tingkat kesadaran'),
(22,'Pilek'),
(23,'Hidung tersumbat'),
(24,'Sesak napas'),
(25,'Suhu badan turun ke tingkat yang normal selama beberapa jam dalam satu hari'),
(26,'Mengalami demam akut selama 2-7 hari'),
(27,'Nyeri otot'),
(28,'Penurunan trombosit'),
(29,'Panas turun pada hari ketiga atau keempat'),
(30,'Wajah dan dada memerah'),
(31,'Ada bintik merah atau ungu'),
(32,'Ada bengkak akibat edema '),
(33,'Mengalami demam tinggi dari 39° sampai 40 °C (103° sampai 104 °F) yang meningkat secara perlahan mulai sore hari hingga dini hari'),
(34,'Denyut jantung lemah (bradycardia)'),
(35,'Sakit kepala yang hebat pada malam hari, terutama di belakang kepala'),
(36,'Kehilangan nafsu makan'),
(37,'Sembelit'),
(38,'Pada kasus tertentu muncul penyebaran vlek merah muda (\"rose spots\")'),
(39,'Sakit perut'),
(40,'Diare'),
(41,'Lemas'),
(42,'Batuk-batuk'),
(43,'Mengalami penurunan Berat Badan'),
(44,'Mengalamai panas dingin'),
(45,'Mengalami perubahan warna urine'),
(99,'Tidak Ada');
/*!40000 ALTER TABLE `gejala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penyakit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_penyakit` varchar(255) NOT NULL,
  `deskripsi_penyakit` varchar(255) NOT NULL,
  `pencegahan` varchar(255) NOT NULL,
  `pengobatan` varchar(255) NOT NULL,
  `obat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyakit`
--

LOCK TABLES `penyakit` WRITE;
/*!40000 ALTER TABLE `penyakit` DISABLE KEYS */;
INSERT INTO `penyakit` VALUES
(1,'Demam Septic','Terjadi karena adanya suatu zat yang dikenal dengan nama Pyrogen','Pemberian oksigen dan alat bantu pernapasan','Operasi, Arthrocentesis, sedangkan Fisioterapi akan membantu sendi bergerak dengan normal lagi','Antibiotik'),
(2,'Demam Berdarah','Penyakit menular yang disebabkan oleh virus dengue yang ditularkan melalui gigitan nyamuk Aedes Aegypti','Menguras bak mandi seminggu sekali','Pemberian obat penurun panas','Paracetamol'),
(3,'Radang Paru-Paru ','Penyakit akut yang ditandai oleh infeksi pada parenkim paru-paru','Harus memiliki/makan gizi yang cukup','Pemberian obat','Antibiotik'),
(4,'Demam Flu ','Infeksi virus yang menyerang hidung, tenggorokan, dan paru-paru','Menjauhkan diri dulu dari orang lain, hingga setidaknya 24 jam setelah demam turun, memakai masker bila ke luar rumah, menutup mulut dan hidung dengan tisu saat bersin atau batuk','Pemberian obat flu','Influenza'),
(5,'Demam Malaria','Penyakit infeksi menular yang menyebar melalui gigitan nyamuk. Penderita malaria akan mengeluhkan gejala demam dan menggigil','Pemberian terapi berbasis artemisinin (ACT)','Pemberian obat','Artemisin-based Combination Therapies (ACT)'),
(6,'Demam Hemorargik','Sejumlah penyakit pada manusia dan hewan yang disebabkan oleh infeksi virus','Menghindari gigitan caplak','Pemberian obat penurun panas','Obat Ribavirin atau Paracetamol'),
(7,'Demam Tifoid','Penyakit infeksi akut yang terjadi pada saluran pencernaan manusia (terutama usus halus) yang disebabkan oleh bakteri Salmonella typhi','Vaksin Tifoid','Pemberian obat penurun panas','Paracetamol'),
(8,'Demam TBC','Penyakit menular paru-paru yang disebabkan oleh Mycobacterium tuberculosis','Vaksin BCG (Bacillus Calmette-Guerin)','Pemberian obat penurun panas','Obat Rsoniazid, Obat Rifampicin, Obat Pyrazinamide dan Ethambutol'),
(99,'Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada');
/*!40000 ALTER TABLE `penyakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penyakit_detail`
--

DROP TABLE IF EXISTS `penyakit_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penyakit_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_penyakit` bigint(20) NOT NULL,
  `id_gejala` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID_GEJALA` (`id_gejala`),
  KEY `FK_ID_PENYAKIT` (`id_penyakit`),
  CONSTRAINT `FK_ID_GEJALA` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ID_PENYAKIT` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyakit_detail`
--

LOCK TABLES `penyakit_detail` WRITE;
/*!40000 ALTER TABLE `penyakit_detail` DISABLE KEYS */;
INSERT INTO `penyakit_detail` VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,2,7),
(8,2,4),
(9,2,8),
(10,2,9),
(11,2,10),
(12,2,11),
(13,2,12),
(14,2,13),
(15,2,14),
(16,2,15),
(17,3,16),
(18,3,18),
(19,3,19),
(20,3,20),
(21,3,21),
(22,3,14),
(23,4,22),
(24,4,23),
(25,4,8),
(26,4,24),
(27,4,21),
(28,5,25),
(29,5,26),
(30,5,8),
(31,5,27),
(32,5,28),
(33,5,29),
(34,6,30),
(35,6,31),
(36,6,32),
(37,6,11),
(38,6,5),
(39,6,27),
(40,6,8),
(41,6,13),
(42,7,33),
(43,7,7),
(44,7,34),
(45,7,35),
(46,7,36),
(47,7,37),
(48,7,38),
(49,7,39),
(50,6,40),
(51,2,41),
(52,8,42),
(53,8,43),
(54,8,5),
(55,8,4),
(56,8,44),
(57,8,36),
(58,8,45),
(99,99,99);
/*!40000 ALTER TABLE `penyakit_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_diagnoze'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14  1:50:50
