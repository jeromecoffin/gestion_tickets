#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: TICKET
#------------------------------------------------------------

CREATE TABLE TICKET(
  ID_TICKET     Int  Auto_increment  NOT NULL ,
  DATE_CREATION Date NOT NULL ,
  TITRE         Varchar (50) NOT NULL ,
  DESCRIPTION   Varchar (50) NOT NULL,
  CONSTRAINT TICKET_PK PRIMARY KEY (ID_TICKET)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: UTILISATEURS
#------------------------------------------------------------

CREATE TABLE UTILISATEURS(
  ID_USER     Int  Auto_increment  NOT NULL ,
  NOM_USER    Varchar (50) NOT NULL ,
  PRENOM_USER Varchar (50) NOT NULL ,
  LOGIN_USER       Varchar (50) NOT NULL ,
  PASSWORD_USER    Varchar (50) NOT NULL ,
  EMAIL_USER       Varchar (50) NOT NULL ,
  CONSTRAINT UTILISATEURS_PK PRIMARY KEY (ID_USER)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: CLIENT
#------------------------------------------------------------

CREATE TABLE CLIENT(
  ID_CLIENT     Int  Auto_increment  NOT NULL ,
  NOM_CLIENT    Varchar (50) NOT NULL ,
  MAIL_CLIENT   Varchar (50) NOT NULL ,
  NUMERO_CLIENT Varchar (50) NOT NULL ,
  ID_TICKET     Int NOT NULL
	,CONSTRAINT CLIENT_PK PRIMARY KEY (ID_CLIENT)

	,CONSTRAINT CLIENT_TICKET_FK FOREIGN KEY (ID_TICKET) REFERENCES TICKET(ID_TICKET)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: PROJET
#------------------------------------------------------------

CREATE TABLE PROJET(
  ID_PROJET          Int  Auto_increment  NOT NULL ,
  DATE_CREATION      Date NOT NULL ,
  CLOTURE            Bool NOT NULL ,
  NOM_PROJET         Varchar (50) NOT NULL ,
  DESCRIPTION_PROJET Varchar (50) NOT NULL ,
  ID_CLIENT          Int NOT NULL
	,CONSTRAINT PROJET_PK PRIMARY KEY (ID_PROJET)

	,CONSTRAINT PROJET_CLIENT_FK FOREIGN KEY (ID_CLIENT) REFERENCES CLIENT(ID_CLIENT)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: STATUT
#------------------------------------------------------------

CREATE TABLE STATUT(
  ID_USER     Int NOT NULL ,
  ID_TICKET   Int NOT NULL ,
  DATE_HEURE  TimeStamp NOT NULL ,
  STATUT      Varchar (400) NOT NULL ,
  COMMENTAIRE Varchar (400) NOT NULL
	,CONSTRAINT STATUT_PK PRIMARY KEY (ID_USER,ID_TICKET)

	,CONSTRAINT STATUT_UTILISATEURS_FK FOREIGN KEY (ID_USER) REFERENCES UTILISATEURS(ID_USER)
	,CONSTRAINT STATUT_TICKET0_FK FOREIGN KEY (ID_TICKET) REFERENCES TICKET(ID_TICKET)
)ENGINE=InnoDB;