USE PV_319_IMPORT;
GO

CREATE TABLE Salary
(
	paument_id	BIGINT		PRIMARY KEY,
	teacher		SMALLINT	NOT NULL CONSTRAINT FK_Salary_Teachers REFERENCES Teachers(teacher_id),
	accrued		SMALLMONEY	NOT NULL,
	received	BIT			NOT NULL
);