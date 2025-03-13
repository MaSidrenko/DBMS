USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

ALTER PROC sp_AddHolidaysFor
@year	AS	SMALLINT
AS
BEGIN
	EXEC sp_AddHolidays @year, N'Нов%';
	EXEC sp_AddHolidays @year, N'23%';
	EXEC sp_AddHolidays @year, N'8%';
	EXEC sp_AddHolidays @year, N'Пасха';
	EXEC sp_AddHolidays @year, N'Летние%'
	EXEC sp_AddHolidays @year, N'Май%';
	EXEC sp_AddHolidays @year, N'День%';
END