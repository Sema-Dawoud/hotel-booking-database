
-- CREATE: Add a temporary test guest
INSERT INTO guests (full_name, email, phone)
VALUES ('Test Guest', 'test@example.com', '0550000000');

-- READ: Retrieve the test guest
SELECT *
FROM guests
WHERE email = 'test@example.com';

-- UPDATE: Change the price of room 101
UPDATE rooms
SET price_per_night = 60.00
WHERE room_number = '101';

-- Verify the updated price
SELECT room_number, price_per_night
FROM rooms
WHERE room_number = '101';

-- DELETE: Remove the temporary test guest
DELETE FROM guests
WHERE email = 'test@example.com';

-- Verify the deletion
SELECT *
FROM guests
WHERE email = 'test@example.com';
