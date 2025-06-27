# Task-4: Writing Basic SELECT Queries

**🎯 Objective:**

To practice and strengthen SQL SELECT skills by retrieving and filtering data using various clauses such as WHERE, ORDER BY, LIKE, BETWEEN, and LIMIT.

**🏫 Project: School Administration Database**

This project simulates a basic school management system for querying student and class-related data.

**📋 Tables Used :**

Students – Contains information about each student (ID, name, grade, age, gender, city).

Teachers – Contains details of each teacher (ID, name, subject, salary, hire date).

Classes – Associates classes with specific teachers.

Enrollments – Tracks which students are enrolled in which classes.

**🛠️ What Was Done :**

1️⃣ Table Creation
Created 4 tables using CREATE TABLE with appropriate fields, data types, and foreign key relationships.

2️⃣ Data Insertion
Inserted sample records into each table including student names, teacher info, class associations, and enrollment records.

3️⃣ Data Retrieval (SELECT Queries)
Executed and tested a variety of SQL queries, including:

Basic SELECT statements (e.g., SELECT * FROM Students)

Column-specific selections

Filtering with WHERE, AND, OR (e.g., WHERE city = 'Delhi' AND grade > 8)

Pattern matching using LIKE (e.g., WHERE first_name LIKE 'A%')

Range filtering using BETWEEN (e.g., WHERE age BETWEEN 12 AND 16)

Sorting results using ORDER BY (e.g., ORDER BY last_name ASC)

Limiting result size using LIMIT (e.g., LIMIT 5)

Joining tables to retrieve combined results (e.g., INNER JOIN Enrollments ON student_id = id)

**🧰 Tools Used :**

MySQL Workbench – Used for schema creation, data insertion, and query execution.

**📁 Files Included :**

task_4.sql – Contains the SQL scripts: CREATE, INSERT, and SELECT queries.

outputs of task 4 – Contains screenshots or results of executed queries for verification.

**📌 Notes :**

The JOIN queries helped connect data across tables for meaningful insights (e.g., listing all students enrolled in a particular subject).

Used appropriate aliases and formatting to make queries readable and maintainable.

**✅ Outcome :**
Successfully demonstrated the use of SQL SELECT and associated clauses to retrieve and analyze data from a relational database.
