USE PV_319_IMPORT;
SET DATEFIRST 1; 
GO

ALTER FUNCTION GetSummertimeSadness
		(@year AS SMALLINT)
RETURNS DATE
BEGIN
	DECLARE @first_august	AS DATE		= DATEFROMPARTS(@year, 08, 01);
	DECLARE @weekday		AS TINYINT  = DATEPART(WEEKDAY, @first_august);
	DECLARE @start_date		AS DATE		= DATEADD(DAY, 1-@weekday, @first_august);

	RETURN @start_date;
END