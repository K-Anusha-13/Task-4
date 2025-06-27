use task_4;

CREATE TABLE Students (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    grade INTEGER,
    age INTEGER,
    gender TEXT,
    city TEXT
);

CREATE TABLE Teachers (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    subject TEXT,
    hire_date DATE,
    salary REAL
);

CREATE TABLE Classes (
    id INTEGER PRIMARY KEY,
    class_name TEXT,
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id)
);

CREATE TABLE Enrollments (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    class_id INTEGER,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (class_id) REFERENCES Classes(id)
);

INSERT INTO Students VALUES (1, 'Amit', 'Sharma', 10, 15, 'Male', 'Delhi');
INSERT INTO Students VALUES (2, 'Neha', 'Verma', 10, 14, 'Female', 'Mumbai');
INSERT INTO Students VALUES (3, 'Rahul', 'Patel', 9, 14, 'Male', 'Bangalore');
INSERT INTO Students VALUES (4, 'Anjali', 'Reddy', 11, 16, 'Female', 'Hyderabad');
INSERT INTO Students VALUES (5, 'Arjun', 'Mehta', 12, 17, 'Male', 'Delhi');
INSERT INTO Students VALUES (6, 'Aisha', 'Khan', 10, 15, 'Female', 'Mumbai');

INSERT INTO Teachers VALUES (1, 'Suman', 'Joshi', 'Math', '2016-06-15', 55000);
INSERT INTO Teachers VALUES (2, 'Rajeev', 'Kapoor', 'Science', '2018-01-20', 60000);
INSERT INTO Teachers VALUES (3, 'Priya', 'Nair', 'English', '2014-03-10', 52000);
INSERT INTO Teachers VALUES (4, 'Vikas', 'Gupta', 'History', '2021-08-01', 48000);
INSERT INTO Teachers VALUES (5, 'Sunita', 'Singh', 'Computer', '2019-09-12', 62000);

INSERT INTO Classes VALUES (1, '10A', 1);
INSERT INTO Classes VALUES (2, '10B', 2);
INSERT INTO Classes VALUES (3, '11A', 3);
INSERT INTO Classes VALUES (4, '12A', 5);

INSERT INTO Enrollments VALUES (1, 1, 1, '2023-06-10');
INSERT INTO Enrollments VALUES (2, 2, 2, '2023-06-11');
INSERT INTO Enrollments VALUES (3, 3, 2, '2023-06-12');
INSERT INTO Enrollments VALUES (4, 4, 3, '2023-06-13');
INSERT INTO Enrollments VALUES (5, 5, 4, '2023-06-14');
INSERT INTO Enrollments VALUES (6, 6, 1, '2023-06-15');

SELECT grade, COUNT(*) AS student_count FROM Students GROUP BY grade;

SELECT gender, AVG(age) AS avg_age
FROM Students
GROUP BY gender;

SELECT city, COUNT(*) AS total_students FROM Students GROUP BY city;

SELECT subject, AVG(salary) AS avg_salary FROM Teachers GROUP BY subject;

SELECT C.class_name, COUNT(E.student_id) AS total_enrollments FROM Enrollments E
JOIN Classes C ON E.class_id = C.id GROUP BY C.class_name;

SELECT T.first_name || ' ' || T.last_name AS teacher_name, COUNT(E.student_id) AS student_count
FROM Enrollments E JOIN Classes C ON E.class_id = C.id
JOIN Teachers T ON C.teacher_id = T.id GROUP BY teacher_name;

SELECT teacher_id, COUNT(*) AS class_count FROM Classes GROUP BY teacher_id HAVING COUNT(*) > 1;

SELECT C.class_name, AVG(S.age) AS avg_age FROM Enrollments E
JOIN Students S ON E.student_id = S.id JOIN Classes C ON E.class_id = C.id
GROUP BY C.class_name;

SELECT subject, SUM(salary) AS total_salary FROM Teachers GROUP BY subject HAVING SUM(salary) > 55000;

SELECT city, gender, COUNT(*) AS total FROM Students GROUP BY city, gender;