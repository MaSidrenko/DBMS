USE PV_319_IMPORT;
GO

PRINT(dbo.GetLearningDays(N'PV_319'));

--EXEC sp_GetLearningDays N'PV_319';

SELECT 
	group_name AS N'������',
	dbo.GetLearningDays(group_name) AS N'������� ���'
FROM Groups