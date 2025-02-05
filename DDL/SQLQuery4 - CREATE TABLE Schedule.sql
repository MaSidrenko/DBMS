USE PV_319_DDL;
GO

--CREATE TABLE Schedule
--(
--	lesson_id		BIGINT			PRIMARY KEY,
--	[date]			DATE			NOT NULL,
--	[time]			TIME			NOT NULL,
--	[group]			INT				NOT NULL,
--	discipline		SMALLINT		NOT NULL,
--	teacher			INT				NOT NULL,
--	[subject]		NVARCHAR(256)	NULL,
--	spent			BIT				NOT NULL,
--	CONSTRAINT FK_Schedule_Disciplines		FOREIGN KEY (discipline)		REFERENCES Disciplines(discipline_id),
--	CONSTRAINT FK_Schedule_Groups			FOREIGN KEY ([group])			REFERENCES Groups(group_id),
--	CONSTRAINT FK_Schedule_Teachers			FOREIGN KEY (teacher)			REFERENCES Teachers(teacher_id)
--);

--CREATE TABLE Grades
--(
--	student		INT,
--	lesson		BIGINT,
--	present		BIT			NULL,
--	grade_1		TINYINT		NULL,
--	grade_2		TINYINT		NULL,
--	PRIMARY KEY (student, lesson),
--	CONSTRAINT FK_Grades_Students			FOREIGN KEY (student)		REFERENCES Students(student_id),
--	CONSTRAINT FK_Grades_Schedule			FOREIGN KEY (lesson)		REFERENCES Schedule(lesson_id)
--);

CREATE TABLE Exams
(
	student			INT,
	lesson			BIGINT,
	grade			TINYINT		NULL,
	PRIMARY KEY(student, lesson),
	CONSTRAINT FK_Exams_Students		FOREIGN KEY (student)			REFERENCES	Students(student_id),
	CONSTRAINT FK_Exams_Schedule		FOREIGN KEY (lesson)			REFERENCES	Schedule(lesson_id)
);