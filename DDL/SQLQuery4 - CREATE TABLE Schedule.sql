USE PV_319_DDL;
GO

CREATE TABLE Schedule
(
	lesson_id		BIGINT			PRIMARY KEY,
	[date]			DATE			NOT NULL,
	[time]			TIME			NOT NULL,
	[group]			INT				NOT NULL,
	discipline		SMALLINT		NOT NULL,
	teacher			INT				NOT NULL,
	[subject]		NVARCHAR(256)	NULL,
	spent			BIT				NOT NULL,
	CONSTRAINT FK_
);