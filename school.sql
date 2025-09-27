CREATE DATABASE school;
USE school;
CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT);
INSERT INTO students(id,name,age) VALUES(1,"Ali",21);
INSERT INTO students(id,name,age) VALUES(2,"Aira",20);
INSERT INTO students(id,name,age) VALUES(3,"Atif",22);
SELECT * FROM students;
SELECT name FROM students;
SELECT * FROM students WHERE age>=21;
UPDATE students SET age=23 WHERE id=3 ;
DELETE FROM students WHERE id=3;
SELECT * FROM students;