
-- ROLLBACK: Insert a temporary guest, then undo the transaction
BEGIN;

INSERT INTO guests (full_name, email, phone)
VALUES ('Temporary Guest', 'temporary@example.com', '0559999999');

-- Verify the inserted record before rollback
SELECT *
FROM guests
WHERE email = 'temporary@example.com';

ROLLBACK;

-- Verify that the record no longer exists
SELECT *
FROM guests
WHERE email = 'temporary@example.com';


-- COMMIT: Insert a guest and permanently save the transaction
BEGIN;

INSERT INTO guests (full_name, email, phone)
VALUES ('Committed Guest', 'committed@example.com', '0558888888');

COMMIT;

-- Verify that the committed record exists
SELECT *
FROM guests
WHERE email = 'committed@example.com';
