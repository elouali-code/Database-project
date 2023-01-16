/*
SUPPRESSION DES DIFFERENTES TABLES AU BESOIN
*/



DROP TABLE IF EXISTS LabExterne;
DROP TABLE IF EXISTS Conference;
DROP TABLE IF EXISTS Publication;
DROP TABLE IF EXISTS AuteurExterne;
DROP TABLE IF EXISTS Personnel;
DROP TABLE IF EXISTS Scientifique;
DROP TABLE IF EXISTS Doctorant;
DROP TABLE IF EXISTS PublicationPersonnel;
DROP TABLE IF EXISTS PublicationExterne;
DROP TABLE IF EXISTS Chercheur;
DROP TABLE IF EXISTS ChercheurEnseignant;
DROP TABLE IF EXISTS ListePartenaire;
DROP TABLE IF EXISTS ListePartenairePorteOuverte;
DROP TABLE IF EXISTS ParticipantProjet;
DROP TABLE IF EXISTS President;
DROP TABLE IF EXISTS ProjetLAAS;
DROP TABLE IF EXISTS congres;
DROP TABLE IF EXISTS encadrer;
DROP TABLE IF EXISTS etablisement;
DROP TABLE IF EXISTS partenaire;
DROP TABLE IF EXISTS portesouvertes;
DROP TABLE IF EXISTS publication;



-- LAB EXTERNE	

CREATE TABLE LabExterne
(
idlaboratoireexterne		VARCHAR(4) PRIMARY KEY,
nom				VARCHAR(20),
pays				VARCHAR(20)
);

-- CONFERENCE 
CREATE TABLE Conference
(
idConference			VARCHAR(4) PRIMARY KEY,
nomConference			VARCHAR(40),
classeConference		VARCHAR(2)
);


-- PUBLICATION

CREATE TABLE Publication
(
idPublication			VARCHAR(4) PRIMARY KEY,
idConference			VARCHAR(4) REFERENCES Conference(idConference),
titre				VARCHAR(40),
anneePublication		INT,
nbPages       			INT
);


-- AUTEUR EXTERNE

CREATE TABLE AuteurExterne
(
idAuteurExterne			VARCHAR(4)  PRIMARY KEY,
nom				VARCHAR(20),
prenom				VARCHAR(20),
email				VARCHAR(40),
idLaboratoireExterne		VARCHAR(4) REFERENCES LabExterne(idlaboratoireexterne)
);


-- PERSONEL 

CREATE TABLE Personnel
(
idPersonnel			VARCHAR(4)  PRIMARY KEY,
nom				VARCHAR(20),
prenom				VARCHAR(20),
dateNaissance			date,
dateRecrutement			date,
adresse				VARCHAR(100)
);


-- SCIENTIFIQUE 

CREATE TABLE Scientifique 
(
idScientifique VARCHAR(4) PRIMARY KEY REFERENCES Personnel(idPersonnel),
grade VARCHAR(5)
);


-- DOCTORANT 

CREATE TABLE Doctorant 
(
idDoctorant VARCHAR(4) PRIMARY KEY REFERENCES Personnel(idPersonnel),
dateDebutThese				date,
dateDebutSoutenance			date
);


-- PublicationPersonnel
CREATE TABLE PublicationPersonnel 
(
idPersonnel VARCHAR(4)  REFERENCES Personnel (idPersonnel),
idPublication VARCHAR(4)  REFERENCES Publication (idPublication),
CONSTRAINT pk_personnel_publication PRIMARY KEY(idPersonnel,idPublication)
);


-- PublicationExterne
CREATE TABLE PublicationExterne 
(
idAuteurExterne VARCHAR(4)  REFERENCES AuteurExterne (idAuteurExterne),
idPublication VARCHAR(4)  REFERENCES Publication (idPublication),
CONSTRAINT pk_externe_publication PRIMARY KEY(idAuteurExterne,idPublication)
);


-- Chercheur

CREATE TABLE Chercheur (
    idChercheur character varying PRIMARY KEY REFERENCES Scientifique(idScientifique),
    grade character varying
);


