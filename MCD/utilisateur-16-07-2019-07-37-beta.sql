-- Generation time: Tue, 16 Jul 2019 07:37:01 +0000
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

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE `utilisateur` (
  `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_nom` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_prenom` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_login` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_pass` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_email` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_del` int(11) NOT NULL DEFAULT 0,
  `utilisateur_droit` int(11) DEFAULT NULL,
  PRIMARY KEY (`utilisateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `utilisateur` VALUES ('1','Gulgowski','Aiyana','ressie.jakubowski','66 lt','schmidt.laura@example.org','0',NULL),
('2','Wiza','Penelope','fritchie','99 hh','natalie.jacobson@example.org','0',NULL),
('3','Considine','Abdiel','hilda.herman','11 xd','lkerluke@example.com','0',NULL),
('4','Tromp','Annamae','runolfsson.kamille','41 hy','maximilian59@example.net','0',NULL),
('5','Wilderman','Daren','ieffertz','19 ks','wzemlak@example.org','0',NULL),
('6','Kilback','Halie','swaniawski.yessenia','65 vb','brody77@example.org','0',NULL),
('7','Wolff','Amber','roberto78','54 uk','celestino24@example.org','0',NULL),
('8','Blanda','Orion','mitchel67','18 fi','cara.stehr@example.com','0',NULL),
('9','Pagac','Bradley','beatty.brian','92 nz','altenwerth.marcella@example.com','0',NULL),
('10','Goodwin','Fermin','herman.vergie','72 mw','heidi36@example.net','0',NULL),
('11','Borer','Elza','tamia.donnelly','39 uj','monty.ullrich@example.com','0',NULL),
('12','Bode','Asha','cullen55','96 oc','omckenzie@example.net','0',NULL),
('13','Metz','Asha','lindsey94','57 fu','zane.renner@example.org','0',NULL),
('14','Renner','Austyn','marcelino57','69 wf','lottie.beahan@example.net','0',NULL),
('15','Kuphal','Malika','lonnie.quitzon','24 gq','katarina.moore@example.org','0',NULL),
('16','King','Caterina','macejkovic.chauncey','49 xm','kelli73@example.com','0',NULL),
('17','Wunsch','Millie','leffler.loren','52 lc','rafaela44@example.net','0',NULL),
('18','Wiza','Alberto','ethompson','92 pw','monserrate97@example.com','0',NULL),
('19','Connelly','Kianna','hharris','08 ct','cdibbert@example.com','0',NULL),
('20','Dickens','Elwyn','goyette.marquise','31 zn','kirstin.rippin@example.net','0',NULL),
('21','O\'Kon','Lucious','schowalter.alex','31 la','imarks@example.org','0',NULL),
('22','Lebsack','Benny','maximilian43','34 ua','zbatz@example.net','0',NULL),
('23','Windler','Sonia','mayer.buford','96 qd','slueilwitz@example.org','0',NULL),
('24','Reichel','Josie','dkub','18 ll','hwhite@example.net','0',NULL),
('25','Ledner','Pat','corkery.araceli','81 kh','pollich.ella@example.com','0',NULL),
('26','Ankunding','Trinity','noemi59','32 ba','erika.yost@example.org','0',NULL),
('27','Walker','Rosanna','wyman.kelvin','48 av','valentine.lindgren@example.com','0',NULL),
('28','Sawayn','Webster','marian21','00 fu','frederick52@example.com','0',NULL),
('29','Brown','Lincoln','bethel52','98 xu','rmueller@example.com','0',NULL),
('30','Sipes','Douglas','lazaro.schaden','92 fd','adella45@example.com','0',NULL),
('31','Mann','Alf','uconsidine','13 ng','ihoppe@example.org','0',NULL),
('32','Windler','Alessandro','rcartwright','67 xh','anya96@example.com','0',NULL),
('33','Bradtke','Bernard','stiedemann.ines','30 gi','uriel14@example.org','0',NULL),
('34','Kling','Violette','myriam57','16 mp','fstehr@example.org','0',NULL),
('35','Bode','Westley','eglover','66 xc','telly.yost@example.com','0',NULL),
('36','Schroeder','Wilford','elna.volkman','20 so','ybauch@example.net','0',NULL),
('37','Gleichner','Angeline','jean.corwin','98 pw','xklein@example.net','0',NULL),
('38','Dare','Emely','martin19','15 gj','lindsay.harris@example.com','0',NULL),
('39','Zboncak','Joan','fredrick.grady','87 xm','mustafa76@example.net','0',NULL),
('40','Dare','Sunny','roderick.spinka','21 au','tlesch@example.org','0',NULL),
('41','Conroy','Joanne','imorar','26 tj','kristoffer.nicolas@example.org','0',NULL),
('42','Sipes','Kaylee','hwalker','98 hj','veronica.hamill@example.net','0',NULL),
('43','Zemlak','Justen','anne.kertzmann','78 yf','eileen10@example.com','0',NULL),
('44','Zemlak','Margarita','uhayes','48 qo','nikolaus.marjorie@example.com','0',NULL),
('45','Beer','Julio','erohan','23 uz','ohilpert@example.net','0',NULL),
('46','Brown','Moses','wintheiser.delores','00 di','dach.felix@example.org','0',NULL),
('47','Ortiz','Trycia','lia54','38 om','mayra76@example.com','0',NULL),
('48','Nikolaus','Darby','glover.franz','00 xw','eryn28@example.com','0',NULL),
('49','Pollich','Ransom','giuseppe.nader','24 rk','vern08@example.net','0',NULL),
('50','Rippin','Lawrence','gulgowski.desmond','27 zx','collins.bertrand@example.org','0',NULL),
('51','Harvey','Abagail','pemard','32 wn','eulalia64@example.com','0',NULL),
('52','Robel','Nikki','zulauf.drake','95 jv','jailyn54@example.net','0',NULL),
('53','Moen','Ciara','mikel.donnelly','78 tr','orohan@example.org','0',NULL),
('54','Wintheiser','Zachary','kasey76','80 de','rschroeder@example.org','0',NULL),
('55','Bayer','Stefanie','gideon.sanford','60 vb','eleazar.beahan@example.net','0',NULL),
('56','Douglas','Alex','stanton.thora','85 rf','sswaniawski@example.net','0',NULL),
('57','Dare','Jakob','carolanne86','02 bj','swaniawski.marlon@example.org','0',NULL),
('58','Gerlach','Ambrose','cwolff','79 zk','wiegand.tessie@example.net','0',NULL),
('59','Toy','Travon','kaden.ullrich','08 kh','chaz.crist@example.org','0',NULL),
('60','Beahan','Taya','jeff91','15 ak','adalberto87@example.net','0',NULL),
('61','Green','Roosevelt','abalistreri','92 bt','reina17@example.org','0',NULL),
('62','Botsford','Christopher','damon.reichert','65 ho','olga46@example.com','0',NULL),
('63','Stiedemann','Lester','wadams','51 vq','gkohler@example.org','0',NULL),
('64','Prohaska','Andrew','celine73','18 ia','hadley.jacobi@example.net','0',NULL),
('65','Schaden','Sigurd','carrie68','96 ry','wmarquardt@example.net','0',NULL),
('66','Russel','Ayla','goyette.clemmie','31 zo','alexie39@example.com','0',NULL),
('67','Jaskolski','Juana','juana52','65 or','cathy74@example.net','0',NULL),
('68','Bailey','Eino','chase88','95 xv','robin.mante@example.com','0',NULL),
('69','Kautzer','Jerel','kshlerin.margot','63 gc','adolfo48@example.com','0',NULL),
('70','Little','Anahi','denesik.johathan','21 vf','dayna.pollich@example.net','0',NULL),
('71','Beahan','Ayden','kulas.ruben','53 ua','osvaldo.yundt@example.com','0',NULL),
('72','Zboncak','Reilly','lang.lucious','88 lo','ialtenwerth@example.com','0',NULL),
('73','Gutmann','Annette','svandervort','03 xx','sgoyette@example.org','0',NULL),
('74','Stokes','Waylon','pmuller','91 zq','upton.alfonzo@example.org','0',NULL),
('75','Donnelly','Alec','schmeler.mossie','45 dz','fdubuque@example.org','0',NULL),
('76','Gislason','Oswaldo','hmoore','84 pi','gabrielle56@example.org','0',NULL),
('77','Wintheiser','Zita','alva.brakus','98 wy','lauriane.price@example.com','0',NULL),
('78','Koepp','Forest','luettgen.euna','05 nd','curtis.mohr@example.org','0',NULL),
('79','Hermiston','Talon','eliezer.klocko','18 gh','ilarson@example.com','0',NULL),
('80','Ruecker','Thelma','fwest','64 sv','yblock@example.org','0',NULL),
('81','Franecki','Tyrell','ratke.deon','02 og','prosacco.kendrick@example.net','0',NULL),
('82','Rosenbaum','Jensen','arjun.kunze','40 ty','coy.hayes@example.org','0',NULL),
('83','West','Elvis','glover.jerry','68 do','naomi59@example.org','0',NULL),
('84','Feeney','Thurman','dasia82','17 mq','twindler@example.com','0',NULL),
('85','Sanford','Evans','viviane20','21 uu','arely61@example.com','0',NULL),
('86','Davis','Pearlie','arielle.kerluke','35 cs','altenwerth.gilbert@example.net','0',NULL),
('87','Williamson','Santina','wjacobson','33 th','smith.marietta@example.net','0',NULL),
('88','Rath','Jaden','conroy.odie','19 wl','ksatterfield@example.net','0',NULL),
('89','Rogahn','Guillermo','alejandrin.kuhic','52 jw','tessie96@example.com','0',NULL),
('90','Rutherford','Forest','neva.murray','77 wl','nigel19@example.org','0',NULL),
('91','Hyatt','Clara','alejandrin13','22 tj','nya05@example.org','0',NULL),
('92','Morar','Lucile','jlabadie','36 qf','bryana.kemmer@example.net','0',NULL),
('93','Marquardt','Omer','maritza46','13 eo','chauncey.purdy@example.org','0',NULL),
('94','Kuhlman','Austin','grant.jamey','14 iv','charles.schmidt@example.com','0',NULL),
('95','Metz','Shea','waylon.leffler','19 bw','brakus.hilton@example.com','0',NULL),
('96','Emmerich','Lolita','sjenkins','79 dl','ophelia87@example.net','0',NULL),
('97','Brekke','Tristin','corkery.alvina','20 xs','jovan83@example.com','0',NULL),
('98','Kautzer','Wilbert','vkrajcik','85 xa','alexis63@example.com','0',NULL),
('99','Powlowski','Claire','jason.kuhic','17 th','cullen.corkery@example.com','0',NULL),
('100','Fay','Sigrid','keeling.rigoberto','40 mq','vnader@example.net','0',NULL); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

