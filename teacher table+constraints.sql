-- Creates teachers table with constraints like NOT NULL, UNIQUE, AUTO_INCREMENT
-- using the exsisting school database
USE school;
-- creating a new table of teacher with constraints
CREATE TABLE teachers(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
subject VARCHAR(50) NOT NULL,
salary INT CHECK (salary>=20000),
email VARCHAR(100) UNIQUE,
join_date DATE DEFAULT (CURRENT_DATE)
);
-- insert query to insert valid data
INSERT INTO  teachers ( name,subject,salary,email)
VALUES('Sara','Math',20000,'sara@gmail.com');
-- if we dont want to add email(unique) we can skip unless we make it "NOT NULL"
INSERT INTO teachers (name,subject,salary) 
VALUES ('Imran','Physics',25000);
-- use select query to show table
SELECT * FROM teachers;


