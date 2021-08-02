-- run in query window 2
--Query 11
--Execute after Query 10 and before Query 12 
USE solutiondesigns
GO

INSERT INTO sd_designs (title, description, ownerid)
VALUES('Serializable Test', 'C', 3)