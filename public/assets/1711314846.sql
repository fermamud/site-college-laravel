-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2024 at 06:57 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp1-maisonneuve-e2395117_backup_v3`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `article` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `article`, `created_at`, `updated_at`) VALUES
(16, 526, '{\"article_title_en\": \"New Article\", \"article_title_fr\": \"Nouveau Article\", \"article_content_en\": \"Text\", \"article_content_fr\": \"Text\"}', '2024-03-20 04:18:30', '2024-03-20 04:18:30'),
(17, 526, '{\"article_title_en\": \"New article\", \"article_content_en\": \"Lorem ipsum\"}', '2024-03-21 20:40:01', '2024-03-21 20:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `nom` json NOT NULL,
  `date` date NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `nom`, `date`, `document`, `created_at`, `updated_at`) VALUES
(1, 526, '{\"en\": \"name teste modif 2\", \"fr\": \"nom teste modif\"}', '2024-03-19', '1710887831.xlsx', '2024-03-20 02:14:14', '2024-03-20 02:37:11'),
(2, 526, '{\"en\": \"ingles\", \"fr\": \"frances\"}', '2024-03-12', '1710886720.jpeg', '2024-03-20 02:18:40', '2024-03-20 02:18:40'),
(3, 526, '{\"en\": \"teste\"}', '2024-03-19', '1710886836.xlsx', '2024-03-20 02:20:36', '2024-03-20 02:20:36'),
(4, 526, '{\"en\": \"iojioj\", \"fr\": \"oijiojioj\"}', '2024-02-27', '1711043597.sql', '2024-03-21 21:53:17', '2024-03-21 21:53:17'),
(5, 526, '{\"en\": \"oji\", \"fr\": \"iojio\"}', '2024-03-21', '1711043613.pdf', '2024-03-21 21:53:33', '2024-03-21 21:53:33'),
(6, 526, '{\"en\": \"t6t6t6\", \"fr\": \"t6t6t\"}', '2024-03-21', '1711043631.sql', '2024-03-21 21:53:51', '2024-03-21 21:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `adresse` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `ville_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `etudiants_ville_id_foreign` (`ville_id`),
  KEY `etudiants_user_id_foreign` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `adresse`, `telephone`, `date_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(404, 'rua sofia', '+1.725.528.3536', '2023-11-09', 21, '2024-02-20 06:09:09', '2024-03-21 20:38:00'),
(405, '89093 Adams Ways Apt. 250West Bernieceview, OR 33423-2638', '989.782.2334', '1970-11-30', 21, '2024-02-20 06:09:09', '2024-02-21 03:03:08'),
(407, '55142 Williamson Drive\nLadariusberg, DC 19809', '224.704.5276', '2020-11-04', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(408, '6467 Ratke Forks Suite 856\nHarrisshire, RI 52675', '812.455.7420', '1988-10-23', 28, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(409, '1486 Jaquelin Meadow Apt. 904\nLake Dejonshire, SD 75564', '507.625.0946', '1980-02-27', 18, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(410, '3332 Gussie Passage Suite 722\nWest Mariettaview, TX 55885', '+1 (719) 620-1815', '2003-09-16', 19, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(411, '61630 Parisian Walk Suite 561\nSouth Marlin, WI 99674', '909.470.5971', '1973-07-16', 24, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(412, '46342 Crooks Creek\nEast Evelynborough, IN 49762-9942', '1-380-987-0634', '1993-03-11', 23, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(413, '68299 Luciano Lock\nEast Richiefort, UT 00016-9983', '+1.463.882.7202', '1988-10-13', 28, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(414, '40697 Miller Union\nSashamouth, PA 88608-1888', '469.819.9501', '2006-06-06', 18, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(415, '49619 Stracke Mill Apt. 753\nBrekketon, NH 61871', '(770) 796-4465', '2019-10-21', 23, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(416, '96581 Rowe Highway\nWest Helmermouth, FL 20863', '878-329-0660', '2000-06-24', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(417, '76798 Kyleigh Centers\nTerryview, DE 34764-0886', '720.559.7624', '1991-11-10', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(418, '5138 Ortiz Court\nPort Lessie, MT 35760-7359', '240-227-9416', '1983-05-08', 16, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(419, '41985 Lavada Court Apt. 386\nNew Chance, HI 94633-5145', '(351) 822-2275', '1980-01-29', 17, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(420, '140 Kirlin Valleys Apt. 105\nHillside, MO 48869', '283.547.8134', '1990-09-15', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(421, '797 Noemi Oval Suite 614\nKylefurt, OH 74552', '(707) 291-6150', '2001-08-23', 30, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(422, '78840 Jessy Meadows\nBryceville, SC 50639', '+1-929-847-0963', '1977-12-20', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(423, '62487 Zachariah Mills Suite 010\nNew Alfordville, FL 68810-1154', '+1 (351) 286-0206', '1976-06-08', 26, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(424, '398 Clare View\nEast Mathew, TN 01401-9989', '+1.680.465.7068', '2003-11-14', 25, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(425, '339 Schuyler Island Apt. 366\nPort Terrymouth, IL 49390-9264', '1-364-320-4583', '1997-08-08', 22, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(426, '51413 Karelle Isle\nHaleyland, SD 33523-2833', '1-727-806-4425', '2005-11-08', 27, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(427, '7142 Murl Stream Suite 439\nGuyshire, OR 97338', '351-205-7858', '2020-11-29', 22, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(428, '928 Brad Fort Apt. 580\nAbigailland, ME 16417', '830-598-9449', '1992-04-12', 27, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(429, '2169 Alec Orchard Suite 364\nPort Jamilfort, UT 17403-0116', '630-402-6830', '1973-10-10', 17, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(430, '27197 Sporer Ville\nNorth Jazmyn, WV 52282-1370', '+1 (410) 416-7701', '2002-11-02', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(431, '407 Sabina Lake Apt. 751\nLoweberg, WI 61159', '445-898-9484', '2011-08-14', 27, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(432, '613 Leola Radial Apt. 999\nSouth Janiceberg, RI 99699-0513', '(757) 260-3676', '2004-12-23', 30, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(433, '299 Nikolas Stream Suite 371\nLake Summertown, AL 11233', '+18018996704', '1983-09-20', 25, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(434, '3122 Cremin Rapid\nEast Reganside, IL 49135', '+14407423721', '1983-03-14', 19, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(435, '724 Lessie Crest Suite 780\nKirstenton, IN 36783', '+1.478.492.0859', '1977-08-27', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(436, '8640 Ila Crest\nSkilesmouth, CA 17841-8527', '+1-719-915-7818', '1971-11-01', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(437, '4236 Osinski Prairie Suite 794\nSouth Halieton, VT 96964', '731.710.9281', '1995-07-28', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(438, '4105 Spencer Springs\nMrazhaven, TN 66711-1959', '(703) 421-9843', '2014-03-05', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(439, '3248 Katelyn Cape\nBonnieport, HI 43288', '(813) 758-9690', '1975-04-13', 18, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(440, '761 Cole Track\nTrompmouth, MI 30074-9778', '986-445-8745', '1997-11-05', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(441, '41521 Ava Mills\nNew Timmy, CT 43008-3141', '501-551-9106', '2001-09-12', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(442, '9805 Maybell Ford\nNew Cecelia, OH 21140', '321.934.0172', '1992-07-08', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(443, '458 Marks Roads\nSouth Karianeton, NM 64045', '1-925-915-8154', '1976-02-06', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(444, '7838 Schneider Drives Apt. 202\nStromanbury, LA 04076-3031', '+1.585.935.5294', '2015-02-05', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(445, '52400 Briana Loop Apt. 512\nSouth Guidoshire, DE 85299-5036', '+1 (803) 689-6645', '2009-06-07', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(446, '291 Frances Spurs\nNorth Delphine, WY 97945-8362', '1-213-224-9023', '2001-01-14', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(447, '6575 Florence Haven\nEudoramouth, MI 99803', '(330) 621-4924', '1981-06-30', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(448, '180 Ervin Cape Apt. 178\nSouth Leliaton, UT 03353-7320', '+1-484-780-4184', '1993-03-05', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(449, '3031 Ryan Lodge\nStrosinberg, KY 82138-5743', '(551) 446-2893', '2019-05-17', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(450, '206 Cartwright Fort Suite 192\nBrekkemouth, CT 85249-3602', '+1 (563) 726-3493', '1973-01-21', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(451, '8618 Emily Parkways Suite 759\nSouth Deshawnton, AR 33468', '(539) 920-0835', '2010-12-18', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(452, '31853 Gregg Key Suite 728\nClaireland, KY 83574-3950', '+1 (706) 962-1439', '2014-09-23', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(453, '263 Alfonso Ways\nSouth Immanuelhaven, IL 00186-3412', '+1.740.241.5528', '1976-05-31', 23, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(454, '183 Rod Extension\nHoseafort, PA 43437-7206', '+1-415-338-0599', '1994-10-06', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(455, '1653 Weber Viaduct\nGleichnerberg, SD 95138-8874', '408-697-8330', '2019-07-19', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(456, '5965 Wilderman Village Apt. 665\nDickensmouth, CA 83638-7144', '+16789171762', '1986-01-03', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(457, '763 Heaney Avenue Suite 584\nZacheryfort, AL 78357-9555', '+1-254-264-4196', '2007-05-18', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(458, '780 Armstrong Forges Suite 549\nIsabelview, CT 81194-3184', '559-817-0651', '2004-10-15', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(459, '833 Marcelina Pike\nBrakusville, MT 87199-3286', '+1-574-433-8235', '2013-10-15', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(460, '970 O\'Connell Crossroad\nNew Geoburgh, MO 47329-3124', '(682) 682-0505', '1980-03-08', 19, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(461, '3107 Emmerich Place\nWest Delilahstad, MN 03242-1473', '1-501-499-6453', '1984-09-03', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(462, '210 Berge Mountains Suite 439\nCollierchester, WV 43239-5336', '1-443-636-1363', '1972-03-21', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(463, '6440 Walker Corner Suite 797\nAmeliefurt, TX 85336', '1-814-763-6900', '1995-10-25', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(464, '111 Osinski Lane Apt. 293\nNew Adriel, KY 44601', '631.716.3292', '1990-11-11', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(465, '7340 Dicki Walk\nThompsonland, NH 16299-1482', '458.557.8457', '1987-01-29', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(466, '1233 Schinner Island Apt. 500\nSouth Erlingberg, WA 56040', '+1 (930) 257-9137', '2005-07-02', 19, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(467, '13135 Koelpin Valleys Apt. 445\nWest Whitneytown, SD 01696-5290', '1-978-464-0167', '1996-11-24', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(468, '51726 Vaughn Heights Apt. 095\nPort Madysontown, FL 25804-3845', '860.313.8970', '1993-02-11', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(469, '22181 Randi Fort\nWalshfurt, SD 71215-8321', '+18129191825', '1977-10-28', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(470, '90038 Nicole Forge Suite 245\nDuBuqueport, GA 00784-0951', '1-309-899-8366', '1988-10-23', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(471, '72715 Bogisich Throughway Apt. 902\nSouth Claud, OK 22478', '+1-508-556-4340', '1976-11-25', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(472, '123 Medhurst Ford\nLake Brittany, AL 79095-4238', '1-640-585-7400', '1997-01-31', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(473, '2242 Hyatt Tunnel\nJaimeside, DC 45827', '435-510-2160', '2012-02-06', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(474, '76816 Schaefer Locks\nSouth Hortensefurt, AR 52095', '+1 (541) 709-2028', '2005-02-12', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(475, '1409 Junior Squares Apt. 636\nLake Gunner, TX 09673', '+1 (515) 496-0422', '1981-07-13', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(476, '79854 Schimmel Glen Apt. 973\nBrekkebury, NC 51893', '682-468-7793', '2002-10-18', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(477, '58449 Boyle Roads Suite 674\nKaydenton, GA 07588-1560', '+1 (224) 824-6082', '1975-06-17', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(478, '332 Bridget Village\nSkilesshire, CO 98593-0453', '863-985-4539', '1985-03-18', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(479, '4233 Reinger Field\nHeaneymouth, SD 69508', '763-774-9075', '1992-09-09', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(480, '93237 Block Fields Suite 895\nWildermanview, MT 53570-8720', '(352) 498-4215', '2014-10-07', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(481, '424 Fisher River\nSouth Johnathon, MO 97781', '1-920-702-5364', '1986-02-07', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(482, '8290 Paucek Field\nLake Gladycefurt, KY 04258', '+1 (781) 271-3991', '2002-04-03', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(483, '961 Odell Club Apt. 019\nEast Darrion, PA 22531-2190', '(205) 894-0569', '1972-03-30', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(484, '275 Stark Squares Apt. 077\nZulaufview, NH 69129', '517-692-6924', '1982-08-30', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(485, '962 Frederik Manors\nOkunevabury, CO 88493', '907.421.9205', '2005-04-21', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(486, '66867 Barton Roads Suite 441\nLittleville, IA 76108', '920-325-4519', '1975-04-19', 18, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(487, '119 Victor Key Apt. 809\nNew Walton, IN 66889', '+1.551.361.4126', '2008-01-12', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(488, '95313 Baumbach Station Suite 633\nKassulkeport, MA 02463', '+1 (423) 485-4486', '2019-12-11', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(489, '86998 Zakary Highway\nLake Vivianneville, UT 26676-8031', '+15346706902', '1986-03-28', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(490, '405 West Brooks Suite 034\nNorth Leone, SC 21714', '1-585-953-5213', '2006-08-15', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(491, '2539 Sonia Camp\nAbshireport, WI 15626-7821', '959.832.9638', '1999-11-20', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(492, '42579 Cassie Estates Apt. 596\nHuntershire, OR 43870-7217', '+1 (906) 732-5518', '1991-02-02', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(493, '887 Greenfelder Mountain Suite 881\nEast Alphonso, AR 03134', '(540) 309-8794', '1999-12-19', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(494, '131 Michaela Manor\nMerlinstad, NV 45898', '1-316-387-4339', '2022-04-24', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(495, '9686 Ullrich Landing Suite 808\nEast Rocky, MA 65732', '+1 (228) 416-9368', '2002-10-10', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(496, '946 Rogahn Roads\nTryciaborough, WV 08540-0196', '1-657-340-2945', '1987-05-07', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(497, '6335 Carolina Mill\nPfannerstillside, OR 43053', '+1-316-835-6312', '1975-05-26', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(498, '66558 Kendrick Lodge\nEast Erinport, UT 31306-8599', '+1-346-996-9781', '1978-10-20', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(499, '478 Gerlach Trace Apt. 184\nLake Sigurd, GA 72909', '657-455-6038', '1982-12-04', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(500, '97974 Catalina Estate\nSmithamborough, NV 18210', '1-570-428-5713', '1975-03-17', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(501, '6469 Dena Junctions\nNicolatown, WI 44892-4879', '618.295.2045', '2014-07-09', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(502, '1943 Tremblay Corners Suite 257\nRobinmouth, AZ 90807-9816', '+1-507-728-5735', '1974-10-29', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(503, '7127 Jakubowski Neck\nLake Emmetstad, NV 24282-4750', '1-740-713-1030', '1986-11-16', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(520, 'ushuashaushaushasshaushs', '51626364546', '2024-02-09', 16, '2024-02-26 23:05:50', '2024-02-26 23:05:50'),
(521, '1118 Avenue du Mont-Royal Est', '5146081368', '2024-02-07', 17, '2024-02-26 23:07:35', '2024-02-26 23:07:35'),
(526, '1118 av mont royal', '5146081368', '2024-03-12', 29, '2024-03-19 02:08:56', '2024-03-19 23:13:19'),
(527, '1118 av mont royal', '5146081368', '2024-03-12', 29, '2024-03-19 02:11:42', '2024-03-19 02:11:42'),
(529, '1118 av mont royal', '5146081368', '2024-03-06', 17, '2024-03-21 18:29:49', '2024-03-21 18:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_08_154920_create_villes_table', 1),
(6, '2024_02_08_155007_create_etudiants_table', 1),
(7, '2024_03_18_000253_create_articles_table', 2),
(8, '2024_03_19_134037_create_documents_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(404, 'Alo alo alo ghjgjhg', 'qgreen@gmail.com', NULL, 'ABC', NULL, NULL, '2024-03-19 02:25:06'),
(405, 'Katlynn Kris', 'kautzer.jaycee@aufderhar.info', NULL, 'ABC', NULL, NULL, NULL),
(407, 'Arlie Pfannerstill', 'kunde.dusty@grimes.biz', NULL, 'ABC', NULL, NULL, NULL),
(408, 'Ursula Kuphal', 'astoltenberg@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(409, 'Kacie Wehner', 'nicola19@terry.com', NULL, 'ABC', NULL, NULL, NULL),
(410, 'Dagmar Stokes', 'elian.schaden@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(411, 'Kay Goldner', 'mikayla94@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(412, 'Eloisa McCullough', 'rtillman@schaden.biz', NULL, 'ABC', NULL, NULL, NULL),
(413, 'Cornell Quigley', 'mspinka@deckow.com', NULL, 'ABC', NULL, NULL, NULL),
(414, 'Deonte Hills', 'bayer.amelie@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(415, 'Johnnie DuBuque', 'erick64@mueller.com', NULL, 'ABC', NULL, NULL, NULL),
(416, 'Erick Stroman', 'shanie.jerde@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(417, 'Matilda Cummerata', 'kweber@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(418, 'Taryn Price', 'esenger@maggio.com', NULL, 'ABC', NULL, NULL, NULL),
(419, 'Brycen Reichert', 'mbrakus@langworth.org', NULL, 'ABC', NULL, NULL, NULL),
(420, 'Lavon Hackett', 'ycrooks@kunde.org', NULL, 'ABC', NULL, NULL, NULL),
(421, 'Samir Hessel', 'ytorphy@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(422, 'Noe Rogahn', 'qmacejkovic@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(423, 'Princess Bashirian', 'katlynn09@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(424, 'Christy Fisher', 'susana04@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(425, 'Arch Upton', 'ona85@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(426, 'Kiel Mertz', 'carroll.karen@feest.org', NULL, 'ABC', NULL, NULL, NULL),
(427, 'Willa Considine', 'summer.beier@berge.net', NULL, 'ABC', NULL, NULL, NULL),
(428, 'Michale Abbott', 'mhill@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(429, 'Ariel Beahan', 'stark.dudley@ruecker.com', NULL, 'ABC', NULL, NULL, NULL),
(430, 'Daphne Boehm', 'audrey.miller@bins.org', NULL, 'ABC', NULL, NULL, NULL),
(431, 'Duncan Metz', 'yfeeney@hessel.com', NULL, 'ABC', NULL, NULL, NULL),
(432, 'Jeffry Schuppe', 'harber.jarred@rosenbaum.biz', NULL, 'ABC', NULL, NULL, NULL),
(433, 'Tyshawn Jones', 'langosh.darion@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(434, 'Odessa Moen', 'larry70@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(435, 'Janice Nikolaus', 'lydia.heaney@miller.info', NULL, 'ABC', NULL, NULL, NULL),
(436, 'Marguerite Conn', 'smith.lilla@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(437, 'Desmond Christiansen', 'eliezer.jenkins@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(438, 'Ross Wisoky', 'amina.pfannerstill@vonrueden.com', NULL, 'ABC', NULL, NULL, NULL),
(439, 'Bryce Considine', 'lklocko@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(440, 'Kira Hane', 'corwin.liliane@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(441, 'Curt Mante', 'tglover@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(442, 'Darius Walker', 'abbigail.parisian@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(443, 'Nat Wuckert', 'eldon88@russel.com', NULL, 'ABC', NULL, NULL, NULL),
(444, 'Karlie Weber', 'rrobel@block.biz', NULL, 'ABC', NULL, NULL, NULL),
(445, 'Jaren Leffler', 'schaefer.jordon@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(446, 'German Block', 'maggie69@brakus.com', NULL, 'ABC', NULL, NULL, NULL),
(447, 'Amelie Medhurst', 'gregory.berge@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(448, 'Ward Carter', 'ljacobs@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(449, 'Vince Welch', 'reymundo.goldner@leffler.com', NULL, 'ABC', NULL, NULL, NULL),
(450, 'Margarette Sporer', 'kuhn.kristofer@hane.com', NULL, 'ABC', NULL, NULL, NULL),
(451, 'Toni Thiel', 'zrippin@altenwerth.com', NULL, 'ABC', NULL, NULL, NULL),
(452, 'Derrick Bartoletti', 'philip57@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(453, 'Raphael Haag', 'verona.brakus@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(454, 'Jennifer Mohr', 'mortimer31@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(455, 'Isabel Halvorson', 'alexane24@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(456, 'Letha Parisian', 'prohaska.sheldon@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(457, 'Luna Fadel', 'choeger@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(458, 'Marietta Boehm', 'walsh.godfrey@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(459, 'Tianna Runte', 'clarson@rolfson.com', NULL, 'ABC', NULL, NULL, NULL),
(460, 'Bessie Kuhic', 'skunze@sanford.com', NULL, 'ABC', NULL, NULL, NULL),
(461, 'Creola Kertzmann', 'ndaniel@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(462, 'Alanis Nolan', 'jadon42@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(463, 'General Kuhn', 'kaylah.moen@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(464, 'Carrie Donnelly', 'tfunk@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(465, 'Archibald Crooks', 'betty78@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(466, 'Eleanore Goodwin', 'pierre.jenkins@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(467, 'Dariana Kuhlman', 'andreane.denesik@nicolas.com', NULL, 'ABC', NULL, NULL, NULL),
(468, 'Jadyn Bartoletti', 'prosacco.dejuan@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(469, 'Pasquale Swaniawski', 'sherman93@murphy.com', NULL, 'ABC', NULL, NULL, NULL),
(470, 'Drake Daugherty', 'renee.jakubowski@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(471, 'Abbigail Weber', 'lisette.renner@breitenberg.org', NULL, 'ABC', NULL, NULL, NULL),
(472, 'Lewis Hill', 'javon89@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(473, 'Herbert Hagenes', 'retta.leannon@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(474, 'Johnny Hoeger', 'jsteuber@veum.com', NULL, 'ABC', NULL, NULL, NULL),
(475, 'Daniella Powlowski', 'xcorkery@mitchell.org', NULL, 'ABC', NULL, NULL, NULL),
(476, 'Layla Cormier', 'buckridge.cruz@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(477, 'Rusty Ullrich', 'verda65@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(478, 'Dereck Flatley', 'kariane.stracke@durgan.com', NULL, 'ABC', NULL, NULL, NULL),
(479, 'Cristian Moen', 'ugerhold@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(480, 'Micah Russel', 'stanton.carol@tremblay.com', NULL, 'ABC', NULL, NULL, NULL),
(481, 'Hubert Reichel', 'bayer.edwina@kub.com', NULL, 'ABC', NULL, NULL, NULL),
(482, 'Bethel Bahringer', 'beer.pauline@koss.org', NULL, 'ABC', NULL, NULL, NULL),
(483, 'Curtis Mraz', 'emerson.mcglynn@mante.biz', NULL, 'ABC', NULL, NULL, NULL),
(484, 'Theron Marks', 'batz.brooke@reichel.net', NULL, 'ABC', NULL, NULL, NULL),
(485, 'Ahmad Cassin', 'brakus.norma@bode.com', NULL, 'ABC', NULL, NULL, NULL),
(486, 'Henry Schowalter', 'marquardt.santos@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(487, 'Viola Sanford', 'ybrekke@jacobs.com', NULL, 'ABC', NULL, NULL, NULL),
(488, 'Bryce Sawayn', 'rempel.taurean@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(489, 'Ellie Kessler', 'wluettgen@hettinger.info', NULL, 'ABC', NULL, NULL, NULL),
(490, 'Jeffery Stiedemann', 'berge.christiana@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(491, 'Cornell Ullrich', 'schmeler.emile@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(492, 'Stephen Leuschke', 'fgoodwin@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(493, 'Andreane Corwin', 'pfannerstill.markus@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(494, 'Willis Balistreri', 'white.joesph@collins.com', NULL, 'ABC', NULL, NULL, NULL),
(495, 'Fredy Leffler', 'kristian57@gleason.net', NULL, 'ABC', NULL, NULL, NULL),
(496, 'Jovani Pagac', 'dana.stracke@hotmail.com', NULL, 'ABC', NULL, NULL, NULL),
(497, 'Kayli Koss', 'danyka80@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(498, 'Albina Flatley', 'kihn.michale@yahoo.com', NULL, 'ABC', NULL, NULL, NULL),
(499, 'Grace Lemke', 'ugreen@cole.com', NULL, 'ABC', NULL, NULL, NULL),
(500, 'Daija Mosciski', 'marjory.oreilly@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(501, 'Johnny Abernathy', 'bfriesen@schiller.org', NULL, 'ABC', NULL, NULL, NULL),
(502, 'Daniela Wintheiser', 'fay.lexie@ebert.com', NULL, 'ABC', NULL, NULL, NULL),
(503, 'Mitchel Nitzsche', 'sschmitt@schmitt.com', NULL, 'ABC', NULL, NULL, NULL),
(520, 'Teste final', 'testefinal@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(521, 'Fernanda Frata Mamid', 'testefinal2@gmail.com', NULL, 'ABC', NULL, NULL, NULL),
(522, 'ygyug', 'tyyt@huhd.com', '2024-03-18 21:57:16', '123456', 'ygyug', '2024-03-18 21:57:16', '2024-03-18 21:57:16'),
(523, 'Fernanda Frata Mamud', 'mikayla94444@yahoo.com', NULL, '123456', NULL, '2024-03-19 02:04:39', '2024-03-19 02:04:39'),
(524, 'Fernanda Frata Mamuduh', 'mikayla94h@yahoo.com', NULL, '123456', NULL, '2024-03-19 02:06:55', '2024-03-19 02:06:55'),
(526, 'Fernanda Frata Mamuduh', 'fernandafrata@gmail.com', NULL, '$2y$10$0GH.QgXHEBTfu7HE60u5LOolszeuspaB/K4Wctrr/66TQcG8Eunge', NULL, '2024-03-19 02:08:56', '2024-03-19 23:13:19'),
(527, 'Fernanda Frata Mamuduh', 'hjhjkh@yahoo.com', NULL, '$2y$10$0GH.QgXHEBTfu7HE60u5LOolszeuspaB/K4Wctrr/66TQcG8Eunge', NULL, '2024-03-19 02:11:42', '2024-03-19 02:11:42'),
(529, 'Fernanda Frata Mamud', 'tytftytftyftyf4@yahoo.com', NULL, '$2y$10$7gvCEL.8qDWtLYvbzNYnVuNP2YpUCGmYSG5jHFjmhz1QVesx4587e', NULL, '2024-03-21 18:29:49', '2024-03-21 18:29:49'),
(530, 'Fernanda Frata Mamid', 'mikayla9tyftyftyftytf4@yahoo.com', NULL, '$2y$10$4SZ.h1gHJpI/2U3rIaXKUu4nOoBjTvSZ6otIhAwDwZ7UOnkSMWBg6', NULL, '2024-03-21 18:40:42', '2024-03-21 18:40:42'),
(531, 'Fernanda Frata Mamid', 'mikayla9uyguig4@yahoo.com', NULL, '$2y$10$4XRnADqaJ/JOU6nACwnGKu/Ec1hhvCfhfi1ABhjwpo2OQw2qDXI0S', NULL, '2024-03-21 18:41:47', '2024-03-21 18:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(16, 'Nicolettechester', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(17, 'South Babyton', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(18, 'Lake Ariannafurt', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(19, 'Mayerville', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(20, 'South Constantin', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(21, 'New Cesar', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(22, 'North Daniela', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(23, 'South Magdalenafurt', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(24, 'Ankundingview', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(25, 'North Cristopher', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(26, 'Schillerland', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(27, 'Monahanstad', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(28, 'East Zita', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(29, 'Gibsonhaven', '2024-02-20 06:08:44', '2024-02-20 06:08:44'),
(30, 'Lake Myrtice', '2024-02-20 06:08:44', '2024-02-20 06:08:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_user_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;