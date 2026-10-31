CREATE OR REPLACE PROCEDURE display_students_cursor
IS
    CURSOR c_students IS
        SELECT
            s.student_id,
            s.full_name,
            c.course_name,
            r.marks
        FROM students s
        JOIN registrations r
            ON s.student_id = r.student_id
        JOIN courses c
            ON r.course_id = c.course_id;

    v_student c_students%ROWTYPE;

BEGIN
    OPEN c_students;

    LOOP
        FETCH c_students INTO v_student;

        EXIT WHEN c_students%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Student: ' || v_student.full_name);
        DBMS_OUTPUT.PUT_LINE('Course: ' || v_student.course_name);
        DBMS_OUTPUT.PUT_LINE('Marks: ' || v_student.marks);
        DBMS_OUTPUT.PUT_LINE('Grade: ' || calculate_grade(v_student.marks));
        DBMS_OUTPUT.PUT_LINE('----------------------');
    END LOOP;

    CLOSE c_students;

EXCEPTION
    WHEN OTHERS THEN
        IF c_students%ISOPEN THEN
            CLOSE c_students;
        END IF;

        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/