USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

CREATE FUNCTION GetNextLearningDayFor(@group_name NVARCHAR(10))
RETURNS TINYINT
BEGIN
	DECLARE 
	@current_day	AS TINYINT = DATEPART(WEEKDAY, dbo.GetLastDateForGroup(@group_name));
	DECLARE
	@next_day		AS TINYINT = IIF(@current_day < dbo.GetMaxLearningDayFor(@group_name) + 1, @current_day, 0),
	@weekdays			AS TINYINT = (SELECT weekdats FROM Groups WHERE group_name = @group_name);

	WHILE @next_day < 7
	BEGIN
		IF(@weekdays & POWER(2, @next_day)) != 0
		BEGIN
			BREAK;
		END
		SET @next_day += 1;
	END

	RETURN @next_day;
END