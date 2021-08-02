USE solutiondesigns

-- T1
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
BEGIN TRANSACTION
	UPDATE dbo.sd_problems SET description = 'T1' WHERE problemid = 3
	WAITFOR DELAY '00:00:10' 
	UPDATE dbo.sd_problems SET description = 'T1' WHERE problemid = 4
COMMIT

SELECT * FROM dbo.sd_problems