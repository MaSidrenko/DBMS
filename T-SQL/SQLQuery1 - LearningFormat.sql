USE PV_319_IMPORT;
GO

--INSERT LearningFormat
--	(format_name, direction)
--VALUES
--	(N'Заочны формат', 1);

SELECT * FROM LearningFormat;
SELECT * FROM Directions;

SELECT 
	format_name		AS		N'Формат обучения',
	direction_name	AS		N'Направление обучения'
FROM LearningFormat, Directions, Schedule
WHERE	direction_id = direction
;
