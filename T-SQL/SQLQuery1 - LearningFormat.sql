USE PV_319_IMPORT;
GO

--INSERT LearningFormat
--	(format_name, direction)
--VALUES
--	(N'������ ������', 1);

SELECT * FROM LearningFormat;
SELECT * FROM Directions;

SELECT 
	format_name		AS		N'������ ��������',
	direction_name	AS		N'����������� ��������'
FROM LearningFormat, Directions, Schedule
WHERE	direction_id = direction
;
