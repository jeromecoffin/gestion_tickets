CREATE TABLE `ticket` (
	`numero` int NOT NULL AUTO_INCREMENT,
	`titre` varchar(255) NOT NULL,
	`date` TIMESTAMP(255) NOT NULL,
	`description` varchar(1000) NOT NULL,
	`statut_actuel_id` int NOT NULL,
	`author_id` int NOT NULL,
	`projet_id` int NOT NULL,
	PRIMARY KEY (`numero`)
);

CREATE TABLE `statut` (
	`id` int NOT NULL AUTO_INCREMENT,
	`libelle` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `utilisateur` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nom` varchar(100) NOT NULL,
	`prenom` varchar(100) NOT NULL,
	`client` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `niveau_bug` (
	`id` int NOT NULL,
	`ordre` int NOT NULL,
	`libelle` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `projet` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nom` varchar(100) NOT NULL,
	`date_creation` TIMESTAMP NOT NULL,
	`cloture` BOOLEAN NOT NULL,
	`responsable_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `historique_statut` (
	`ticket_numero` int NOT NULL,
	`statut_id` int NOT NULL,
	`date` TIMESTAMP NOT NULL,
	PRIMARY KEY (`ticket_numero`,`statut_id`)
);

CREATE TABLE `commentaire` (
	`id` int NOT NULL AUTO_INCREMENT,
	`description` varchar(1000) NOT NULL,
	`utilisateur_id` int(1000) NOT NULL,
	`ticket_numero` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `version` (
	`projet_id` int NOT NULL,
	`numero` int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`projet_id`,`numero`)
);

CREATE TABLE `ticket_associe` (
	`ticket_numero` int NOT NULL,
	`niveau_bug_id` int NOT NULL,
	PRIMARY KEY (`ticket_numero`)
);

CREATE TABLE `bug` (
	`ticket_numero` int NOT NULL,
	`niveau_bug_id` int NOT NULL,
	PRIMARY KEY (`ticket_numero`)
);

CREATE TABLE `evolution` (
	`ticket_numero` int NOT NULL,
	`priorite` int NOT NULL,
	PRIMARY KEY (`ticket_numero`)
);

CREATE TABLE `bug_version_affectee` (
	`bug_ticket_numero` int NOT NULL,
	`version_affectee_projet_id` int NOT NULL,
	`version_affectee_numero` int NOT NULL,
	PRIMARY KEY (`bug_ticket_numero`,`version_affectee_projet_id`,`version_affectee_numero`)
);

CREATE TABLE `client` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nom` varchar(100) NOT NULL,
	`prenom` varchar(100) NOT NULL,
	`mail` varchar(100) NOT NULL,
	`telephone` varchar(100) NOT NULL,
	`entreprise_id` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `entreprise` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nom` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `ticket` ADD CONSTRAINT `ticket_fk0` FOREIGN KEY (`statut_actuel_id`) REFERENCES `statut`(`id`);

ALTER TABLE `ticket` ADD CONSTRAINT `ticket_fk1` FOREIGN KEY (`author_id`) REFERENCES `utilisateur`(`id`);

ALTER TABLE `ticket` ADD CONSTRAINT `ticket_fk2` FOREIGN KEY (`projet_id`) REFERENCES `projet`(`id`);

ALTER TABLE `utilisateur` ADD CONSTRAINT `utilisateur_fk0` FOREIGN KEY (`client`) REFERENCES `client`(`id`);

ALTER TABLE `projet` ADD CONSTRAINT `projet_fk0` FOREIGN KEY (`responsable_id`) REFERENCES `utilisateur`(`id`);

ALTER TABLE `historique_statut` ADD CONSTRAINT `historique_statut_fk0` FOREIGN KEY (`ticket_numero`) REFERENCES `ticket`(`numero`);

ALTER TABLE `historique_statut` ADD CONSTRAINT `historique_statut_fk1` FOREIGN KEY (`statut_id`) REFERENCES `statut`(`id`);

ALTER TABLE `commentaire` ADD CONSTRAINT `commentaire_fk0` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur`(`id`);

ALTER TABLE `commentaire` ADD CONSTRAINT `commentaire_fk1` FOREIGN KEY (`ticket_numero`) REFERENCES `ticket`(`numero`);

ALTER TABLE `version` ADD CONSTRAINT `version_fk0` FOREIGN KEY (`projet_id`) REFERENCES `projet`(`id`);

ALTER TABLE `ticket_associe` ADD CONSTRAINT `ticket_associe_fk0` FOREIGN KEY (`ticket_numero`) REFERENCES `ticket`(`numero`);

ALTER TABLE `ticket_associe` ADD CONSTRAINT `ticket_associe_fk1` FOREIGN KEY (`niveau_bug_id`) REFERENCES `niveau_bug`(`id`);

ALTER TABLE `bug` ADD CONSTRAINT `bug_fk0` FOREIGN KEY (`ticket_numero`) REFERENCES `ticket`(`numero`);

ALTER TABLE `bug` ADD CONSTRAINT `bug_fk1` FOREIGN KEY (`niveau_bug_id`) REFERENCES `niveau_bug`(`id`);

ALTER TABLE `evolution` ADD CONSTRAINT `evolution_fk0` FOREIGN KEY (`ticket_numero`) REFERENCES `ticket`(`numero`);

ALTER TABLE `bug_version_affectee` ADD CONSTRAINT `bug_version_affectee_fk0` FOREIGN KEY (`bug_ticket_numero`) REFERENCES `bug`(`ticket_numero`);

ALTER TABLE `bug_version_affectee` ADD CONSTRAINT `bug_version_affectee_fk1` FOREIGN KEY (`version_affectee_projet_id`) REFERENCES `version`(`projet_id`);

ALTER TABLE `bug_version_affectee` ADD CONSTRAINT `bug_version_affectee_fk2` FOREIGN KEY (`version_affectee_numero`) REFERENCES `version`(`numero`);

ALTER TABLE `client` ADD CONSTRAINT `client_fk0` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise`(`id`);

