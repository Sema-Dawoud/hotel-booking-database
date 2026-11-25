
-- Create an index on guest_id to support guest-based searches
CREATE INDEX idx_reservations_guest_id
ON reservations(guest_id);

-- Analyze the query execution plan and performance
EXPLAIN ANALYZE
SELECT *
FROM reservations
WHERE guest_id = 1;
