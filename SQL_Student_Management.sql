CREATE DATABASE StudentManagement;
USE StudentManagement;

CREATE TABLE Students (
Student_ID INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100) UNIQUE,
date_of_birth DATE
);

CREATE TABLE Courses (
course_ID INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100),
course_code VARCHAR(10) UNIQUE
);

CREATE TABLE Enrollment (
Enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_ID INT,
course_ID INT,
enrollment_date DATE DEFAULT (CURRENT_DATE),
FOREIGN KEY (student_ID) REFERENCES Students(student_ID) ON DELETE CASCADE,
FOREIGN KEY (course_ID) REFERENCES Courses(course_ID) ON DELETE CASCADE
);

INSERT INTO Students (first_name, last_name, email, date_of_birth)
VALUES
('Dilruba','Jeba','jeba78@gmail.com','1992-09-17'),
('Hossain','Joy','joy98@gmail.com','1988-03-25'),
('Jannati','Akter','jannatiakter77@gmail.com','2008-05-07'),
('Alice', 'Smith', 'alice@example.com', '2002-05-14'),
('Bob', 'Johnson', 'bob@example.com', '2001-08-21');


INSERT INTO Courses (course_name, course_code)
VALUES
('Digital Logic Design','DLD-101'),
('Data Structure', 'DSA-102'),
('Object Oriented Programming','OOP-221'),
('Engineering Mathematics', 'EM-201'),
('Physics', 'PHY-311');

INSERT INTO Enrollment (student_ID, course_ID)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollment;









