USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

--EXEC sp_AddHolidays 2025, N'День%';

--EXEC sp_AddHolidaysFor 2025;

SELECT 
			[date]			AS		N'Дата',
			holiday_name	AS		N'Праздник'
FROM DaysOFF, Holidays
WHERE holiday = holiday_id
;
