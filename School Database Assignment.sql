/* School Database Assignment */

/*1. Using SSMS, create a “School” database.*/
CREATE DATABASE School;

USE School;
GO

/*2. Create a “Classes” table, with the following columns:
	a. Class_ID (primary key)
	b. Class_Name
*/
CREATE TABLE Classes (
	Class_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Class_Name VARCHAR(50) NOT NULL
);

/*3. Create a “Students” table, with the following columns:
	a. Student_ID (primary key)
	b. Student_Name
*/
CREATE TABLE Students (
	Student_ID INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
	Student_Name VARCHAR(50) NOT NULL
);

/*4. Create an “Instructors” table, with the following columns:
	a. Instructor_ID (primary key)
	b. Instructor_Name
*/
CREATE TABLE Instructors (
	Instructor_ID INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	Instructor_Name VARCHAR(50) NOT NULL
);

/*5. Within the Students table, add the following foreign keys:
	a. Class_ID
	b. Instructor_ID
NOTE: To add the foreign keys, first add the column to the table and allow NULL values. Then you can use an additional ALTER TABLE to add the foreign key constraint.
*/
ALTER TABLE Students
ADD Class_ID INT CONSTRAINT fk_class_id FOREIGN KEY REFERENCES Classes(Class_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	Instructor_ID INT CONSTRAINT fk_instructor_id FOREIGN KEY REFERENCES Instructors(Instructor_ID) ON UPDATE CASCADE ON DELETE CASCADE
;
/*6. Populate the Classes table with two classes:
	a. Software Developer Boot Camp
	b. C# Boot Camp
*/
INSERT INTO Classes
	(Class_Name)
	VALUES
	('Software Developer Boot Camp'),
	('C# Boot Camp')
;

/*7. Populate the Students table with six student names of your choosing.*/
INSERT INTO Students
	(Student_Name)
	VALUES
	('Nick Halden'),
	('Lara Croft'),
	('Walter White'),
	('James Grimes'),
	('Mark Rober'),
	('Carmen Sandiego')
;

/*8. Populate the Instructors table with two Instructor names of your choosing.*/
INSERT INTO Instructors
	(Instructor_Name)
	VALUES
	('Steve Jobs'),
	('Margaret Hamilton')
;

/*9. Within the Student table, assign values to the Class_ID foreign key (i.e. assign
half the students to one class and the other half to the other class).
*/

UPDATE Students
SET Class_ID = 1
WHERE Student_ID = 1000 OR Student_ID = 1001 OR Student_ID = 1004
;

UPDATE Students
SET Class_ID = 2
WHERE Student_ID = 1002 OR Student_ID = 1003 OR Student_ID = 1005
;

ALTER TABLE Students
ALTER COLUMN Class_ID INT NOT NULL
;

/*10. Within the Students table, assign values to the Instructor_ID foreign key (i.e. assign
one of the Instructors to half the students and the other Instructor to the other half of the students).
*/
UPDATE Students
SET Instructor_ID = 100
WHERE Student_ID = 1000 OR Student_ID = 1001 OR Student_ID = 1004
;

UPDATE Students
SET Instructor_ID = 101
WHERE Student_ID = 1002 OR Student_ID = 1003 OR Student_ID = 1005
;

ALTER TABLE Students
ALTER COLUMN Instructor_ID INT NOT NULL
;

/*11. Run a query to display all Instructor names.*/
SELECT Instructor_Name FROM Instructors;

/*12. Run a query to display all student names in alphabetical order.*/
SELECT Student_Name
FROM Students
ORDER BY Student_Name
;

/*13. Run a query that displays all classes, with the students and Instructors assigned to each.
*/
SELECT a1.Class_Name, a2.Student_Name, a3.Instructor_Name
	FROM Classes a1
	INNER JOIN Students a2 ON a2.Class_ID = a1.Class_ID
	INNER JOIN Instructors a3 ON a3.Instructor_ID = a2.Instructor_ID
	ORDER BY Class_Name DESC
;