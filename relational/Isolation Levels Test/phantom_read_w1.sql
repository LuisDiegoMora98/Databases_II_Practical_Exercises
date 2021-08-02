-- run in query window 1
USE solutiondesigns
GO

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ

BEGIN TRANSACTION Transaction3

    --Query 7
    SELECT *
    FROM sd_designs
    WHERE CONVERT(VARCHAR, description) ='C'
    GO

    WAITFOR DELAY '00:00:05' 

    --Query 9
    SELECT *
    FROM sd_designs
    WHERE CONVERT(VARCHAR, description) ='C'

COMMIT