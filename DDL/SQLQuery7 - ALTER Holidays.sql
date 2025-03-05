USE PV_319_IMPORT;
GO

ALTER TABLE		Holidays
ALTER COLUMN	diration	 TINYINT NOT NULL;

ALTER TABLE		Holidays
--ADD				[start_date] DATE
--DROP COLUMN [start_date];
ADD				
			[month] TINYINT,
			[day]	TINYINT
;