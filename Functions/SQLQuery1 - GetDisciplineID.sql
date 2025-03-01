USE PV_319_IMPORT;
GO


ALTER FUNCTION GetDisciplineID
	( 
		@discpline_name	AS	NVARCHAR(150)
	)
RETURNS SMALLINT
BEGIN
	RETURN (SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE @discpline_name);
END