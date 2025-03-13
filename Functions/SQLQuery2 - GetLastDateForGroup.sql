USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

ALTER FUNCTION dbo.GetLastDateForGroup(@group NVARCHAR (10))
RETURNS DATE
BEGIN
	--DECLARE @discipline_name AS NVARCHAR(150) = 
	--(SELECT discipline_name FROM Disciplines WHERE descipline_id = 
	--(SELECT discipline_id FROM Schedule WHERE [date] = 
	--(SELECT MAX([date]) FROM Schedule WHERE [group] = @group)));
	--PRINT(@discipline_name);
	RETURN 
	(SELECT MAX([date]) FROM Schedule WHERE [group] = dbo.GetGroupID(@group));
END