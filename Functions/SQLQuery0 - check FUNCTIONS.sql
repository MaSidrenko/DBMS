USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Процедурное программирование%'));
--PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
--PRINT(dbo.GetNewYearHolidaysStartDate(2024));
--PRINT(dbo.GetSummertimeSadness(2023));
--PRINT(dbo.GetHolidaysDuration(N'Нов%'));

--PRINT('-----------------------------');
--PRINT(dbo.GetHolidayStartDate(N'Май%', 2025))

--PRINT('-----------------------------');
--PRINT(dbo.GetEasterDate(2011));
--PRINT(dbo.GetLastDateForGroup(N'PV_319'));
--PRINT(dbo.GetMaxLearningDayFor(N'PV_319'));
--EXEC sp_GetMaxLearningDayFor N'PV_319';
--EXEC sp_PrintScheduleForGroup N'PV_319';
DECLARE @group	AS	NVARCHAR(10) = N'PV_319'
DECLARE @date	AS	DATE	=		dbo.GetLastDateForGroup(@group);
WHILE @date < '2025-01-01'
BEGIN
	PRINT(@date);
	PRINT(DATENAME(WEEKDAY, @date));
	PRINT('---------------------------------------');
	SET		@date = dbo.GetNextLearningDateFor(@group);
END