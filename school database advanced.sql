-- Use existing database
USE school;
-- INNER JOIN
SELECT s.name AS student_name, t.name AS teacher_name, t.subject
FROM students s
INNER JOIN teachers t
ON s.teacher_id = t.id;
-- LEFT JOIN
SELECT s.name AS student_name, t.name AS teacher_name, t.subject
FROM students s
LEFT JOIN teachers t
ON s.teacher_id = t.id;
-- SELF JOIN example
SELECT s1.name AS student1, s2.name AS student2
FROM students s1
JOIN students s2
ON s1.id < s2.id;
-- Count total students
SELECT COUNT(*) AS total_students FROM students;
-- Average salary of teachers
SELECT AVG(salary) AS avg_salary FROM teachers;
-- Sum of student ages
SELECT SUM(age) AS total_age FROM students;
-- Maximum teacher salary
SELECT MAX(salary) AS max_salary FROM teachers;
-- Group students by teacher_id
SELECT teacher_id, COUNT(*) AS students_count
FROM students
GROUP BY teacher_id;
-- Only show teacher groups with more than 1 student
SELECT teacher_id, COUNT(*) AS students_count
FROM students
GROUP BY teacher_id
HAVING COUNT(*) > 1;
-- UNION example
SELECT name FROM students
UNION
SELECT name FROM teachers;
-- Start transaction
START TRANSACTION;
-- Insert new teacher
INSERT INTO teachers (name, subject, salary, email)
VALUES ('Fatima', 'Chemistry', 23000, 'fatima@gmail.com');
-- Insert students assigned to new teacher
INSERT INTO students (name, age, teacher_id)
VALUES ('Sami', 19, LAST_INSERT_ID());
INSERT INTO students (name, age, teacher_id)
VALUES ('Hina', 20, LAST_INSERT_ID());
-- Commit changes
COMMIT;
-- SELECT with WHERE and ORDER BY
SELECT * FROM students
WHERE age >= 21
ORDER BY age DESC;
-- SELECT with LIKE
SELECT * FROM students
WHERE name LIKE 'A%';
-- SELECT with IN
SELECT * FROM teachers
WHERE subject IN ('Math', 'Physics');
-- LIMIT example
SELECT * FROM students
ORDER BY age ASC
LIMIT 2;

