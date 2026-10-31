# Implementation Notes

## Project Name
Student Registration and Grading System

## 1. Project Description
This project uses Oracle PL/SQL to manage students, courses, registrations, and student grades.

## 2. Database Tables
- STUDENTS: Stores student information.
- COURSES: Stores course information.
- REGISTRATIONS: Stores student course registrations and marks.

## 3. PL/SQL Concepts Implemented
- Records and `%ROWTYPE`
- Collections (Associative Arrays)
- Implicit Cursors
- Explicit Cursors
- Bulk Processing (`BULK COLLECT` and `FORALL`)
- Stored Procedures
- Functions
- Exception Handling

## 4. Testing
The project includes successful test cases and error test cases to verify the procedures, functions, and database constraints.

## 5. Error Handling
The project demonstrates predefined exceptions, user-defined exceptions, and error handling using `RAISE_APPLICATION_ERROR`.

## 6. Performance
Bulk processing reduces repeated communication between the PL/SQL engine and SQL engine when processing multiple rows.

## 7. Screenshots
Screenshots showing table creation, sample data, procedures, functions, cursors, collections, bulk processing, and test results are saved in the `screenshots` folder.

## 9. Bulk Processing

The project uses BULK COLLECT to retrieve multiple registration IDs into an associative array.

FORALL is used to update multiple registration records in one bulk operation.

SAVE EXCEPTIONS allows valid updates to continue even when some updates fail.

SQL%BULK_EXCEPTIONS identifies the failed operations.

Bulk processing improves performance by reducing communication between the PL/SQL engine and SQL engine compared with processing each row individually.

## 8. Conclusion
This project demonstrates how advanced Oracle PL/SQL concepts can be applied in a Student Registration and Grading System.s