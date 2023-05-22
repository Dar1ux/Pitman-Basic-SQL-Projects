CREATE DATABASE db_assignment7;

USE db_assignment7;
GO

CREATE TABLE tbl_class (
	class_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	class_name VARCHAR(50) NOT NULL,
	class_instructor VARCHAR(50) NOT NULL,
);

INSERT INTO tbl_class
	(class_name, class_instructor)
	VALUES
	('Chemistry', 'Dmitri Mendeleev'),
	('Geography', 'Immanuel Kant'),
	('Art Studies', 'Pablo Picasso'),
	('Physics', 'Nikola Tesla'),
	('Maths', 'Srinivasa Ramanujan')
;

CREATE TABLE tbl_student (
	student_id INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
	student_name VARCHAR(50) NOT NULL,
	student_gpa FLOAT NOT NULL,
	student_class INT NOT NULL CONSTRAINT fk_class_id FOREIGN KEY REFERENCES tbl_class(class_id) ON UPDATE CASCADE ON DELETE CASCADE,
);

INSERT INTO tbl_student
	(student_name, student_gpa, student_class)
	VALUES
	('Walter White', 3.9, 1),
	('Nick Halden', 3.5, 3),
	('Carmen Sandiego', 3.5, 2),
	('Marie Curie', 3.1, 1),
	('Ferdinand Magellan', 3.7, 2),
	('James Grimes', 3.4, 5),
	('Mark Rober', 3.3, 4)
;

SELECT a1.student_name, a1.student_gpa, a2.class_name, a2.class_instructor
	FROM tbl_student a1
	INNER JOIN tbl_class a2 ON a2.class_id = a1.student_class
	WHERE a2.class_name = 'Chemistry'
;