USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

PRINT(dbo.GetGroupID(N'PV_319'));
PRINT(dbo.GetDisciplineID(N'����������� ����������������%'));
PRINT(dbo.CountSpentLessons(N'PV_319', N'����������� ����������������%'));
PRINT(dbo.GetNewYearHolidaysStartDate(2024));
PRINT(dbo.GetSummertimeSadness(2023));
PRINT(dbo.GetHolidaysDuration(N'���%'));

PRINT('-----------------------------');
PRINT(dbo.GetHolidayStartDate(N'���%', 2025))