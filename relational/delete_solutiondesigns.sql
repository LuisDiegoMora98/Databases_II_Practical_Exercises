/*  JUST FOR TESTING PURPOSES
    In case you may want to delete or drop the actual tables (version 29/7/2021)
    All the order is contemplated as a waterfall delete so you just need to execute all them all
*/
DELETE FROM sd_solutionslog
DELETE FROM sd_solutions
DELETE FROM sd_designs
DELETE FROM sd_problemlinks
DELETE FROM sd_problemkeywords
DELETE FROM sd_problems
DELETE FROM sd_keywords
DELETE FROM sd_links
DELETE FROM sd_owners
DELETE FROM sd_actiontypes
GO

--DELETION FOR TABLES, CAREFUL!!!
DROP TABLE sd_solutionslog
DROP TABLE sd_solutions
DROP TABLE sd_designs
DROP TABLE sd_problemlinks
DROP TABLE sd_problemkeywords
DROP TABLE sd_problems
DROP TABLE sd_keywords
DROP TABLE sd_links
DROP TABLE sd_owners
DROP TABLE sd_actiontypes
GO
