CREATE OR REPLACE PROCEDURE display_student_record (
    p_student_id IN NUMBER
)
IS
    -- Define a user-defined record
    TYPE student_record_type IS RECORD (
        student_id NUMBER,
        full_name VARCHAR2(100),
        email VARCHAR2(100)
    );

    -- Declare record variable
    v_student student_record_type;

BEGIN
    -- Retrieve student information
    SELECT student_id, full_name, email
    INTO v_student
    FROM students
    WHERE student_id = p_student_id;

    -- Display student information
    DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student.student_id);
    DBMS_OUTPUT.PUT_LINE('full_Name: ' || v_student.full_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_student.email);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found.');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one student found.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
