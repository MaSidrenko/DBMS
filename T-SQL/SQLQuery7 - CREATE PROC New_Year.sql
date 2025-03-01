USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

CREATE PROC sp_AddNewYearHolidaysFor
	@year	AS	SMALLINT	
AS
BEGIN
	DECLARE	@new_year_date	AS DATE		 = DATEFROMPARTS(2025,01,01);
	DECLARE @weekday		AS TINYINT	 = DATEPART(WEEKDAY, @new_year_date);
	DECLARE @start_date		AS DATE		 = DATEADD(DAY, 1- @weekday,@new_year_date);
	DECLARE @duration		AS TINYINT	 = (SELECT diration FROM Holidays WHERE holiday_id = 1);
	--PRINT(@start_date);

	WHERE @duration > 0
	BEGIN 
		INSERT DaysOFF([date], holiday) VALUES (@date, 1);
	END
END
;