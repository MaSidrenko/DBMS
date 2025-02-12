USE PV_319_IMPORT;
GO

SELECT
			[Направления обучения]		=		direction_name,
			[Количество дисциплин]		=		COUNT(discipline_id)
FROM		Disciplines, Directions, DisciplinesDirectionsRelation
WHERE		discipline	=	discipline_id
AND			direction	=	direction_id
GROUP BY	direction_name
;