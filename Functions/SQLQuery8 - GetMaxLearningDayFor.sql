USE PV_319_IMPORT;
GO

--CREATE PROC sp_GetMaxLearningDayFor @group NVARCHAR(10)
--AS
ALTER FUNCTION GetMaxLearningDayFor(@group NVARCHAR(10))
RETURNS TINYINT
BEGIN
	DECLARE
	@weekdays	AS	TINYINT = (SELECT weekdats FROM Groups WHERE group_name=@group),
	@day		AS	TINYINT	= 6;
	WHILE @day>=0
	BEGIN
		IF((@weekdays & POWER(2, @day)) != 0)
		BEGIN
			--RETURN @day;
			--PRINT(@day);
			BREAK;
		END
		--PRINT(@day);
		SET @day -= 1;
	END
	RETURN @day;
END