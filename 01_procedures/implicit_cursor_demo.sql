
CREATE OR REPLACE PROCEDURE implicit_cursor_demo
IS
BEGIN
    -- INSERT operation
    INSERT INTO registrations
    VALUES (99, 1, 101, 50);

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'Insert successful. Rows: ' || SQL%ROWCOUNT
        );
    END IF;

    -- UPDATE operation
    UPDATE registrations
    SET marks = marks + 5
    WHERE registration_id = 99;

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'Update successful. Rows: ' || SQL%ROWCOUNT
        );
    END IF;

    -- DELETE operation
    DELETE FROM registrations
    WHERE registration_id = 99;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No row deleted.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'Delete successful. Rows: ' || SQL%ROWCOUNT
        );
    END IF;

    ROLLBACK;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
