USE PV_319_IMPORT;
GO

CREATE FUNCTION GetEasterDate(@year SMALLINT)RETURNS DATE
BEGIN
	DECLARE @a  AS SMALLINT = @year % 19;
	DECLARE @b	AS SMALLINT = @year % 4;
	DECLARE @c	AS SMALLINT = @year % 7;
	DECLARE @d	AS SMALLINT = (19 * @a + 15) % 30;
	DECLARE @e  AS SMALLINT = (2 * @b + 4 * @c + 6 * @d + 6) % 7;
	DECLARE @f	AS SMALLINT = @d + @e;
	RETURN IIF(@f <= 26, DATEFROMPARTS(@year, 4, 4+@f) ,DATEFROMPARTS(@year, 5, @f-26));
END