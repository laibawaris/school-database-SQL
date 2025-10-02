# School Database Project

This project demonstrates building a simple SQL database for a school system.  
It includes tables for students and teachers, with constraints and foreign key relationships.

---

## Project Structure

1. **`school database setup.sql`**  
   - Creates the initial `students` table with columns: id, name, age  
   - Inserts sample student records

2. **`teacher table+constraints.sql`**  
   - Creates `teachers` table with constraints (NOT NULL, UNIQUE, CHECK, AUTO_INCREMENT)  
   - Inserts sample teacher records

3. **`student teacher foreign key.sql`**  
   - Adds foreign key linking `students` to `teachers`  
   - Inserts students with corresponding teacher assignments  
   - Includes JOIN queries and additional practice queries

---

## How to Run

1. Run files in order:
   1. `school database setup.sql`
   2. `teacher table+constraints.sql`
   3. `student teacher foreign key.sql`
2. Use MySQL Workbench or any MySQL client.
3. Ensure the `school` database exists (created in the first file).

---

## Skills Demonstrated

- Database creation and usage  
- Table creation with constraints  
- Primary keys and foreign keys  
- Auto-increment columns  
- INSERT, SELECT, UPDATE, DELETE queries  
- JOIN operations


