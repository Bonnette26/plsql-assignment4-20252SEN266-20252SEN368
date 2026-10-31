CREATE OR REPLACE FUNCTION calculate_grade
(
    p_marks IN NUMBER
)
RETURN VARCHAR2
IS
    v_grade VARCHAR2(2);

BEGIN
    IF p_marks >= 80 THEN
        v_grade := 'A';
    ELSIF p_marks >= 70 THEN
        v_grade := 'B';
    ELSIF p_marks >= 60 THEN
        v_grade := 'C';
    ELSIF p_marks >= 50 THEN
        v_grade := 'D';
    ELSE
        v_grade := 'F';
    END IF;

    RETURN v_grade;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error';
END;
/