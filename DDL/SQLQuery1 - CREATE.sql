USE PV_319_IMPORT;
GO

CREATE TABLE LearningFormat
(
	format_id		TINYINT		PRIMARY KEY,
	format_name		NVARCHAR(50)	NOT NULL,
	direction		TINYINT			NOT NULL
	CONSTRAINT FK_LearningFormat_Directions FOREIGN KEY REFERENCES Directions(direction_id)
)