USE solutiondesigns

-- T0
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
BEGIN TRANSACTION
	UPDATE dbo.sd_problems SET description = 'T1' WHERE problemid = 4
 
	UPDATE dbo.sd_problems SET description = 'T1' WHERE problemid = 3
COMMIT

