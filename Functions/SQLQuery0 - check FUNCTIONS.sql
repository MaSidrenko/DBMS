USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

PRINT(dbo.GetGroupID(N'PV_319'));
PRINT(dbo.GetDisciplineID(N'����������� ����������������%'));
PRINT(dbo.CountSpentLessons(N'PV_319', N'����������� ����������������%'));