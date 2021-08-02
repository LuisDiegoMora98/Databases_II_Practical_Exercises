-- run in query window 2
--Query 2
--Execute after Query 1 and before Query 3 
USE solutiondesigns
GO

UPDATE sd_designs
SET [description] = 'C'
WHERE designid = 4