-- ChercheurEnseignant

CREATE TABLE ChercheurEnseignant (
    "idChercheur" character varying,
    echelon character varying,
    idetablissement character varying NOT NULL
);


-- ListePartenaire

CREATE TABLE ListePartenaire (
    "idProjet" character varying,
    "idPartenaire" character varying,
     CONSTRAINT "Partenaire_fkey" FOREIGN KEY ("idPartenaire") REFERENCES partenaire(idpartenaire),
     CONSTRAINT "Porteur_fkey" FOREIGN KEY ("idProjet") REFERENCES "ProjetLAAS"("idProjet")
);


-- ListePartenairePorteOuverte

CREATE TABLE ListePartenairePorteOuverte (
    "idPersonnel" character varying,
    "idPorte" character varying,
     CONSTRAINT "Personnel_fkey" FOREIGN KEY ("idPersonnel") REFERENCES personnel(idpersonnel),
     CONSTRAINT "Porte_fkey" FOREIGN KEY ("idPorte") REFERENCES portesouvertes(idporte)
);



-- ParticipantProjet

CREATE TABLE ParticipantProjet (
    "idProjet" character varying,
    "idChercheur" character varying,
     CONSTRAINT "Projet_fkey" FOREIGN KEY ("idProjet") REFERENCES "ProjetLAAS"("idProjet")
);


-- President
CREATE TABLE President (
    "idCongres" character varying,
    "idChercheur" character varying,
     CONSTRAINT "Congres_fkey" FOREIGN KEY ("idCongres") REFERENCES congres(idcongres)
);



-- ProjetLAAS

CREATE TABLE ProjetLAAS (
   "idProjet" character varying NOT NULL,
    titre character varying,
    acronyme character varying,
    "anneeDebut" character varying,
    duree character varying,
    "coutGlobal" integer,
    "budgetLAAS" integer,
    "idPorteur" character varying,
     CONSTRAINT "Projet_pkey" PRIMARY KEY ("idProjet"),
     CONSTRAINT "Personnel_fkey" FOREIGN KEY ("idPersonnel") REFERENCES public.personnel(idpersonnel)
);


-- congres

CREATE TABLE congres (
    idcongres character varying(255) NOT NULL,
    datedebut date,
    datefin date,
    classe character varying(255),
    nbparticipants integer,
    CONSTRAINT "congres_pkey" PRIMARY KEY (idcongres)
);



-- encadrer

CREATE TABLE encadrer (
    idsientifique character varying NOT NULL,
    iddoctorant character varying NOT NULL,
    CONSTRAINT "encadrer_pkey" PRIMARY KEY (idsientifique),
    CONSTRAINT "encadrer_iddoctorant_fkey" FOREIGN KEY (iddoctorant) REFERENCES doctorant(iddoctorant),
    CONSTRAINT "encadrer_idsientifique_fkey" FOREIGN KEY (idsientifique) REFERENCES personnel(idpersonnel)
);



-- etablisement

CREATE TABLE etablisement (
    idetablisement character varying(255) NOT NULL,
    nom character varying(255),
    acronyme character varying(255),
    adresse character varying(255),
    CONSTRAINT "etablisement_pkey" PRIMARY KEY (idetablisement)
);



-- partenaire

CREATE TABLE partenaire (
    idpartenaire character varying(255) NOT NULL,
    nom character varying(255),
    pays character varying(255),
    CONSTRAINT "partenaire_pkey" PRIMARY KEY (idpartenaire)
);



-- portesouvertes


CREATE TABLE portesouvertes (
    idporte character varying(255) NOT NULL,
    "datedébut" date,
    datefin date,
    CONSTRAINT "portesouvertes_pkey" PRIMARY KEY (idporte)
);


-- publication

CREATE TABLE publication (
    idpublication character varying(255) NOT NULL,
    titre character varying(255),
    anneepublication integer,
    nomconference character varying(255),
    classconference character varying(255),
    nbpage integer,
    CONSTRAINT "publiction_pkey" PRIMARY KEY (idpublication)
);







