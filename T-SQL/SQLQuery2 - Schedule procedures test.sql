USE PV_319_IMPORT;
GO

--EXEC sp_SetScheduleForStacionarGroup
--N'PD_321', N'%MS SQL Server%', N'Покидюк', N'2024-06-01', N'13:30';


--EXEC sp_PrintScheduleForGroup N'PD_321';


--DECLARE	@salary AS SMALLMONEY;  
--
--EXEC @salary = sp_CountTeachersMounthSalary N'Ковтун', 2024, 06;
--PRINT(@salary);

EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Процедураное программирование %', N'Ковтун', N'2023-11-23', '18:30', 2, 4 ,6, 2, 1;