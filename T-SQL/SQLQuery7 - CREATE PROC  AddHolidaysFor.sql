USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

ALTER PROC sp_AddHolidaysFor
@year	AS	SMALLINT
AS
BEGIN
	EXEC sp_AddHolidays @year, N'���%';
	EXEC sp_AddHolidays @year, N'23%';
	EXEC sp_AddHolidays @year, N'8%';
	EXEC sp_AddHolidays @year, N'�����';
	EXEC sp_AddHolidays @year, N'������%'
	EXEC sp_AddHolidays @year, N'���%';
	EXEC sp_AddHolidays @year, N'����%';
END