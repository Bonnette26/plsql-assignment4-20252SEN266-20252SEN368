SET SERVEROUTPUT ON;

-- Test 1: Student does not exist
BEGIN
    display_student_record(100);
END;
/

-- Test 2: Invalid marks
BEGIN
    INSERT INTO registrations
    VALUES (6, 1, 101, 150);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Test 3: Function with invalid marks
SELECT calculate_grade(-10) FROM dual;