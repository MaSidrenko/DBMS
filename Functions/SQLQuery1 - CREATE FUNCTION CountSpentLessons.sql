USE PV_319_IMPORT;
SET DATEFIRST 1;
GO

ALTER FUNCTION CountSpentLessons
	(
		@group_name		 AS	 NVARCHAR(10),
		@discipline_name AS	 NVARCHAR(150)
	)
RETURNS TINYINT
BEGIN
	--DECLARE @group		AS	INT			=	(SELECT group_id FROM Groups WHERE group_name = @group_name);
	--DECLARE @discipline	AS	SMALLINT	=	(SELECT discipline_id FROM Disciplines WHERE discipline_name = @discipline_name);
	

	RETURN (SELECT COUNT(lesson_id) FROM Schedule WHERE [group] = dbo.GetGroupID(@group_name) AND discipline = dbo.GetDisciplineID(@discipline_name) AND spent = 1);
END;