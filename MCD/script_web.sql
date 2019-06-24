------------------------------------------------------------
--        Script Postgre 
------------------------------------------------------------



------------------------------------------------------------
-- Table: TICKET
------------------------------------------------------------
CREATE TABLE public.TICKET(
	ID_TICKET       SERIAL NOT NULL ,
	DATE_CREATION   DATE  NOT NULL ,
	TITRE           VARCHAR (50) NOT NULL ,
	DESCRIPTION     VARCHAR (50) NOT NULL  ,
	CONSTRAINT TICKET_PK PRIMARY KEY (ID_TICKET)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: UTILISATEURS
------------------------------------------------------------
CREATE TABLE public.UTILISATEURS(
	ID_USER       SERIAL NOT NULL ,
	NOM_USER      VARCHAR (50) NOT NULL ,
	PRENOM_USER   VARCHAR (50) NOT NULL ,
	LOGIN         VARCHAR (50) NOT NULL ,
	PASSWORD      VARCHAR (50) NOT NULL ,
	EMAIL         VARCHAR (50) NOT NULL  ,
	CONSTRAINT UTILISATEURS_PK PRIMARY KEY (ID_USER)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: CLIENT
------------------------------------------------------------
CREATE TABLE public.CLIENT(
	ID_CLIENT       SERIAL NOT NULL ,
	NOM_CLIENT      VARCHAR (50) NOT NULL ,
	MAIL_CLIENT     VARCHAR (50) NOT NULL ,
	NUMERO_CLIENT   VARCHAR (50) NOT NULL ,
	ID_TICKET       INT  NOT NULL  ,
	CONSTRAINT CLIENT_PK PRIMARY KEY (ID_CLIENT)

	,CONSTRAINT CLIENT_TICKET_FK FOREIGN KEY (ID_TICKET) REFERENCES public.TICKET(ID_TICKET)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: PROJET
------------------------------------------------------------
CREATE TABLE public.PROJET(
	ID_PROJET            SERIAL NOT NULL ,
	DATE_CREATION        DATE  NOT NULL ,
	CLOTURE              BOOL  NOT NULL ,
	NOM_PROJET           VARCHAR (50) NOT NULL ,
	DESCRIPTION_PROJET   VARCHAR (50) NOT NULL ,
	ID_CLIENT            INT  NOT NULL  ,
	CONSTRAINT PROJET_PK PRIMARY KEY (ID_PROJET)

	,CONSTRAINT PROJET_CLIENT_FK FOREIGN KEY (ID_CLIENT) REFERENCES public.CLIENT(ID_CLIENT)
)WITHOUT OIDS;


------------------------------------------------------------
-- Table: STATUT
------------------------------------------------------------
CREATE TABLE public.STATUT(
	ID_USER       INT  NOT NULL ,
	ID_TICKET     INT  NOT NULL ,
	DATE_HEURE    TIMESTAMP  NOT NULL ,
	STATUT        VARCHAR (400) NOT NULL ,
	COMMENTAIRE   VARCHAR (400) NOT NULL  ,
	CONSTRAINT STATUT_PK PRIMARY KEY (ID_USER,ID_TICKET)

	,CONSTRAINT STATUT_UTILISATEURS_FK FOREIGN KEY (ID_USER) REFERENCES public.UTILISATEURS(ID_USER)
	,CONSTRAINT STATUT_TICKET0_FK FOREIGN KEY (ID_TICKET) REFERENCES public.TICKET(ID_TICKET)
)WITHOUT OIDS;



