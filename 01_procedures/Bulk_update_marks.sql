CREATE OR REPLACE PROCEDURE bulk_update_marks
(
    p_increment IN NUMBER
)
IS
    TYPE t_registration_ids IS TABLE OF
        registrations.registration_id%TYPE
        INDEX BY PLS_INTEGER;

    v_registration_ids t_registration_ids;

    e_bulk_errors EXCEPTION;
    PRAGMA EXCEPTION_INIT(e_bulk_errors, -24381);

BEGIN
    -- Retrieve multiple registration IDs
    SELECT registration_id
    BULK COLLECT INTO v_registration_ids
    FROM registrations;

    -- Update multiple records
    FORALL i IN 1..v_registration_ids.COUNT SAVE EXCEPTIONS
        UPDATE registrations
        SET marks = marks + p_increment
        WHERE registration_id = v_registration_ids(i);

    DBMS_OUTPUT.PUT_LINE(
        'Rows updated: ' || SQL%ROWCOUNT
    );

EXCEPTION
    WHEN e_bulk_errors THEN
        DBMS_OUTPUT.PUT_LINE('Some updates failed.');

        DBMS_OUTPUT.PUT_LINE(
            'Successful rows: ' || SQL%ROWCOUNT
        );

        FOR i IN 1..SQL%BULK_EXCEPTIONS.COUNT
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                'Error at collection index: ' ||
                SQL%BULK_EXCEPTIONS(i).ERROR_INDEX
            );

            DBMS_OUTPUT.PUT_LINE(
                'Error: ' ||
                SQLERRM(-SQL%BULK_EXCEPTIONS(i).ERROR_CODE)
            );
        END LOOP;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/