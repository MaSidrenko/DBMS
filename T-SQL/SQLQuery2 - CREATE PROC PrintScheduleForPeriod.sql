USE PV_319_IMPORT;
GO

ALTER PROCEDURE sp_PrintScheduleForPeriod
@group_name			NVARCHAR(16),
@start_date			DATE,
@end_date			DATE
AS
BEGIN
		SELECT
				group_name						AS		N'Группа',
				discipline_name					AS		N'Дисциплина',
				FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name)
												AS		N'Преподаватель',
				DATENAME(WEEKDAY, [date])		AS		N'День',
				[date]							AS		N'Дата',
				[time]							AS		N'Время',
				IIF(spent = 1, N'Проведено', N'Запланировано')							
											AS		N'Статус'
		FROM	Schedule, Groups,Disciplines, Teachers
		WHERE	[group]					=		group_id
		AND		discipline				=		discipline_id
		AND		teacher					=		teacher_id
		AND		[date] 					BETWEEN @start_date AND @end_date
END
;