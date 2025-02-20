USE PV_319_IMPORT;
SET DATEFIRST 1;
GO


ALTER PROCEDURE sp_ScheduleForBaseStacionarGroup
	@group_name				NVARCHAR(16),
	@discipline_name		NVARCHAR(150),
	@teacher_last_name		NVARCHAR(50),
	@start_date				DATE,
	@time					TIME(0),
	@learint_1				TINYINT,
	@learint_2				TINYINT,
	@learint_3				TINYINT,
	@alernating_day			TINYINT,
	@first_week_present		BIT
AS
BEGIN
	DECLARE @group					AS INT		= (SELECT group_id				FROM Groups			WHERE group_name	= @group_name);
	DECLARE @discipline				AS SMALLINT = (SELECT discipline_id			FROM Disciplines	WHERE discipline_name LIKE @discipline_name);
	DECLARE @teacher				AS SMALLINT = (SELECT teacher_id			FROM Teachers		WHERE last_name		= @teacher_last_name);
	DECLARE @date					AS DATE		= @start_date;
	DECLARE @current_week_present	AS BIT		= @first_week_present;  
	DECLARE @number_of_lessons		AS TINYINT	= (SELECT number_of_lessons	FROM Disciplines	WHERE discipline_id	= @discipline);
	DECLARE @lesson_number			AS TINYINT	= 0;

	WHILE(@lesson_number < @number_of_lessons)
	BEGIN
		PRINT(@date);
		PRINT(DATENAME(WEEKDAY, @date));
		PRINT(@lesson_number + 1);
		PRINT(@time);
		SET @lesson_number = @lesson_number + 1;
		PRINT(@lesson_number + 1);
		PRINT(DATEADD(MINUTE, 95, @time));
		SET @lesson_number = @lesson_number + 1;
		PRINT('-------------------------');
		PRINT(DATEPART(WEEKDAY, @date));
		PRINT(@alernating_day);
		IF(DATEPART(WEEKDAY, @date) = @alernating_day)
		BEGIN
			SET @date = DATEADD(DAY, 2, @date);
		END
		ELSE IF(DATEPART(WEEKDAY, @date) = 4)
		BEGIN
			SET @date = IIF(@current_week_present = 1, DATEADD(DAY, 7, @date), DATEADD(DAY, 4, @date));
		END
		SET @current_week_present = IIF(@current_week_present = 1, 0 ,1);
		PRINT('====================================');
	END
END