USE PV_319_IMPORT;
GO

SELECT 
		discipline_name		AS N'Дисциплина',
		number_of_lessons	AS N'Количество занятий'
FROM	Directions, Disciplines, DisciplinesDirectionsRelation
WHERE	direction	=	direction_id
AND		discipline =	discipline_id
AND		direction_name LIKE N'C++%'
;

--SELECT 
--		direction_name	AS	N'Направление обучения',
--		COUNT(discipline) AS N'Количество дисциплин'
--FROM	Disciplines, Directions, DisciplinesDirectionsRelation
--WHERE	discipline	=	discipline_id
--AND		direction	=	direction_id
--GROUP BY	direction_name;

SELECT
			direction_name			AS		N'Направление обучения',
			SUM(number_of_lessons)	AS		N'Количество занятий'
FROM		Disciplines, Directions, DisciplinesDirectionsRelation
WHERE		direction	=	direction_id
AND			discipline	=	discipline_id
GROUP BY	direction_name