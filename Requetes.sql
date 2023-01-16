-- 1)
SELECT personnel.nom, scientifique.grade
FROM personnel, scientifique, encadrer
WHERE encadrer.iddoctorant = 'd001'
and encadrer.idscientifique= scientifique.idscientifique
and encadrer.idscientifique = personnel.idpersonnel



-- 2)
SELECT NewFinalTable.nom, LE.pays 
FROM labexterne LE
JOIN 
(
    SELECT *
    FROM auteurexterne AE
    JOIN 
    (
        SELECT PubliE.idauteurexterne
            FROM publicationexterne PubliE
            JOIN 
                (
                    SELECT Publi.idpublication
                    FROM  publication Publi JOIN publicationpersonnel PubliP
                    ON Publi.idpublication = PubliP.idpublication 
                    WHERE Publi.anneepublication >=2016 AND Publi.anneepublication <=2020
                    AND PubliP.idpersonnel = 
                        (
                            SELECT idpersonnel
                            FROM personnel P
                            WHERE P.nom ='Azi' AND P.prenom ='Jean' 
                        )
                ) AS NPE ON PubliE.idpublication = NPE.idpublication
    ) AS NAE ON AE.idauteurexterne = NAE.idauteurexterne
) AS NewFinalTable ON LE.idlaboratoireexterne = NewFinalTable.idlaboratoireexterne



		

-- 3)
SELECT Count(*)"Nombre de collaborateurs total" 
FROM
(
    SELECT DISTINCT PP.idpersonnel 
    FROM publicationpersonnel PP 
    WHERE PP.idpublication IN
        (
            SELECT PP.idpublication 
            FROM publicationpersonnel PP 
            WHERE PP.idpersonnel = 'S004' 
        )
    UNION 
    
    SELECT DISTINCT PE.idauteurexterne 
    FROM publicationexterne PE 
    WHERE PE.idpublication IN
        (    
            SELECT PP.idpublication 
            FROM publicationpersonnel PP 
            WHERE PP.idpersonnel = 'S004' 
        )
) AS collaborateurtotal



-- 4)
SELECT Count( DISTINCT AE.idlaboratoireexterne )  
FROM auteurexterne AE 
WHERE AE.idauteurexterne IN
	(
		SELECT PE.idauteurexterne 
		FROM publicationexterne PE 
		WHERE PE.idpublication IN
		( 
			SELECT P.idpublication 
			FROM publication P 
			WHERE P.idconference IN 
			(
				SELECT C.idconference 
				FROM conference C 
				WHERE C.classeconference LIKE 'A%'
			)
		)
	)


-- 5)
SELECT Doctorant.iddoctorant, COUNT (Publicationpersonnel.idPublication)
FROM Publicationpersonnel, Doctorant
GROUP BY Doctorant.iddoctorant, PublicationPersonnel.idpersonnel
HAVING PublicationPersonnel.idpersonnel = Doctorant.iddoctorant



-- 6)
Select Count(Distinct doctorant.iddoctorant) as NbreDoctorants 
From doctorant 
where datedebutsoutenance >= Current_Date



-- 7)
SELECT nom, prenom
FROM personnel
NATURAL JOIN (SELECT idscientifique
                          FROM scientifique
                          EXCEPT
                          SELECT idscientifique
                          FROM Encadrer) as jamais



-- 8)
SELECT P.nom, P.prenom 
FROM personnel P 
WHERE P.idpersonnel IN 
	(
		SELECT SC.idscientifique 
		FROM scientifique SC
		EXCEPT
		(
			SELECT PP.idpersonnel 
			FROM publicationpersonnel PP 
			WHERE PP.idpersonnel LIKE 'S%' 
			UNION 
			SELECT E.idscientifique 
			FROM encadrer E
		)
	)


-- 9)
SELECT Personnel.nom, Personnel.prenom
FROM Personnel, Encadrer, Doctorant
WHERE doctorant.datedebutsoutenance > Current_Date
and Doctorant.iddoctorant =Encadrer.idscientifique
and Encadrer.idscientifique= Personnel.idpersonnel


-- 10)
SELECT idPersonnel, nom, prenom
FROM Personnel
NATURAL JOIN (SELECT encadrer.iddoctorant, COUNT (DISTINCT encadrer.idScientifique)
                          FROM Encadrer
                          GROUP BY encadrer.iddoctorant
                          HAVING COUNT (DISTINCT encadrer.idScientifique) = '1') as seul




-- 11)     
Select iddoctorant, Count(Distinct encadrer.idscientifique) as NbreEncadrants 
From encadrer 
Group by iddoctorant 
Having Count(Distinct encadrer.idscientifique)>3


-- 12)
SELECT idPersonnel
FROM PublicationPersonnel
EXCEPT
SELECT idPersonnel
FROM PublicationPersonnel
NATURAL JOIN (SELECT idPublication
                          FROM Publication
                          WHERE idconference != 'A') as CA



-- 13)
SELECT idpersonnel, nom, prenom
FROM Personnel
NATURAL JOIN (SELECT idscientifique
                          FROM Encadrer, Doctorant
                          GROUP BY idscientifique
                          HAVING COUNT (DISTINCT Encadrer.iddoctorant) = COUNT (DISTINCT Doctorant.iddoctorant)) as TOUS



-- 14)
SELECT  anneePublication, COUNT (*) "nombre de publications"
FROM Publication
GROUP BY anneePublication 

	


-- 15)
Select idetablissement, Count(Distinct idscientifique) 
From chercheurenseignant 
Group By idetablissement


-- 16)Le pays avec lequel le laboratoire a plus de publications 



-- 17)
Les scientifiques qui ont un seul projet
SELECT idPorteur
FROM ProjetLAAS
NATURAL JOIN (SELECT idPorteur, COUNT (*) "nombre de projets"
                          FROM ProjetLAAS
                          GROUP BY idPorteur
                          HAVING COUNT (*) = '1') as seul



-- 18)
SELECT *
FROM Scientifique
NATURAL JOIN (SELECT ParticipantProjet.idScientifique, COUNT(ParticipantProjet.idScientifique) as nombre_de_projets_participant
                          FROM ProjetLAAS, ParticipantProjet
                          Group by ParticipantProjet.idScientifique
                          Having COUNT (DISTINCT ProjetLAAS.idProjet) = COUNT(ParticipantProjet.idScientifique)) as tous_projets



-- 19)
SELECT *
FROM etablisement
NATURAL JOIN (SELECT idEtablissement, COUNT(*) "nombre de enseignantschercheurs"
                          FROM Chercheurenseignant
                          GROUP BY idEtablissement
                          HAVING COUNT (*) >= '50') as P50



-- 20)Les scientifiques qui ont le plus de projets 




-- 21)
SELECT Partenaire.pays
FROM Partenaire
NATURAL JOIN (SELECT idPartenaire
                          FROM ListePartenaire
                          NATURAL JOIN (SELECT ProjetLAAS.idProjet, COUNT(*) "nombre de projets participant"
                                                    FROM ProjetLAAS, ParticipantProjet
                                                    GROUP BY ProjetLAAS.idProjet
                                                    HAVING COUNT (ProjetLAAS.idProjet) = COUNT(*)) as ID) as TOUS


