
CREATE OR REPLACE PROCEDURE validate_student_marks
(
    p_marks IN NUMBER
)
IS
    e_invalid_marks EXCEPTION;

BEGIN
    IF p_marks < 0 OR p_marks > 100 THEN
        RAISE e_invalid_marks;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Valid marks: ' || p_marks);

EXCEPTION
    WHEN e_invalid_marks THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Marks must be between 0 and 100.'
        );
END;
/
