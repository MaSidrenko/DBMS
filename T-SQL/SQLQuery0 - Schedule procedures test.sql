USE PV_319_IMPORT;
GO

SET DATEFIRST 1;


--EXEC sp_SetScheduleForStacionarGroup
--N'PD_321', N'%MS SQL Server%', N'�������', N'2024-06-01', N'13:30';


--EXEC sp_PrintScheduleForGroup N'PD_321';


--DECLARE	@salary AS SMALLMONEY;  
--
--EXEC @salary = sp_CountTeachersMounthSalary N'������', 2024, 06;
--PRINT(@salary);
--EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'����������� ���������������� %', N'������', N'2023-11-23', '18:30', 2, 4 ,6, 2, 1;

--DELETE FROM Schedule;

--EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'����������� ���������������� %', N'������', N'2023-11-23', '18:30', 4,2, 1;
--EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Hardware%', N'�����������', N'2023-11-25', '18:30', 6,2, 0;
--EXEC dbo.sp_SetScheduleForStacionarGroup N'PV_319', N'%��������%', N'������', N'2024-06-01', N'18:30';
--EXEC dbo.sp_SetScheduleForStacionarGroup N'PV_319', N'%UML%', N'������', N'2024-08-24', N'18:30';
EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'����%C#', N'������';
EXEC sp_PrintScheduleForGroup N'PV_319';
