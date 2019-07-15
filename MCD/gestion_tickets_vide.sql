# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: localhost (MySQL 5.7.25)
# Base de données: gestion_tickets
# Temps de génération: 2019-07-15 18:35:04 +0000
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
  CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`projet_client_id`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
  CONSTRAINT `statut_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`utilisateur_id`),
  CONSTRAINT `statut_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`)
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
  `ticket_projet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `ticket_client_id` (`ticket_client_id`),
  KEY `ticket_projet_id` (`ticket_projet_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`ticket_client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`ticket_projet_id`) REFERENCES `projet` (`projet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



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
  `utilisateur_droit` int(11) DEFAULT NULL,
  PRIMARY KEY (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
