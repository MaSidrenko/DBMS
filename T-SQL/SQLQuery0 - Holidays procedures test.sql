USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

--EXEC sp_AddHolidays 2025, N'����%';

--EXEC sp_AddHolidaysFor 2025;

SELECT 
			[date]			AS		N'����',
			holiday_name	AS		N'��������'
FROM DaysOFF, Holidays
WHERE holiday = holiday_id
;
