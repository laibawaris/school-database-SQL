# School Database Project - SQL

This repository contains SQL scripts for learning and practicing SQL basics and advanced queries. The project is designed as a learning roadmap, similar to a step-by-step approach used in Python learning.

## Files

1. **`school database setup.sql`**  
   - Creates the `students` table.  
   - Inserts sample data for students.  
   - Demonstrates basic queries: `SELECT`, `INSERT`, `UPDATE`, `DELETE`.

2. **`teacher table constraints.sql`**  
   - Creates the `teachers` table with constraints:  
     - `PRIMARY KEY`  
     - `AUTO_INCREMENT`  
     - `NOT NULL`  
     - `UNIQUE`  
     - `CHECK`  
     - `DEFAULT`  
   - Inserts sample teacher data and shows valid/invalid insert scenarios.

3. **`student teacher foreign key.sql`**  
   - Alters the `students` table to add `teacher_id`.  
   - Adds a `FOREIGN KEY` to link students with teachers.  
   - Demonstrates `JOIN` queries to combine student and teacher data.

4. **`school database advanced.sql`**  
   - Advanced queries including:  
     - `GROUP BY` and `HAVING`  
     - Aggregate functions: `COUNT`, `SUM`, `AVG`, etc.  
     - Self joins and set operations (`UNION`, `EXCEPT`)  
     - Transactions: `START TRANSACTION`, `COMMIT`, `ROLLBACK`  

## Notes

- All scripts are written for **MySQL Workbench**.  
- The project is structured to reflect a **learning progression**, starting from basics to advanced queries.  
- Use these scripts to practice SQL queries and understand database relationships.

## How to Use

1. Clone the repository:  
   ```bash
   git clone https://github.com/laibawaris/school-database-SQL.git



