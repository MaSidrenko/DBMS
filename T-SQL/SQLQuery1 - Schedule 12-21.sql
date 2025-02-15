USE PV_319_IMPORT;
GO

SET DATEFIRST 1;

DECLARE @group				AS		INT			=	(SELECT group_id			FROM Groups			WHERE group_name = N'PV_319');
DECLARE @discipline			AS		SMALLINT	=	(SELECT discipline_id		FROM Disciplines	WHERE discipline_name LIKE N'Hardware-PC');
DECLARE @teacher			AS		SMALLINT	=	(SELECT	teacher_id			FROM Teachers		WHERE first_name = N'����');
DECLARE @start_date			AS		Date		=	N'2024-12-12';
DECLARE @date				AS		Date		=	@start_date
DECLARE @number_of_lessons	AS		TINYINT		=	(SELECT number_of_lessons	FROM Disciplines	WHERE discipline_id = @discipline);	
DECLARE @lesson				AS		TINYINT		=	1
DECLARE @time				AS		TIME(0)		=	N'18:30';

WHILE (@lesson <= @number_of_lessons)
BEGIN
	PRINT(@date)
	PRINT(DATENAME(WEEKDAY, @date));
	PRINT(@lesson);
	PRINT(@time);
	SET @lesson = @lesson + 1;
	PRINT(@lesson);
	PRINT(DATEADD(MINUTE, 95, @time));
	
	SET @lesson = @lesson + 1;
	PRINT('------------------');
	IF(DATEPART(WEEKDAY, @date) = 6)
	BEGIN
		SET @date = DATEADD(DAY, 3, @date);
	END
	ELSE
	BEGIN
		SET @date = DATEADD(DAY, 2, @date);
	END
END