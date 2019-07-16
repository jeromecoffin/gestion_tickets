-- Generation time: Tue, 16 Jul 2019 07:41:10 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_nom` varchar(50) NOT NULL DEFAULT '',
  `client_email` varchar(50) NOT NULL DEFAULT '',
  `client_numero` varchar(50) NOT NULL DEFAULT '',
  `client_del` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `client` VALUES ('1','Powlowski-Walter','gutkowski.kirstin@langworthberge.com','','0'),
('2','Oberbrunner, Hand and Russel','macie08@greenfelderankunding.org','6124','0'),
('3','Rippin LLC','kirlin.henderson@wehner.com','5209823','0'),
('4','Turcotte, Williamson and White','brandyn04@carroll.biz','15466990','0'),
('5','Macejkovic PLC','zbruen@crooks.com','474839691','0'),
('6','D\'Amore, Lang and Willms','albin.hudson@kuphalarmstrong.org','','0'),
('7','Miller, Carter and Wolf','tyreek.leannon@oconnerbosco.com','5746','0'),
('8','Boehm-Farrell','stan.haag@lebsack.biz','4','0'),
('9','Satterfield-Gutmann','domenic.stoltenberg@brakuswintheiser.com','97991','0'),
('10','Pfannerstill, Stroman and Simonis','marvin44@towne.com','341','0'),
('11','Windler PLC','oscar68@dickensstoltenberg.com','','0'),
('12','Blanda, Sipes and O\'Kon','addie.hudson@flatleyklein.com','1485','0'),
('13','Torphy LLC','mhalvorson@thiel.com','6505','0'),
('14','Mueller-Williamson','swalter@leannonerdman.com','998167','0'),
('15','Swift-Klein','nikolaus.phyllis@koelpin.org','','0'),
('16','Ward-Von','guillermo20@okonshields.info','','0'),
('17','Price-Ruecker','bartell.paul@jacobidare.com','9945','0'),
('18','Kris Group','morar.jadyn@berge.com','808657','0'),
('19','Langosh, Wisoky and Boyer','dean54@smithamrussel.info','15012','0'),
('20','Doyle LLC','cwatsica@yundt.com','34834975','0'),
('21','Little, Kihn and Nikolaus','leonardo55@heidenreich.net','53','0'),
('22','Kemmer Inc','keyshawn20@hesselmertz.com','52456552','0'),
('23','Hettinger Group','rosendo15@borercrist.com','81591','0'),
('24','Kerluke PLC','koelpin.simeon@gusikowski.org','2','0'),
('25','Wehner, Wiza and Mills','ocarroll@pouros.com','8302','0'),
('26','Prosacco-Morar','tsteuber@daniel.com','505','0'),
('27','Considine-Robel','wo\'reilly@strosinroob.com','1116252','0'),
('28','Berge, Prosacco and Hermann','beahan.deborah@kovacek.com','77625306','0'),
('29','Cummerata LLC','gayle02@kozey.net','9941','0'),
('30','Heller Inc','pat.pollich@gutkowskimitchell.net','','0'),
('31','Hirthe LLC','von.anissa@hellerspencer.com','7','0'),
('32','Bernhard-Rempel','tiffany.skiles@harrisgibson.org','488','0'),
('33','Runolfsdottir-Hamill','hills.cayla@mohr.com','63161684','0'),
('34','Carter, Cummings and Jast','dicki.sheridan@collins.info','25153','0'),
('35','Reichert, Hahn and Treutel','mireille.romaguera@howell.org','5','0'),
('36','Zieme-Schowalter','kathryne16@cronin.com','773','0'),
('37','Blick, Hammes and Dach','lambert.klein@brownsauer.com','74630','0'),
('38','Fahey Inc','jesse.balistreri@okonwelch.com','299','0'),
('39','Schumm-Borer','kroberts@moen.org','69070','0'),
('40','Langworth LLC','caleb.walker@dubuque.com','16173','0'),
('41','O\'Reilly, Macejkovic and Ebert','hpfannerstill@rosenbaum.biz','502578','0'),
('42','Stroman-Pouros','floy68@greenfelder.com','100739535','0'),
('43','Christiansen, Simonis and Kiehn','deron.quitzon@hand.com','59579080','0'),
('44','Mosciski, Green and Hahn','murl47@botsfordkeebler.com','1','0'),
('45','Hintz-Wiegand','roxane.boyle@wolff.com','','0'),
('46','Barrows, Leannon and Breitenberg','abbott.betsy@goodwinwilkinson.org','4405','0'),
('47','Kerluke-Homenick','trunolfsdottir@cummerata.com','309','0'),
('48','Bauch-Deckow','crooks.ola@mills.info','55','0'),
('49','Kirlin, Wyman and Stroman','lorenzo01@reynolds.org','76537234','0'),
('50','Altenwerth, Pollich and Goldner','velva76@jacobson.org','','0'),
('51','Leuschke-Ortiz','wilfredo.mills@jerde.net','7285004','0'),
('52','Dicki-Haley','luciano75@pacochadamore.com','96','0'),
('53','Wunsch, Turner and Price','gus32@flatley.info','488283304','0'),
('54','Ebert, Schmitt and Hand','koch.marcelo@sporer.com','61962976','0'),
('55','Bashirian-Cummerata','alexis.boehm@vonweissnat.biz','351','0'),
('56','Hayes Group','zboncak.joannie@batzkub.org','65082','0'),
('57','Feest and Sons','marilou.hessel@eichmann.com','','0'),
('58','Langosh-Morar','panderson@mosciski.net','18','0'),
('59','Wyman LLC','ayden01@breitenberg.com','','0'),
('60','Yost Group','jmiller@rippingrant.com','489767','0'),
('61','Zulauf-Luettgen','hagenes.josephine@aufderhar.com','908563','0'),
('62','Bradtke-Schultz','romaguera.quinton@konopelskilebsack.com','47812591','0'),
('63','Larkin and Sons','william.leffler@hayes.org','36795522','0'),
('64','Krajcik-Oberbrunner','farrell.trisha@hauckhermiston.com','999','0'),
('65','Roob-Hudson','alice75@rath.biz','16','0'),
('66','Bernier Group','mitchell.marjory@kub.com','52283668','0'),
('67','Corwin-Wehner','towne.kirstin@russel.com','271461','0'),
('68','Kling PLC','douglas55@cronaorn.net','691156','0'),
('69','Pouros LLC','skyla47@kling.com','252','0'),
('70','Herzog, Wisoky and Bergstrom','jacobs.adelia@kihnlockman.com','58','0'),
('71','Collier, Schowalter and Hyatt','reynolds.shaylee@kuphalkoelpin.com','68561','0'),
('72','Schimmel-Beatty','beaulah22@stoltenberg.net','2957075','0'),
('73','West, Ledner and Smitham','vandervort.justice@nicolas.com','5526241','0'),
('74','Boehm-Keebler','murphy.renner@tromp.com','4','0'),
('75','Nolan, King and Roberts','markus.hoeger@runolfsson.net','17','0'),
('76','Abernathy Ltd','winfield63@robel.com','369896128','0'),
('77','Mante Ltd','dolly.jaskolski@gulgowskikuphal.net','271007','0'),
('78','Keeling, Skiles and Collins','dooley.josefa@schulistmoen.com','4016','0'),
('79','Brekke, Sipes and Donnelly','foster.rohan@witting.org','8162717','0'),
('80','Schaden, Davis and Padberg','luz49@mclaughlinbechtelar.com','','0'),
('81','Walker PLC','cummerata.taurean@andersonschamberger.com','81794','0'),
('82','Connelly, Larson and Halvorson','cathrine.morar@hodkiewiczemmerich.com','7684','0'),
('83','Kshlerin, Spencer and Hammes','troy39@schinner.com','7478','0'),
('84','Von-Schuster','danial46@ohara.com','326','0'),
('85','Wilkinson, Crist and Hyatt','memmerich@fay.com','2778','0'),
('86','Botsford-Hauck','miller.emie@west.com','62368','0'),
('87','Jerde, Reichert and Swaniawski','zrunolfsson@pfannerstill.info','27702002','0'),
('88','Zboncak Ltd','koelpin.mitchel@kozeywindler.com','717','0'),
('89','Kautzer, Witting and Hackett','gardner32@pouroseffertz.org','2','0'),
('90','Jenkins-Aufderhar','leuschke.mekhi@schimmel.com','7970','0'),
('91','Johnson-Kunde','kyla70@muller.com','508379','0'),
('92','Roob, Jast and Jerde','kimberly82@champlindavis.com','1','0'),
('93','Jaskolski PLC','gloria17@funk.com','11375','0'),
('94','Jast-Kunze','bashirian.florine@wiza.info','86','0'),
('95','Considine LLC','rhoda53@reichel.com','70','0'),
('96','Waters, Hegmann and Mills','delphine48@haley.info','137180','0'),
('97','Thompson, Hudson and Fahey','lwill@batz.com','44','0'),
('98','Kling, Kuphal and Abbott','jleuschke@emmerich.com','327503568','0'),
('99','Collier-Kuhn','zleuschke@nader.com','2761','0'),
('100','Koss, Breitenberg and Parker','trace.bartell@vandervort.com','7657','0'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

