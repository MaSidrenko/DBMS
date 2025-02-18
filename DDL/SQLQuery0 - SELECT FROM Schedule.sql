USE PV_319_IMPORT;
GO

SET DATEFIRST 1;


SELECT 
		group_name					AS		N'������', 
		discipline_name				AS		N'����������',
		FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name)				
									AS		N'�������������',
		DATENAME(WEEKDAY, [date])	AS		N'����',
		[date]						AS		N'����',
		[time]						AS		N'�����',
		IIF(spent = 1, N'���������', N'�������������')
									AS		N'������'
FROM	Schedule, Groups, Disciplines, Teachers
WHERE	[group]		=	 group_id
AND		discipline	=	discipline_id
AND		teacher		=	 teacher_id
;
