
-- Insert students
INSERT INTO students (student_id, full_name, email)
VALUES (1, 'Alice Johnson', 'alice@gmail.com');

INSERT INTO students (student_id, full_name, email)
VALUES (2, 'David Smith', 'david@gmail.com');

INSERT INTO students (student_id, full_name, email)
VALUES (3, 'Sarah Brown', 'sarah@gmail.com');

INSERT INTO students (student_id, full_name, email)
VALUES (4, 'John Peter', 'john@gmail.com');

INSERT INTO students (student_id, full_name, email)
VALUES (5, 'Mary Grace', 'mary@gmail.com');


-- Insert courses
INSERT INTO courses (course_id, course_name)
VALUES (101, 'Database Development');

INSERT INTO courses (course_id, course_name)
VALUES (102, 'Computer Programming');

INSERT INTO courses (course_id, course_name)
VALUES (103, 'Operating Systems');

INSERT INTO courses (course_id, course_name)
VALUES (104, 'Probability and Statistics');



-- Insert registrations
INSERT INTO registrations
(registration_id, student_id, course_id, marks)
VALUES (1, 1, 101, 85);

INSERT INTO registrations
(registration_id, student_id, course_id, marks)
VALUES (2, 2, 101, 72);

INSERT INTO registrations
(registration_id, student_id, course_id, marks)
VALUES (3, 3, 102, 91);

INSERT INTO registrations
(registration_id, student_id, course_id, marks)
VALUES (4, 4, 103, 65);

INSERT INTO registrations
(registration_id, student_id, course_id, marks)
VALUES (5, 5, 104, 78);

COMMIT;
