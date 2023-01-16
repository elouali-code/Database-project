
-- LAB EXTERNE

INSERT INTO "labexterne" VALUES ('LE33', 'AMAZON', 'U.S.A');
INSERT INTO "labexterne" VALUES ('LE86', 'PASTEL', 'FRANCE');
INSERT INTO "labexterne" VALUES ('LE53', 'AMASSONE', 'MAROC');
INSERT INTO "labexterne" VALUES ('LE34', 'TUCSON', 'NEGIRE');
INSERT INTO "labexterne" VALUES ('LE79', 'GRANDLAND', 'ALLEMAGNE');
INSERT INTO "labexterne" VALUES ('LE47', 'TALISMAN', 'CHINE');

-- conference 

INSERT INTO "conference" VALUES ('C045','Climat Energie', 'A');
INSERT INTO "conference" VALUES ('C752','Dangers de la circulation', 'A*');
INSERT INTO "conference" VALUES ('C564','IST', 'B');
INSERT INTO "conference" VALUES ('C521','Sensibilisation aux recyclage', 'C');
INSERT INTO "conference" VALUES ('C014','SFDGLDFGJK', 'C');
INSERT INTO "conference" VALUES ('C763','NKofrajd', 'B');
INSERT INTO "conference" VALUES ('C999','KGEDEBJSDFGB', 'A*');



-- publication

INSERT INTO "publication" VALUES ('P171','C564', 'texom', 2018,95);
INSERT INTO "publication" VALUES ('P348','C045', 'Alian', 2017, 37982);
INSERT INTO "publication" VALUES ('P489','C763', 'Zonaty', 2016, 7325);
INSERT INTO "publication" VALUES ('P021','C014', 'Pomba', 2006, 732);
INSERT INTO "publication" VALUES ('P963','C999', 'oxiom', 2017, 2678);
INSERT INTO "publication" VALUES ('P321','C752', 'Yumypn', 2005, 475);



-- AUTEUR EXTERNE

INSERT INTO "auteurexterne" VALUES ('A125', 'toyota', 'albert', 'alberttoyota@gmail.com', 'LE34');
INSERT INTO "auteurexterne" VALUES ('A719', 'TROC', 'furak', 'furaktroc@gmail.com', 'LE86');
INSERT INTO "auteurexterne" VALUES ('A379', 'Cupra', 'tssu', 'tssucupra@gmail.com', 'LE47');
INSERT INTO "auteurexterne" VALUES ('A852', 'Corcinillia', 'Emilie', 'emiliecorcinillia@gmail.com', 'LE53');
INSERT INTO "auteurexterne" VALUES ('A158', 'Clio', 'oraimo', 'oraimoclio@gmail.com', 'LE34');
INSERT INTO "auteurexterne" VALUES ('A753', 'Evantor', 'Zoe', 'zoeevantor@gmail.com', 'LE53');



-- PERSONEL

INSERT INTO "personel" VALUES ('S005', 'el aissaoui', 'yasmin', '2001-07-14', '2021-07-12', '17 avenue colonel roche,Toulouse,France');
INSERT INTO "personel" VALUES ('S006', 'elalimi', 'salma', '2001-07-14', '2022-07-12', '17 avenue colonel roche,Toulouse,France');
INSERT INTO "personel" VALUES ('S007', 'hemsi', 'yasmin', '2001-07-14', '2022-08-12', 'Avenue Ain chouk,Colomiers,France');
INSERT INTO "personel" VALUES ('S008', 'sbitri', 'mohammed', '2001-07-14', '2022-08-02', 'Souss Massa ,Agadir,Maroc');
INSERT INTO "personel" VALUES ('d004', 'mihdaoui', 'meryam', '2001-07-14', '2019-06-12', ' Avenue Tagla,Fez,Maroc');
INSERT INTO "personel" VALUES ('d003', 'elalimi', 'yasmin', '2001-07-14', '2020-06-12', 'Ain taoujtat,Tonokya,Sengapore');
INSERT INTO "personel" VALUES ('d001', 'Théo', 'Fernandez', '2001-03-11', '2021-09-23', 'Avenue Marots,Strasbourg, France');
INSERT INTO "personel" VALUES ('d002', 'sangjo', 'Bouskitsse', '2001-05-06', '2022-09-23', 'Avenu Tsunami,Zeouang,Taiwan');
INSERT INTO "personel" VALUES ('d005', 'Anas', 'Anity', '1996-05-09', '2015-03-01', '12 Avenue des marots , Colomiers, France');
INSERT INTO "personel" VALUES ('S002', 'Chelby', 'Thomas', '2000-07-06', '2022-08-10', 'law maw,minoha,Ecwador');
INSERT INTO "personel" VALUES ('S003', 'stanreg', 'oziil', '1989-12-12', '2007-12-12', '17 moulay frouj,Nabomi,Cambodia');
INSERT INTO "personel" VALUES ('S004', 'Azi', 'Jean', '1975-08-01', '2015-03-01', '18 navial,California,U.S.A');
INSERT INTO "personel" VALUES ('S001', 'Nikoma', 'hindo', '1966-11-01', '1985-01-25', '9 Rue Jacqueline Auriol, Toulouse, France');


