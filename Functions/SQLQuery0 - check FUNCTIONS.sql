USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

PRINT(dbo.GetGroupID(N'PV_319'));
PRINT(dbo.GetDisciplineID(N'Процедурное программирование%'));
PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
PRINT(dbo.GetNewYearHolidaysStartDate(2024));
PRINT(dbo.GetSummertimeSadness(2023));
PRINT(dbo.GetHolidaysDuration(N'Нов%'));

PRINT('-----------------------------');
PRINT(dbo.GetHolidayStartDate(N'Май%', 2025))