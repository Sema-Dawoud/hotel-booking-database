
-- Page 1: First 3 reservations
SELECT *
FROM reservations
ORDER BY reservation_id
LIMIT 3 OFFSET 0;

-- Page 2: Next 3 reservations
SELECT *
FROM reservations
ORDER BY reservation_id
LIMIT 3 OFFSET 3;

-- Page 3: Remaining reservations
SELECT *
FROM reservations
ORDER BY reservation_id
LIMIT 3 OFFSET 6;
