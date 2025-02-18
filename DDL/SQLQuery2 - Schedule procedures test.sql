USE PV_319_IMPORT;
GO

--EXEC sp_SetScheduleForStacionarGroup
--N'PV_319', N'%UML%', N'Ковтун', N'2024-08-10', N'18:30';

EXEC sp_PrintScheduleForGroup N'PV_319';

--SELECT * FROM Schedule;