
-- INNER JOIN: Display reservations with guest and room details
SELECT
    reservations.reservation_id,
    guests.full_name,
    rooms.room_number,
    rooms.room_type,
    reservations.check_in,
    reservations.check_out,
    reservations.total_price
FROM reservations
INNER JOIN guests
    ON reservations.guest_id = guests.guest_id
INNER JOIN rooms
    ON reservations.room_id = rooms.room_id;

-- GROUP BY: Calculate reservation statistics by room type
SELECT
    rooms.room_type,
    COUNT(reservations.reservation_id) AS total_reservations,
    SUM(reservations.total_price) AS total_revenue,
    AVG(reservations.total_price) AS average_price
FROM reservations
INNER JOIN rooms
    ON reservations.room_id = rooms.room_id
GROUP BY rooms.room_type
ORDER BY total_revenue DESC;