-- doctorant

INSERT INTO "doctorant" VALUES ('d004','2022-02-15','2023-05-12');
INSERT INTO "doctorant" VALUES ('d003','2022-01-15','2023-01-12');
INSERT INTO "doctorant" VALUES ('d001','2022-02-15','2023-05-29');
INSERT INTO "doctorant" VALUES ('d002','2021-02-15','2023-02-12');
INSERT INTO "doctorant" VALUES ('d005','2023-02-15','2024-01-12');


-- scientifique


INSERT INTO "scientifique" VALUES ('S002','cr1');
INSERT INTO "scientifique" VALUES ('S003','cr2');
INSERT INTO "scientifique" VALUES ('S004','cr2');
INSERT INTO "scientifique" VALUES ('S001','mcf');
INSERT INTO "scientifique" VALUES ('S005','mcf');
INSERT INTO "scientifique" VALUES ('S006','mcf');
INSERT INTO "scientifique" VALUES ('S007','mcf');
INSERT INTO "scientifique" VALUES ('S008','crf2');

-- publication PERSONEL 

INSERT INTO "publicationpersonnel" VALUES ('S004', 'P348');
INSERT INTO "publicationpersonnel" VALUES ('d004', 'P021');
INSERT INTO "publicationpersonnel" VALUES ('S002', 'P348');
INSERT INTO "publicationpersonnel" VALUES ('S004', 'P963');
INSERT INTO "publicationpersonnel" VALUES ('d005', 'P021');
INSERT INTO "publicationpersonnel" VALUES ('S004', 'P321');

-- publication EXTERNE

INSERT INTO "publicationexterne" VALUES ('A125', 'P348');
INSERT INTO "publicationexterne" VALUES ('A719', 'P348');
INSERT INTO "publicationexterne" VALUES ('A379', 'P021');
INSERT INTO "publicationexterne" VALUES ('A852', 'P963');
INSERT INTO "publicationexterne" VALUES ('A125', 'P021');
INSERT INTO "publicationexterne" VALUES ('A753', 'P321');


-- Chercheurs

INSERT INTO "chercheur" VALUES ('S001');
INSERT INTO "chercheur" VALUES ('S002');
INSERT INTO "chercheur" VALUES ('S003');
INSERT INTO "chercheur" VALUES ('S005');


-- Chercheur-enseignant

INSERT INTO "chercheur-enseignant" VALUES ('S006', '7', 'e001');
INSERT INTO "chercheur-enseignant" VALUES ('S007', '13', 'e004');
INSERT INTO "chercheur-enseignant" VALUES ('S008', '11', 'e003');

-- ENCADRER 

INSERT INTO "encadrer" VALUES ('S001', 'd003');
INSERT INTO "encadrer" VALUES ('S002', 'd002');
INSERT INTO "encadrer" VALUES ('S005', 'd002');
INSERT INTO "encadrer" VALUES ('S007', 'd004');
INSERT INTO "encadrer" VALUES ('S006', 'd001');
INSERT INTO "encadrer" VALUES ('S008', 'd001');




-- ListePartenaire

INSERT INTO "ListePartenaire" VALUES ('Pr368', 'SP1387');
INSERT INTO "ListePartenaire" VALUES ('Pr535', 'SP2173');
INSERT INTO "ListePartenaire" VALUES ('Pr731', 'SP3287');
INSERT INTO "ListePartenaire" VALUES ('Pr736', 'SP4387');
INSERT INTO "ListePartenaire" VALUES ('Pr368', 'SP4395');
INSERT INTO "ListePartenaire" VALUES ('Pr535', 'SP5387');
INSERT INTO "ListePartenaire" VALUES ('Pr731', 'SP5387');
INSERT INTO "ListePartenaire" VALUES ('Pr368', 'SP5387');
INSERT INTO "ListePartenaire" VALUES ('Pr535', 'SP5387');


-- liste partenaire porte ouverte

INSERT INTO "listepartenaireporteouverte" VALUES ('d001', 'Po334');
INSERT INTO "listepartenaireporteouverte" VALUES ('d002', 'Po378');
INSERT INTO "listepartenaireporteouverte" VALUES ('d003', 'Po523');
INSERT INTO "listepartenaireporteouverte" VALUES ('d004', 'Po724');
INSERT INTO "listepartenaireporteouverte" VALUES ('d005', 'Po731');
INSERT INTO "listepartenaireporteouverte" VALUES ('S006', 'Po735');
INSERT INTO "listepartenaireporteouverte" VALUES ('S007', 'Po378');
INSERT INTO "listepartenaireporteouverte" VALUES ('S006', 'Po334');
INSERT INTO "listepartenaireporteouverte" VALUES ('S003', 'Po731');
INSERT INTO "listepartenaireporteouverte" VALUES ('S007', 'Po724');
INSERT INTO "listepartenaireporteouverte" VALUES ('S001', 'Po731');


