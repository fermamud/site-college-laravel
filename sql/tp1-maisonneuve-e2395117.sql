-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2024 at 12:29 AM
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
-- Database: `tp1-maisonneuve-e2395117`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `ville_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `etudiants_email_unique` (`email`),
  KEY `etudiants_ville_id_foreign` (`ville_id`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `telephone`, `email`, `date_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(404, 'Fernanda Frata', '2777 Hackett Fields Apt. 162West Brycenville, CA 22512', '+1.725.528.3536', 'qgreen@gmail.com', '2023-11-09', 21, '2024-02-20 06:09:09', '2024-02-26 03:21:37'),
(405, 'Katlynn Kris', '89093 Adams Ways Apt. 250West Bernieceview, OR 33423-2638', '989.782.2334', 'kautzer.jaycee@aufderhar.info', '1970-11-30', 21, '2024-02-20 06:09:09', '2024-02-21 03:03:08'),
(406, 'Amelie Murphy', '34781 Marques Brooks Suite 665\nEast Madeline, HI 51035', '(936) 752-5958', 'feil.marilou@mayer.com', '1996-08-07', 17, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(407, 'Arlie Pfannerstill', '55142 Williamson Drive\nLadariusberg, DC 19809', '224.704.5276', 'kunde.dusty@grimes.biz', '2020-11-04', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(408, 'Ursula Kuphal', '6467 Ratke Forks Suite 856\nHarrisshire, RI 52675', '812.455.7420', 'astoltenberg@gmail.com', '1988-10-23', 28, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(409, 'Kacie Wehner', '1486 Jaquelin Meadow Apt. 904\nLake Dejonshire, SD 75564', '507.625.0946', 'nicola19@terry.com', '1980-02-27', 18, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(410, 'Dagmar Stokes', '3332 Gussie Passage Suite 722\nWest Mariettaview, TX 55885', '+1 (719) 620-1815', 'elian.schaden@hotmail.com', '2003-09-16', 19, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(411, 'Kay Goldner', '61630 Parisian Walk Suite 561\nSouth Marlin, WI 99674', '909.470.5971', 'mikayla94@yahoo.com', '1973-07-16', 24, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(412, 'Eloisa McCullough', '46342 Crooks Creek\nEast Evelynborough, IN 49762-9942', '1-380-987-0634', 'rtillman@schaden.biz', '1993-03-11', 23, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(413, 'Cornell Quigley', '68299 Luciano Lock\nEast Richiefort, UT 00016-9983', '+1.463.882.7202', 'mspinka@deckow.com', '1988-10-13', 28, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(414, 'Deonte Hills', '40697 Miller Union\nSashamouth, PA 88608-1888', '469.819.9501', 'bayer.amelie@gmail.com', '2006-06-06', 18, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(415, 'Johnnie DuBuque', '49619 Stracke Mill Apt. 753\nBrekketon, NH 61871', '(770) 796-4465', 'erick64@mueller.com', '2019-10-21', 23, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(416, 'Erick Stroman', '96581 Rowe Highway\nWest Helmermouth, FL 20863', '878-329-0660', 'shanie.jerde@hotmail.com', '2000-06-24', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(417, 'Matilda Cummerata', '76798 Kyleigh Centers\nTerryview, DE 34764-0886', '720.559.7624', 'kweber@gmail.com', '1991-11-10', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(418, 'Taryn Price', '5138 Ortiz Court\nPort Lessie, MT 35760-7359', '240-227-9416', 'esenger@maggio.com', '1983-05-08', 16, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(419, 'Brycen Reichert', '41985 Lavada Court Apt. 386\nNew Chance, HI 94633-5145', '(351) 822-2275', 'mbrakus@langworth.org', '1980-01-29', 17, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(420, 'Lavon Hackett', '140 Kirlin Valleys Apt. 105\nHillside, MO 48869', '283.547.8134', 'ycrooks@kunde.org', '1990-09-15', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(421, 'Samir Hessel', '797 Noemi Oval Suite 614\nKylefurt, OH 74552', '(707) 291-6150', 'ytorphy@yahoo.com', '2001-08-23', 30, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(422, 'Noe Rogahn', '78840 Jessy Meadows\nBryceville, SC 50639', '+1-929-847-0963', 'qmacejkovic@hotmail.com', '1977-12-20', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(423, 'Princess Bashirian', '62487 Zachariah Mills Suite 010\nNew Alfordville, FL 68810-1154', '+1 (351) 286-0206', 'katlynn09@hotmail.com', '1976-06-08', 26, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(424, 'Christy Fisher', '398 Clare View\nEast Mathew, TN 01401-9989', '+1.680.465.7068', 'susana04@gmail.com', '2003-11-14', 25, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(425, 'Arch Upton', '339 Schuyler Island Apt. 366\nPort Terrymouth, IL 49390-9264', '1-364-320-4583', 'ona85@hotmail.com', '1997-08-08', 22, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(426, 'Kiel Mertz', '51413 Karelle Isle\nHaleyland, SD 33523-2833', '1-727-806-4425', 'carroll.karen@feest.org', '2005-11-08', 27, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(427, 'Willa Considine', '7142 Murl Stream Suite 439\nGuyshire, OR 97338', '351-205-7858', 'summer.beier@berge.net', '2020-11-29', 22, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(428, 'Michale Abbott', '928 Brad Fort Apt. 580\nAbigailland, ME 16417', '830-598-9449', 'mhill@gmail.com', '1992-04-12', 27, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(429, 'Ariel Beahan', '2169 Alec Orchard Suite 364\nPort Jamilfort, UT 17403-0116', '630-402-6830', 'stark.dudley@ruecker.com', '1973-10-10', 17, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(430, 'Daphne Boehm', '27197 Sporer Ville\nNorth Jazmyn, WV 52282-1370', '+1 (410) 416-7701', 'audrey.miller@bins.org', '2002-11-02', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(431, 'Duncan Metz', '407 Sabina Lake Apt. 751\nLoweberg, WI 61159', '445-898-9484', 'yfeeney@hessel.com', '2011-08-14', 27, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(432, 'Jeffry Schuppe', '613 Leola Radial Apt. 999\nSouth Janiceberg, RI 99699-0513', '(757) 260-3676', 'harber.jarred@rosenbaum.biz', '2004-12-23', 30, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(433, 'Tyshawn Jones', '299 Nikolas Stream Suite 371\nLake Summertown, AL 11233', '+18018996704', 'langosh.darion@gmail.com', '1983-09-20', 25, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(434, 'Odessa Moen', '3122 Cremin Rapid\nEast Reganside, IL 49135', '+14407423721', 'larry70@hotmail.com', '1983-03-14', 19, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(435, 'Janice Nikolaus', '724 Lessie Crest Suite 780\nKirstenton, IN 36783', '+1.478.492.0859', 'lydia.heaney@miller.info', '1977-08-27', 21, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(436, 'Marguerite Conn', '8640 Ila Crest\nSkilesmouth, CA 17841-8527', '+1-719-915-7818', 'smith.lilla@hotmail.com', '1971-11-01', 29, '2024-02-20 06:09:09', '2024-02-20 06:09:09'),
(437, 'Desmond Christiansen', '4236 Osinski Prairie Suite 794\nSouth Halieton, VT 96964', '731.710.9281', 'eliezer.jenkins@yahoo.com', '1995-07-28', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(438, 'Ross Wisoky', '4105 Spencer Springs\nMrazhaven, TN 66711-1959', '(703) 421-9843', 'amina.pfannerstill@vonrueden.com', '2014-03-05', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(439, 'Bryce Considine', '3248 Katelyn Cape\nBonnieport, HI 43288', '(813) 758-9690', 'lklocko@yahoo.com', '1975-04-13', 18, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(440, 'Kira Hane', '761 Cole Track\nTrompmouth, MI 30074-9778', '986-445-8745', 'corwin.liliane@gmail.com', '1997-11-05', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(441, 'Curt Mante', '41521 Ava Mills\nNew Timmy, CT 43008-3141', '501-551-9106', 'tglover@hotmail.com', '2001-09-12', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(442, 'Darius Walker', '9805 Maybell Ford\nNew Cecelia, OH 21140', '321.934.0172', 'abbigail.parisian@hotmail.com', '1992-07-08', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(443, 'Nat Wuckert', '458 Marks Roads\nSouth Karianeton, NM 64045', '1-925-915-8154', 'eldon88@russel.com', '1976-02-06', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(444, 'Karlie Weber', '7838 Schneider Drives Apt. 202\nStromanbury, LA 04076-3031', '+1.585.935.5294', 'rrobel@block.biz', '2015-02-05', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(445, 'Jaren Leffler', '52400 Briana Loop Apt. 512\nSouth Guidoshire, DE 85299-5036', '+1 (803) 689-6645', 'schaefer.jordon@hotmail.com', '2009-06-07', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(446, 'German Block', '291 Frances Spurs\nNorth Delphine, WY 97945-8362', '1-213-224-9023', 'maggie69@brakus.com', '2001-01-14', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(447, 'Amelie Medhurst', '6575 Florence Haven\nEudoramouth, MI 99803', '(330) 621-4924', 'gregory.berge@gmail.com', '1981-06-30', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(448, 'Ward Carter', '180 Ervin Cape Apt. 178\nSouth Leliaton, UT 03353-7320', '+1-484-780-4184', 'ljacobs@yahoo.com', '1993-03-05', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(449, 'Vince Welch', '3031 Ryan Lodge\nStrosinberg, KY 82138-5743', '(551) 446-2893', 'reymundo.goldner@leffler.com', '2019-05-17', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(450, 'Margarette Sporer', '206 Cartwright Fort Suite 192\nBrekkemouth, CT 85249-3602', '+1 (563) 726-3493', 'kuhn.kristofer@hane.com', '1973-01-21', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(451, 'Toni Thiel', '8618 Emily Parkways Suite 759\nSouth Deshawnton, AR 33468', '(539) 920-0835', 'zrippin@altenwerth.com', '2010-12-18', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(452, 'Derrick Bartoletti', '31853 Gregg Key Suite 728\nClaireland, KY 83574-3950', '+1 (706) 962-1439', 'philip57@yahoo.com', '2014-09-23', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(453, 'Raphael Haag', '263 Alfonso Ways\nSouth Immanuelhaven, IL 00186-3412', '+1.740.241.5528', 'verona.brakus@gmail.com', '1976-05-31', 23, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(454, 'Jennifer Mohr', '183 Rod Extension\nHoseafort, PA 43437-7206', '+1-415-338-0599', 'mortimer31@gmail.com', '1994-10-06', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(455, 'Isabel Halvorson', '1653 Weber Viaduct\nGleichnerberg, SD 95138-8874', '408-697-8330', 'alexane24@gmail.com', '2019-07-19', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(456, 'Letha Parisian', '5965 Wilderman Village Apt. 665\nDickensmouth, CA 83638-7144', '+16789171762', 'prohaska.sheldon@hotmail.com', '1986-01-03', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(457, 'Luna Fadel', '763 Heaney Avenue Suite 584\nZacheryfort, AL 78357-9555', '+1-254-264-4196', 'choeger@yahoo.com', '2007-05-18', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(458, 'Marietta Boehm', '780 Armstrong Forges Suite 549\nIsabelview, CT 81194-3184', '559-817-0651', 'walsh.godfrey@gmail.com', '2004-10-15', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(459, 'Tianna Runte', '833 Marcelina Pike\nBrakusville, MT 87199-3286', '+1-574-433-8235', 'clarson@rolfson.com', '2013-10-15', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(460, 'Bessie Kuhic', '970 O\'Connell Crossroad\nNew Geoburgh, MO 47329-3124', '(682) 682-0505', 'skunze@sanford.com', '1980-03-08', 19, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(461, 'Creola Kertzmann', '3107 Emmerich Place\nWest Delilahstad, MN 03242-1473', '1-501-499-6453', 'ndaniel@gmail.com', '1984-09-03', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(462, 'Alanis Nolan', '210 Berge Mountains Suite 439\nCollierchester, WV 43239-5336', '1-443-636-1363', 'jadon42@hotmail.com', '1972-03-21', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(463, 'General Kuhn', '6440 Walker Corner Suite 797\nAmeliefurt, TX 85336', '1-814-763-6900', 'kaylah.moen@hotmail.com', '1995-10-25', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(464, 'Carrie Donnelly', '111 Osinski Lane Apt. 293\nNew Adriel, KY 44601', '631.716.3292', 'tfunk@hotmail.com', '1990-11-11', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(465, 'Archibald Crooks', '7340 Dicki Walk\nThompsonland, NH 16299-1482', '458.557.8457', 'betty78@gmail.com', '1987-01-29', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(466, 'Eleanore Goodwin', '1233 Schinner Island Apt. 500\nSouth Erlingberg, WA 56040', '+1 (930) 257-9137', 'pierre.jenkins@gmail.com', '2005-07-02', 19, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(467, 'Dariana Kuhlman', '13135 Koelpin Valleys Apt. 445\nWest Whitneytown, SD 01696-5290', '1-978-464-0167', 'andreane.denesik@nicolas.com', '1996-11-24', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(468, 'Jadyn Bartoletti', '51726 Vaughn Heights Apt. 095\nPort Madysontown, FL 25804-3845', '860.313.8970', 'prosacco.dejuan@hotmail.com', '1993-02-11', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(469, 'Pasquale Swaniawski', '22181 Randi Fort\nWalshfurt, SD 71215-8321', '+18129191825', 'sherman93@murphy.com', '1977-10-28', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(470, 'Drake Daugherty', '90038 Nicole Forge Suite 245\nDuBuqueport, GA 00784-0951', '1-309-899-8366', 'renee.jakubowski@yahoo.com', '1988-10-23', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(471, 'Abbigail Weber', '72715 Bogisich Throughway Apt. 902\nSouth Claud, OK 22478', '+1-508-556-4340', 'lisette.renner@breitenberg.org', '1976-11-25', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(472, 'Lewis Hill', '123 Medhurst Ford\nLake Brittany, AL 79095-4238', '1-640-585-7400', 'javon89@yahoo.com', '1997-01-31', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(473, 'Herbert Hagenes', '2242 Hyatt Tunnel\nJaimeside, DC 45827', '435-510-2160', 'retta.leannon@yahoo.com', '2012-02-06', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(474, 'Johnny Hoeger', '76816 Schaefer Locks\nSouth Hortensefurt, AR 52095', '+1 (541) 709-2028', 'jsteuber@veum.com', '2005-02-12', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(475, 'Daniella Powlowski', '1409 Junior Squares Apt. 636\nLake Gunner, TX 09673', '+1 (515) 496-0422', 'xcorkery@mitchell.org', '1981-07-13', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(476, 'Layla Cormier', '79854 Schimmel Glen Apt. 973\nBrekkebury, NC 51893', '682-468-7793', 'buckridge.cruz@yahoo.com', '2002-10-18', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(477, 'Rusty Ullrich', '58449 Boyle Roads Suite 674\nKaydenton, GA 07588-1560', '+1 (224) 824-6082', 'verda65@hotmail.com', '1975-06-17', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(478, 'Dereck Flatley', '332 Bridget Village\nSkilesshire, CO 98593-0453', '863-985-4539', 'kariane.stracke@durgan.com', '1985-03-18', 24, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(479, 'Cristian Moen', '4233 Reinger Field\nHeaneymouth, SD 69508', '763-774-9075', 'ugerhold@gmail.com', '1992-09-09', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(480, 'Micah Russel', '93237 Block Fields Suite 895\nWildermanview, MT 53570-8720', '(352) 498-4215', 'stanton.carol@tremblay.com', '2014-10-07', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(481, 'Hubert Reichel', '424 Fisher River\nSouth Johnathon, MO 97781', '1-920-702-5364', 'bayer.edwina@kub.com', '1986-02-07', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(482, 'Bethel Bahringer', '8290 Paucek Field\nLake Gladycefurt, KY 04258', '+1 (781) 271-3991', 'beer.pauline@koss.org', '2002-04-03', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(483, 'Curtis Mraz', '961 Odell Club Apt. 019\nEast Darrion, PA 22531-2190', '(205) 894-0569', 'emerson.mcglynn@mante.biz', '1972-03-30', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(484, 'Theron Marks', '275 Stark Squares Apt. 077\nZulaufview, NH 69129', '517-692-6924', 'batz.brooke@reichel.net', '1982-08-30', 20, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(485, 'Ahmad Cassin', '962 Frederik Manors\nOkunevabury, CO 88493', '907.421.9205', 'brakus.norma@bode.com', '2005-04-21', 25, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(486, 'Henry Schowalter', '66867 Barton Roads Suite 441\nLittleville, IA 76108', '920-325-4519', 'marquardt.santos@gmail.com', '1975-04-19', 18, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(487, 'Viola Sanford', '119 Victor Key Apt. 809\nNew Walton, IN 66889', '+1.551.361.4126', 'ybrekke@jacobs.com', '2008-01-12', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(488, 'Bryce Sawayn', '95313 Baumbach Station Suite 633\nKassulkeport, MA 02463', '+1 (423) 485-4486', 'rempel.taurean@gmail.com', '2019-12-11', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(489, 'Ellie Kessler', '86998 Zakary Highway\nLake Vivianneville, UT 26676-8031', '+15346706902', 'wluettgen@hettinger.info', '1986-03-28', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(490, 'Jeffery Stiedemann', '405 West Brooks Suite 034\nNorth Leone, SC 21714', '1-585-953-5213', 'berge.christiana@hotmail.com', '2006-08-15', 27, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(491, 'Cornell Ullrich', '2539 Sonia Camp\nAbshireport, WI 15626-7821', '959.832.9638', 'schmeler.emile@yahoo.com', '1999-11-20', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(492, 'Stephen Leuschke', '42579 Cassie Estates Apt. 596\nHuntershire, OR 43870-7217', '+1 (906) 732-5518', 'fgoodwin@hotmail.com', '1991-02-02', 17, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(493, 'Andreane Corwin', '887 Greenfelder Mountain Suite 881\nEast Alphonso, AR 03134', '(540) 309-8794', 'pfannerstill.markus@gmail.com', '1999-12-19', 16, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(494, 'Willis Balistreri', '131 Michaela Manor\nMerlinstad, NV 45898', '1-316-387-4339', 'white.joesph@collins.com', '2022-04-24', 29, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(495, 'Fredy Leffler', '9686 Ullrich Landing Suite 808\nEast Rocky, MA 65732', '+1 (228) 416-9368', 'kristian57@gleason.net', '2002-10-10', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(496, 'Jovani Pagac', '946 Rogahn Roads\nTryciaborough, WV 08540-0196', '1-657-340-2945', 'dana.stracke@hotmail.com', '1987-05-07', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(497, 'Kayli Koss', '6335 Carolina Mill\nPfannerstillside, OR 43053', '+1-316-835-6312', 'danyka80@yahoo.com', '1975-05-26', 22, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(498, 'Albina Flatley', '66558 Kendrick Lodge\nEast Erinport, UT 31306-8599', '+1-346-996-9781', 'kihn.michale@yahoo.com', '1978-10-20', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(499, 'Grace Lemke', '478 Gerlach Trace Apt. 184\nLake Sigurd, GA 72909', '657-455-6038', 'ugreen@cole.com', '1982-12-04', 30, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(500, 'Daija Mosciski', '97974 Catalina Estate\nSmithamborough, NV 18210', '1-570-428-5713', 'marjory.oreilly@gmail.com', '1975-03-17', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(501, 'Johnny Abernathy', '6469 Dena Junctions\nNicolatown, WI 44892-4879', '618.295.2045', 'bfriesen@schiller.org', '2014-07-09', 28, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(502, 'Daniela Wintheiser', '1943 Tremblay Corners Suite 257\nRobinmouth, AZ 90807-9816', '+1-507-728-5735', 'fay.lexie@ebert.com', '1974-10-29', 21, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(503, 'Mitchel Nitzsche', '7127 Jakubowski Neck\nLake Emmetstad, NV 24282-4750', '1-740-713-1030', 'sschmitt@schmitt.com', '1986-11-16', 26, '2024-02-20 06:09:10', '2024-02-20 06:09:10'),
(509, 'Fernanda Frata Mamud', '1118 av mont royal', '15146081368', 'fernandafrata@gmail.com', '2024-02-01', 16, '2024-02-21 03:25:01', '2024-02-21 03:25:01'),
(519, 'Fernanda Frata Mamud', '1118 av mont royal', '15146081368', 'fernandafrataa@gmail.com', '2024-02-08', 16, '2024-02-26 03:22:25', '2024-02-26 03:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_08_154920_create_villes_table', 1),
(6, '2024_02_08_155007_create_etudiants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
