-- run in query window 1
USE solutiondesigns
GO

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ

BEGIN TRANSACTION Transaction2
    --Query 4
    SELECT *
    FROM sd_designs
    WHERE CONVERT(VARCHAR, description) = 'C'
    GO

    WAITFOR DELAY '00:00:05' 

    --Query 6
    SELECT *
    FROM sd_designs
    WHERE CONVERT(VARCHAR, description) ='C'
    GO
COMMIT

WAITFOR DELAY '00:00:05' 

SELECT *
FROM sd_designs
WHERE CONVERT(VARCHAR, description) = 'C'