-- participant projet

INSERT INTO "participantprojet" VALUES ('Pr368', 'S001');
INSERT INTO "participantprojet" VALUES ('Pr368', 'S003');
INSERT INTO "participantprojet" VALUES ('Pr368', 'S008');
INSERT INTO "participantprojet" VALUES ('Pr535', 'S007');
INSERT INTO "participantprojet" VALUES ('Pr535', 'S004');
INSERT INTO "participantprojet" VALUES ('Pr535', 'S003');
INSERT INTO "participantprojet" VALUES ('Pr731', 'S005');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S001');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S002');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S003');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S005');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S006');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S007');
INSERT INTO "participantprojet" VALUES ('Pr736', 'S008');



-- president

INSERT INTO "president" VALUES ('cd365', 'S001');
INSERT INTO "president" VALUES ('cd365', 'S002');
INSERT INTO "president" VALUES ('cg539', 'S002');
INSERT INTO "president" VALUES ('cg539', 'S008');
INSERT INTO "president" VALUES ('cg736', 'S005');
INSERT INTO "president" VALUES ('cg736', 'S006');
INSERT INTO "president" VALUES ('cg7398', 'S006');
INSERT INTO "president" VALUES ('cg7398', 'S002');


-- portesouvertes

INSERT INTO "portesouvertes" VALUES ('Po378', '2017-12-21', '2017-12-23');
INSERT INTO "portesouvertes" VALUES ('Po724', '2005-09-14', '2005-09-16');
INSERT INTO "portesouvertes" VALUES ('Po735', '2020-09-01', '2020-09-07');
INSERT INTO "portesouvertes" VALUES ('Po731', '2009-07-06', '2009-07-11');
INSERT INTO "portesouvertes" VALUES ('Po523', '2028-09-03', '2028-09-07');
INSERT INTO "portesouvertes" VALUES ('Po334', '2022-10-20', '2022-10-30');


-- partenaire

INSERT INTO "partenaire"  VALUES ('SP3287', 'COca-Cola', 'U.S.A');
INSERT INTO "partenaire"  VALUES ('SP2173', 'Audi', 'GERMANY');
INSERT INTO "partenaire"  VALUES ('SP1387', 'Mondial-Berry', 'MAROC');
INSERT INTO "partenaire" VALUES ('SP5387', 'Jitox', 'MAROC');
INSERT INTO "partenaire"  VALUES ('SP4395', 'Hyundai', 'JAPAN');
INSERT INTO "partenaire"  VALUES ('SP4387', 'Renault', 'FRANCE');



-- etablisement

INSERT INTO "etablisement" VALUES ('e001', 'institut national des sciences appliquées de toulouse', 'INSA TOULOUSE', '135 Av. de Rangueil, 31400 Toulouse');
INSERT INTO "etablisement" VALUES ('e002', 'centre nationale de recherche scientifique', ' CNRS', '16, Avenue Édouard Belin BP 24367 31055 Toulouse');
INSERT INTO "etablisement" VALUES ('e003', 'LYCEE D''EXCELLENCE DE BENGURIR', 'LYDEX', 'ville verte , Bengurir,MAROC');
INSERT INTO "etablisement" VALUES ('e004', 'École nationale supérieure d''électrotechnique, d''électronique, d''informatique, d''hydraulique et des télécommunications', 'ENSEEIHT', '2 Rue Charles Camichel, 31000 Toulouse,France');
INSERT INTO "etablisement" VALUES ('e005', 'University of Oxford', 'Oxon', 'Oxford OX1 2JD, Royaume-Uni');
INSERT INTO "etablisement"VALUES ('e006', 'Institut agronomique et vétérinaire Hassan-II', 'IAV', 'Madinat Al Irfane,Rabat, Maroc');

-- congres

INSERT INTO "congres" VALUES ('cd365', '2020-09-01', '2020-09-25', 'A', 45);
INSERT INTO "congres" VALUES ('cg736', '2012-06-15', '2012-06-20', 'A*', 100);
INSERT INTO "congres" VALUES ('cg7398', '2010-10-10', '2010-10-20', 'B', 96);
INSERT INTO "congres" VALUES ('cg539', '2017-10-05', '2017-10-15', 'C', 78);


-- ProjetLAAS

INSERT INTO "ProjetLAAS" VALUES ('Pr736', 'asgass mabarki', 'amrko', '2015', '5', 3258, 1250, 'p001');
INSERT INTO "ProjetLAAS" VALUES ('Pr368', 'vision html', 'vsml', '2013', '3', 6578, 3025, 'p004');
INSERT INTO "ProjetLAAS" VALUES ('Pr535', 'hello world', 'hrd', '2012', '3', 15234, 10000, 'p002');
INSERT INTO "ProjetLAAS" VALUES ('Pr731', 'Ikchwan iknwan', 'Ich12', '2020', '7', 12000, 6000, 'p001');
