
USE solutiondesigns
GO

INSERT INTO dbo.sd_actiontypes (name, iconurl) VALUES
('like', 'http://www.losiconos.com/like.png'),
('share', 'http://www.losiconos.com/share.png'),
('read', 'http://www.losiconos.com/read.png'),
('comment', 'http://www.losiconos.com/comment.png'),
('contact', 'http://www.losiconos.com/contact.png'),
('rate', 'http://www.losiconos.com/rate.png')
GO

INSERT INTO dbo.sd_owners (firstname, lastname, email, password) VALUES
('Johnny', 'Deep', 'jdeep@onlyfans.com', HASHBYTES('SHA2_256', 'jdeep@onlyfans.com'+'laclavedejohnny') ),
('Ana', 'Torroja', 'atorr@gmail.com', HASHBYTES('SHA2_256', 'atorr@gmail.com'+'canta y canta') ),
('Andrea', 'Echeverria', 'atercio@pelados.com', HASHBYTES('SHA2_256', 'atercio@pelados.com'+'flor de clavel') ),
('Andrey', 'Amador', 'andrey@encleta.com', HASHBYTES('SHA2_256', 'andrey@encleta.com'+'japoneando') )
GO

INSERT INTO dbo.sd_links (url) VALUES
('http://www.loslinks.com/link#1'),
('http://www.loslinks.com/link#2'),
('http://www.loslinks.com/link#3'),
('http://www.loslinks.com/link#4'),
('http://www.loslinks.com/link#5'),
('http://www.loslinks.com/link#6'),
('http://www.loslinks.com/link#7'),
('http://www.loslinks.com/link#8'),
('http://www.loslinks.com/link#9')
GO

INSERT INTO dbo.sd_links (url) VALUES
('http://www.loslinks.com/link#10'),
('http://www.loslinks.com/link#11'),
('http://www.loslinks.com/link#12'),
('http://www.loslinks.com/link#13'),
('http://www.loslinks.com/link#14'),
('http://www.loslinks.com/link#15')
GO

INSERT INTO dbo.sd_keywords (word) VALUES
('floading'),
('pipeline'),
('presure'),
('hicking'),
('gears'),
('holes'),
('knots'),
('speed'),
('shoes'),
('running'),
('boat'),
('engine'),
('water')
GO

INSERT INTO dbo.sd_problems (title, description, ownerid) VALUES
('llevar agua a 100mts de altitud', '<HTML><H2> Aqui va la descripci�n del problema con links y forma</H2></HTML>', 1),
('escalar el everest for dummies', '<HTML><H2> Aqui va la descripci�n del problema con links y estructura</H2></HTML>', 2),
('cordones que se amarran solos', '<HTML><H2> Aqui va la descripci�n del problema con links y orden</H2></HTML>', 2),
('zapatos para flotar en el agua', '<HTML><H2> Aqui va la descripci�n del problema con links y secciones</H2></HTML>', 2),
('botes de 3 motores para surfear', '<HTML><H2> Aqui va la descripci�n del problema con links y detalles</H2></HTML>', 1)
GO

INSERT INTO dbo.sd_problemkeywords (problemid, keywordid) VALUES
(1, 1),
(1, 3),
(1, 2),
(2, 4),
(2, 5),
(2, 6),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 11),
(5, 12),
(5, 13)
GO


INSERT INTO dbo.sd_problemlinks (problemid, linkid) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(5, 14),
(5, 15)
GO

INSERT INTO dbo.sd_designs (title, description, ownerid) VALUES
('jordan feets', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 3),
('swiming around', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 3),
('battle of shoes', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 3),
('gelatina de las galaxias', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 4),
('papadopulus', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 4),
('design thinking', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 4),
('flowers of boats', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 3),
('water pipes', '<HTML><H3>Aqui viene toda la descripci�n del dise�o con sus links</H3></HTML>', 3)

GO

INSERT INTO dbo.sd_solutions (problemid, designid, comments) VALUES 
(1, 1, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(1, 3, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(2, 2, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(2, 4, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(2, 6, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(2, 8, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(3, 3, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(3, 5, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(3, 7, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(4, 1, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(4, 2, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(4, 5, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(4, 8, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(4, 7, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(5, 7, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(5, 2, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita'),
(5, 5, 'los comentarios de como este dise�o soluciona este problema y los ajustes que necesita')
GO

DECLARE @quantitylogs INT
DECLARE @actiontypeid SMALLINT
DECLARE @solutionid BIGINT

SET @quantitylogs = 10000

SELECT TOP 1 @actiontypeid = actiontypeid FROM dbo.sd_actiontypes ORDER BY NEWID()
WHILE @quantitylogs>0  BEGIN

	IF RAND()>0.7 BEGIN
		SELECT TOP 1 @actiontypeid = actiontypeid FROM dbo.sd_actiontypes ORDER BY NEWID()
	END ELSE BEGIN
		SELECT @actiontypeid = CONVERT(INT, 4*RAND()) + 1 
	END

	SELECT TOP 1 @solutionid = solutionid FROM dbo.sd_solutions ORDER BY NEWID()

	INSERT INTO dbo.sd_solutionslog (actiontypeid, solutionid, posttime) VALUES (@actiontypeid, @solutionid, DATEADD(dd, 700*RAND(), '03/04/2019'))

	SET @quantitylogs =  @quantitylogs - 1
END

SELECT TOP 10 * FROM dbo.sd_solutionslog
