USE PV_319_IMPORT;
GO

SELECT
			[����������� ��������]		=		direction_name,
			[���������� ���������]		=		COUNT(discipline_id)
FROM		Disciplines, Directions, DisciplinesDirectionsRelation
WHERE		discipline	=	discipline_id
AND			direction	=	direction_id
GROUP BY	direction_name
;