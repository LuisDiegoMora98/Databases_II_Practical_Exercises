-- run in query window 1
USE solutiondesigns
GO

--Transaction isolation level is default - READ COMMITTED
BEGIN TRANSACTION Transaction1
    --Query 1
    SELECT *
    FROM sd_designs
    WHERE CONVERT(VARCHAR, description) = 'C'
    GO

    WAITFOR DELAY '00:00:05' 

    -- Query 2 in window 2 should be running before query 3

    --Query 3
    SELECT *
    FROM sd_designs
    WHERE CONVERT(VARCHAR, description) = 'C'
COMMIT