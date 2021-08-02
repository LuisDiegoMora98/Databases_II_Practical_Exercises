-- run in query window 2
--Query 5
--Execute after Query 4 and before Query 6
USE solutiondesigns
GO

UPDATE sd_designs
SET description = 'A'
WHERE designid = 3