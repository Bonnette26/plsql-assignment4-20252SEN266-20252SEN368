
# Student Registration and Grading System

## Course Information
- **Course:** Database Development with PL/SQL (INSY 8311)
- **Assignment:** Group Assignment IV – Advanced Oracle PL/SQL Programming
- **Database:** Oracle Database 26ai Free
- **Programming Language:** Oracle PL/SQL

## Group Members

| Full Name | Student ID |
|---|---|
| NIYIGENA Bonnette | 20252SEN266 |
| UWASE Henriette | 20252SEN368 |

## Project Description

The Student Registration and Grading System is an Oracle PL/SQL database application designed to manage student information, course registration, and academic marks.

The system allows users to:
1. Register students.
2. Manage courses.
3. Register students for courses.
4. Record and update student marks.
5. Calculate student grades.
6. Retrieve student academic records.

## Main Database Tables
- STUDENTS
- COURSES
- REGISTRATIONS

## PL/SQL Concepts

This project demonstrates:
- User-defined records and `%ROWTYPE`
- Collections
- Implicit cursors
- Explicit cursors
- `BULK COLLECT` and `FORALL`
- Stored procedures
- Stored functions
- Exception handling

## Project Structure
- `00_schema/` – Table creation and sample data.
- `01_procedures/` – Stored procedures.
- `02_functions/` – Stored functions.
- `03_tests/` – Successful and error test cases.
- `screenshots/` – Execution screenshots.
- `docs/` – Implementation notes.

## How to Run
1. Create the database tables.
2. Insert sample data.
3. Compile stored procedures.
4. Compile stored functions.
5. Execute test scripts.
6. Verify results and screenshots.

### Additional PL/SQL Features
- Implicit cursor attributes: SQL%FOUND, SQL%NOTFOUND, SQL%ROWCOUNT.
- User-defined exceptions using RAISE and RAISE_APPLICATION_ERROR.
- Validation of student marks between 0 and 100.

## Academic Integrity

AI tools were used to support learning, explanations, debugging, and documentation. Both group members reviewed and tested the work and are responsible for understanding the submitted code.

