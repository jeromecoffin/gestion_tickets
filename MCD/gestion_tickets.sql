# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: localhost (MySQL 5.7.25)
# Base de données: gestion_tickets
# Temps de génération: 2019-07-11 16:02:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table client
# ------------------------------------------------------------

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_nom` varchar(50) NOT NULL DEFAULT '',
  `client_email` varchar(50) NOT NULL DEFAULT '',
  `client_numero` varchar(50) NOT NULL DEFAULT '',
  `client_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;

INSERT INTO `client` (`client_id`, `client_nom`, `client_email`, `client_numero`, `client_del`)
VALUES
	(2,'Aspera','contact@aspera.com','1',0),
	(3,'Dassault','contact@3ds.com','3',0),
	(4,'CA','contact@ca.fr','4',0),
	(5,'Technips','contact@technip-dsi.frs','123s',0),
	(6,'Orange','orange.secu@orange.fr','45',1);

/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table projet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projet`;

CREATE TABLE `projet` (
  `projet_id` int(11) NOT NULL AUTO_INCREMENT,
  `projet_creation` date NOT NULL,
  `projet_cloture` tinyint(1) NOT NULL,
  `projet_nom` varchar(50) NOT NULL DEFAULT '',
  `projet_description` varchar(50) NOT NULL DEFAULT '',
  `projet_client_id` int(11) NOT NULL,
  `projet_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projet_id`),
  KEY `PROJET_CLIENT_FK` (`projet_client_id`),
  CONSTRAINT `PROJET_CLIENT_FK` FOREIGN KEY (`projet_client_id`) REFERENCES `CLIENT` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;

INSERT INTO `projet` (`projet_id`, `projet_creation`, `projet_cloture`, `projet_nom`, `projet_description`, `projet_client_id`, `projet_del`)
VALUES
	(6,'2019-06-28',1,'premier_projet','projet de test',2,0),
	(8,'1998-07-18',1,'projet de foou','un petit projet',4,0),
	(12,'2007-08-31',0,'projet en cours','projet en cours de test',3,0),
	(13,'2008-12-24',0,'projet','zERZERd',4,0),
	(14,'2019-07-12',1,'projet de gestions','projet test de dates',2,0),
	(15,'2019-07-11',0,'encore','On reteste la date',4,1),
	(16,'2019-07-11',0,'integration','description de fou',2,0);

/*!40000 ALTER TABLE `projet` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table statut
# ------------------------------------------------------------

DROP TABLE IF EXISTS `statut`;

CREATE TABLE `statut` (
  `utilisateur_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `date_heure` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(400) NOT NULL DEFAULT '',
  `commentaire` varchar(400) NOT NULL DEFAULT '',
  PRIMARY KEY (`utilisateur_id`,`ticket_id`),
  KEY `STATUT_TICKET0_FK` (`ticket_id`),
  CONSTRAINT `STATUT_TICKET0_FK` FOREIGN KEY (`ticket_id`) REFERENCES `TICKET` (`ticket_id`),
  CONSTRAINT `STATUT_UTILISATEURS_FK` FOREIGN KEY (`utilisateur_id`) REFERENCES `UTILISATEURS` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Affichage de la table ticket
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_creation` date NOT NULL,
  `ticket_titre` varchar(50) NOT NULL DEFAULT '',
  `ticket_description` varchar(50) NOT NULL DEFAULT '',
  `ticket_del` int(11) NOT NULL DEFAULT '0',
  `ticket_client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `ticket_client_id` (`ticket_client_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`ticket_client_id`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;

INSERT INTO `ticket` (`ticket_id`, `ticket_creation`, `ticket_titre`, `ticket_description`, `ticket_del`, `ticket_client_id`)
VALUES
	(1,'2019-06-28','premier','ticket de test',0,6),
	(2,'2019-05-12','second','ticket de test',0,4),
	(3,'2018-02-16','monTicket','resolution de bug',0,2),
	(4,'2019-04-12','affichage','probleme affichage',0,5),
	(5,'1965-06-12','test','naissance Emrick',0,3),
	(6,'2019-04-13','column','fk client',0,2);

/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table utilisateur
# ------------------------------------------------------------

DROP TABLE IF EXISTS `utilisateur`;

CREATE TABLE `utilisateur` (
  `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_nom` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_prenom` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_login` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_pass` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_email` varchar(50) NOT NULL DEFAULT '',
  `utilisateur_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;

INSERT INTO `utilisateur` (`utilisateur_id`, `utilisateur_nom`, `utilisateur_prenom`, `utilisateur_login`, `utilisateur_pass`, `utilisateur_email`, `utilisateur_del`)
VALUES
	(1,'COFFIN','Jérôme','coffin.jerome','monMDP','jerome.coffin@efrei.net',0),
	(2,'LEOU','Camille','leou.camille','KMzer','camille.leou@efrei.net',0),
	(4,'DELASECU','Jean-Quentin','DockerCcasse','azerty','jq.secu@wanadoo.fr',0),
	(5,'Dupond','Jean','dupond.jean','kllshkfs','jean.dupond@gmail.com',0),
	(6,'DOEs','Jean','terminators','kmzers','monmail@secu.coms',0),
	(7,'NOMs','Prenomm','login','password','prenom.nom@server.ex',1),
	(8,'DURAND','Thierry','thithi','erzefc','thierryd@gmail.com',1),
	(9,'Rose','Axl','axl.rose','novemberRain','a.rose@gnr.com',0);

/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
