
-- =====================================
-- STUDENT REGISTRATION AND GRADING SYSTEM
-- Assignment IV
-- =====================================

-- 1. Create STUDENTS table
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE
);

-- 2. Create COURSES table
CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100) NOT NULL
);

-- 3. Create REGISTRATIONS table
CREATE TABLE registrations (
    registration_id NUMBER PRIMARY KEY,
    student_id NUMBER NOT NULL,
    course_id NUMBER NOT NULL,
    marks NUMBER(5,2),

    CONSTRAINT fk_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),

    CONSTRAINT chk_marks
        CHECK (marks BETWEEN 0 AND 100)
);
