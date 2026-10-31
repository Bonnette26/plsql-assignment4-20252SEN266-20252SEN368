SET SERVEROUTPUT ON;

BEGIN
    FOR student_record IN (
        SELECT
            s.student_id,
            s.full_name,
            c.course_name,
            r.marks
        FROM students s
        JOIN registrations r
            ON s.student_id = r.student_id
        JOIN courses c
            ON r.course_id = c.course_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Student ID: ' || student_record.student_id);
        DBMS_OUTPUT.PUT_LINE('Name: ' || student_record.full_name);
        DBMS_OUTPUT.PUT_LINE('Course: ' || student_record.course_name);
        DBMS_OUTPUT.PUT_LINE('Marks: ' || student_record.marks);
        DBMS_OUTPUT.PUT_LINE('Grade: ' || calculate_grade(student_record.marks));
        DBMS_OUTPUT.PUT_LINE('------------------------');
    END LOOP;
END;
/