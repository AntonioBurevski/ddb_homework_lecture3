
USE Karavan_4223

CREATE PROCEDURE P_2_1
@id_language as INT
AS

SELECT Id_galerija, opis, naslov
FROM galerija AS G
INNER JOIN galerija_opis AS GOpis
ON G.Id_galerija = GOpis.gal_id_galerija
WHERE GOpis.jazik_id_jazik = @id_language
GO

EXEC P_2_1 2

USE Karavan_4223
GO
CREATE PROCEDURE P_2_2
@id_administrator NUMERIC
AS

SELECT Ime, Jazik
FROM KADMINISTRATOR
INNER JOIN KNOVOST
ON KADMINISTRATOR.Id_admin = KNOVOST.adm_id_admin
INNER JOIN JAZIK
ON KNOVOST.jazik_id_jazik = jazik.Id_Jazik
WHERE KADMINISTRATOR.Id_admin = @id_administrator
GO

EXEC P_2_2 3

USE Karavan_4223
GO
CREATE PROCEDURE P_2_3
AS
SELECT EMAIL.ime, EMAIL_GRUPA.naziv
FROM EMAIL
INNER JOIN MAILING
ON EMAIL.id_posetitel=MAILING.email_id_posetitel
INNER JOIN EMAIL_GRUPA
ON MAILING.email_id_grupa=email_grupa.id_grupa
GO

EXEC P_2_3

USE Karavan_4223 
GO
ALTER PROCEDURE P_2_4
AS
SELECT naslov, tekst, aktivna, id_grupa
FROM EMAIL_PORAKA
INNER JOIN EMAIL_GRUPA
ON EMAIL_GRUPA.id_grupa=EMAIL_PORAKA.grupa_id_grupa
WHERE aktivna = 1
GO

EXEC P_2_4