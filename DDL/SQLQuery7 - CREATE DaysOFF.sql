USE PV_319_IMPORT;
GO

--DROP TABLE DaysOFF;

CREATE TABLE DaysOFF
(
	[date]		DATE	PRIMARY KEY,
	holiday		TINYINT NOT NULL	CONSTRAINT FK_DO_Holidays REFERENCES Holidays(holiday_id)
);