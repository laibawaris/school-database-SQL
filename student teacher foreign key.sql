-- Adds foreign key linking students to teachers and sample inserts
USE school;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    salary INT CHECK (salary >= 20000),
    email VARCHAR(100) UNIQUE,
    join_date DATE DEFAULT (curdate())
);
INSERT INTO teachers (name, subject, salary, email)
VALUES ('Sara', 'Math', 20000, 'sara@gmail.com');
INSERT INTO teachers (name, subject, salary)
VALUES ('Imran', 'Physics', 25000);
SELECT * FROM teachers;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);
INSERT INTO students (name, age, teacher_id) VALUES ('Ali', 20, 1);
INSERT INTO students (name, age, teacher_id) VALUES ('Bilal', 21, 1);
INSERT INTO students (name, age, teacher_id) VALUES ('Kiran', 22, 2);
SELECT * FROM students;
SELECT s.name AS student_name, s.age, t.name AS teacher_name, t.subject
FROM students s
LEFT JOIN teachers t
ON s.teacher_id = t.id;

