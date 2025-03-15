USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

--ALTER PROC sp_GetLearningDays(@group_name NVARCHAR(10))
--AS
ALTER FUNCTION GetLearningDays(@group_name NVARCHAR(10))
RETURNS NVARCHAR(50)
BEGIN
	--PRINT(@group_name);
	DECLARE 
	@week	AS	TABLE(id TINYINT, [day] NVARCHAR(50));	
	INSERT @week 
			(id, [day])
	VALUES
			(0, N'��'),
			(1, N'��'),
			(2, N'��'),
			(3, N'��'),
			(4, N'��'),
			(5, N'��'),
			(6, N'��');
	--SELECT * FROM @week;
	DECLARE 
	@mask	AS	TINYINT			= (SELECT weekdats FROM Groups WHERE group_name = @group_name),
	@days	AS	NVARCHAR(50)	= N'';

	--PRINT(@mask);
	DECLARE 
	@day	AS	TINYINT	= 0;

	WHILE @day < 7
	BEGIN
		IF (@mask & (POWER(2, @day))) != 0
		BEGIN
			SET @days += (SELECT [day] FROM @week WHERE id = @day) + N','; 
		END
		SET @day +=1;
	END
	--PRINT(@days);

	RETURN @days;
END