-- run in query window 2
--Query 8
--Execute after Query 7 and before Query 9
USE solutiondesigns
GO

INSERT INTO sd_designs (title, description, ownerid)
VALUES('PhantomRead Test', 'C', 3)

