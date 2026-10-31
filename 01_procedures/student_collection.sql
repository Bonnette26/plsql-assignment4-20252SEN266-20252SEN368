CREATE OR REPLACE PROCEDURE display_student_collection
IS
    TYPE student_array IS TABLE OF VARCHAR2(100)
        INDEX BY PLS_INTEGER;

    v_students student_array;
    v_index PLS_INTEGER := 0;

BEGIN
    FOR student_record IN (
        SELECT full_name
        FROM students
        ORDER BY student_id
    )
    LOOP
        v_index := v_index + 1;
        v_students(v_index) := student_record.full_name;
    END LOOP;

    FOR i IN 1..v_index
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Student ' || i || ': ' || v_students(i)
        );
    END LOOP;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/