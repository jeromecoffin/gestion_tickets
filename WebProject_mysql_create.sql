CREATE TABLE `ticket` (
	`numero` INT NOT NULL,
	`titre` VARCHAR(100) NOT NULL,
	`date` TIMESTAMP NOT NULL,
	`description` VARCHAR(1000) NOT NULL,
	`statut_actuel_id` INT NOT NULL,
	`author_id` INT NOT NULL,
	`projet_id` INT NOT NULL,
	PRIMARY KEY (`numero`)
);

CREATE TABLE `statut` (
	`id` INT NOT NULL,
	`libelle` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `utilisateur` (
	`id` INT NOT NULL,
	`nom` VARCHAR(100) NOT NULL,
	`prenom` VARCHAR(100) NOT NULL,
	`client` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `niveau_bug` (
	`id` INT NOT NULL,
	`ordre` INT NOT NULL,
	`libelle` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `projet` (
	`id` INT NOT NULL,
	`nom` VARCHAR(100) NOT NULL,
	`date_creation` TIMESTAMP NOT NULL,
	`cloture` BOOLEAN NOT NULL,
	`responsable_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `historique_statut` (
	`ticket_numero` INT NOT NULL,
	`statut_id` INT NOT NULL,
	`date` TIMESTAMP NOT NULL,
	PRIMARY KEY (`ticket_numero`,`statut_id`)
);

CREATE TABLE `commentaire` (
	`id` INT NOT NULL,
	`description` VARCHAR(1000) NOT NULL,
	`utilisateur_id` INT NOT NULL,
	`ticket_numero` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `version` (
	`projet_id` INT NOT NULL,
	`numero` INT NOT NULL,
	PRIMARY KEY (`projet_id`,`numero`)
);

CREATE TABLE `ticket_associe` (
	`ticket_numero` INT NOT NULL,
	`niveau_bug_id` INT NOT NULL,
	PRIMARY KEY (`ticket_numero`)
);

CREATE TABLE `bug` (
	`ticket_numero` INT NOT NULL,
	`niveau_bug_id` INT NOT NULL,
	PRIMARY KEY (`ticket_numero`)
);

CREATE TABLE `evolution` (
	`ticket_numero` INT NOT NULL,
	`priorite` INT NOT NULL,
	PRIMARY KEY (`ticket_numero`)
);

CREATE TABLE `bug_version_affectee` (
	`bug_ticket_numero` INT NOT NULL,
	`version_affectee_projet_id` INT NOT NULL,
	`version_affectee_numero` INT NOT NULL,
	PRIMARY KEY (`bug_ticket_numero`,`version_affectee_projet_id`,`version_affectee_numero`)
);

CREATE TABLE `client` (
	`id` INT NOT NULL,
	`nom` VARCHAR(100) NOT NULL,
	`prenom` VARCHAR(100) NOT NULL,
	`mail` VARCHAR(100) NOT NULL,
	`telephone` VARCHAR(100) NOT NULL,
	`entreprise_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `message`(
	`client_id` INT NOT NULL,
	`date`TIMESTAMP NOT NULL,
	`objet` VARCHAR(1000),
	PRIMARY KEY (`client_id`)
);

CREATE TABLE `entreprise` (
	`id` INT NOT NULL,
	`nom` VARCHAR(100) NOT NULL,
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

ALTER TABLE `bug_version_affectee` ADD CONSTRAINT `bug_version_affectee_fk1` FOREIGN KEY (`version_affectee_projet_id`,`version_affectee_numero`) REFERENCES `version`(`projet_id`,`numero`);

ALTER TABLE `client` ADD CONSTRAINT `client_fk0` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise`(`id`);

ALTER TABLE `message` ADD CONSTRAINT `message_fk0` FOREIGN KEY (`client_id`) REFERENCES `client`(`id`);