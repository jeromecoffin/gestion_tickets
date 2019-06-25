------------------------------------------------------------
--        Script Postgre 
------------------------------------------------------------

CREATE SCHEMA dba_prj01;

------------------------------------------------------------
-- Table: Utilisateurs
------------------------------------------------------------
CREATE TABLE dba_prj01.Utilisateurs(
	ID_utilisateurs   SERIAL NOT NULL ,
	NOM               VARCHAR (50) NOT NULL  ,
	CONSTRAINT Utilisateurs_PK PRIMARY KEY (ID_utilisateurs)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Prospect
------------------------------------------------------------
CREATE TABLE dba_prj01.Prospect(
	ID_prospect        SERIAL NOT NULL ,
	numero_telephone   VARCHAR (10) NOT NULL ,
	NOM                VARCHAR (50) NOT NULL ,
	PRENOM             VARCHAR (50) NOT NULL ,
	nombre_appels      INT  NOT NULL  ,
	CONSTRAINT Prospect_PK PRIMARY KEY (ID_prospect)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Campagne
------------------------------------------------------------
CREATE TABLE dba_prj01.Campagne(
	ID_Campagne        SERIAL NOT NULL ,
	NOM                VARCHAR (50) NOT NULL ,
	DATE_DEBUT         DATE  NOT NULL ,
	DATE_FIN           DATE  NOT NULL ,
	CAMPAGNE_DEMAREE   BOOL  NOT NULL ,
	REPONSE            INT  NOT NULL ,
	ID_utilisateurs    INT  NOT NULL  ,
	CONSTRAINT Campagne_PK PRIMARY KEY (ID_Campagne)

	,CONSTRAINT Campagne_Utilisateurs_FK FOREIGN KEY (ID_utilisateurs) REFERENCES dba_prj01.Utilisateurs(ID_utilisateurs)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Liste_prospect
------------------------------------------------------------
CREATE TABLE dba_prj01.Liste_prospect(
	ID_Liste          INT  NOT NULL ,
	NOM               VARCHAR (50) NOT NULL ,
	ID_utilisateurs   INT  NOT NULL  ,
	CONSTRAINT Liste_prospect_PK PRIMARY KEY (ID_Liste)

	,CONSTRAINT Liste_prospect_Utilisateurs_FK FOREIGN KEY (ID_utilisateurs) REFERENCES dba_prj01.Utilisateurs(ID_utilisateurs)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Est_compose
------------------------------------------------------------
CREATE TABLE dba_prj01.Est_compose(
	ID_prospect   INT  NOT NULL ,
	ID_Liste      INT  NOT NULL  ,
	CONSTRAINT Est_compose_PK PRIMARY KEY (ID_prospect,ID_Liste)

	,CONSTRAINT Est_compose_Prospect_FK FOREIGN KEY (ID_prospect) REFERENCES dba_prj01.Prospect(ID_prospect)
	,CONSTRAINT Est_compose_Liste_prospect0_FK FOREIGN KEY (ID_Liste) REFERENCES dba_prj01.Liste_prospect(ID_Liste)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: Assigner_prospect_campagne
------------------------------------------------------------
CREATE TABLE dba_prj01.Assigner_prospect_campagne(
	ID_Campagne   INT  NOT NULL ,
	ID_Liste      INT  NOT NULL  ,
	CONSTRAINT Assigner_prospect_campagne_PK PRIMARY KEY (ID_Campagne,ID_Liste)

	,CONSTRAINT Assigner_prospect_campagne_Campagne_FK FOREIGN KEY (ID_Campagne) REFERENCES dba_prj01.Campagne(ID_Campagne)
	,CONSTRAINT Assigner_prospect_campagne_Liste_prospect0_FK FOREIGN KEY (ID_Liste) REFERENCES dba_prj01.Liste_prospect(ID_Liste)
)WITHOUT OIDS;



