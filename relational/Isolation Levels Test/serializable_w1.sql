-- run in query window 1
USE solutiondesigns
GO

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
BEGIN TRANSACTION Transaction4

 --Query 10
 SELECT *
 FROM sd_designs
 WHERE CONVERT(VARCHAR, description) ='C'
 GO

 WAITFOR DELAY '00:00:05' 

 --Query 12
 SELECT *
 FROM sd_designs
 WHERE CONVERT(VARCHAR, description) ='C'
 GO
 
COMMIT

WAITFOR DELAY '00:00:05' 

 SELECT *
 FROM sd_designs
 WHERE CONVERT(VARCHAR, description) ='C'
 GO