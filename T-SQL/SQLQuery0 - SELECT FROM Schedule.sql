USE PV_319_IMPORT;
GO

SET DATEFIRST 1;


SELECT 
		group_name					AS		N'Группа', 
		discipline_name				AS		N'Дисциплина',
		FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name)				
									AS		N'Перподаватель',
		DATENAME(WEEKDAY, [date])	AS		N'День',
		[date]						AS		N'Дата',
		[time]						AS		N'Время',
		IIF(spent = 1, N'Проведено', N'Запланировано')
									AS		N'Статус'
FROM	Schedule, Groups, Disciplines, Teachers
WHERE	[group]		=	 group_id
AND		discipline	=	discipline_id
AND		teacher		=	 teacher_id
;
