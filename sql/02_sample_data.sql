
INSERT INTO guests (full_name, email, phone)
VALUES
('Ahmad Ali', 'ahmad@example.com', '0551234567'),
('Sara Hassan', 'sara@example.com', '0552345678'),
('Omar Khaled', 'omar@example.com', '0553456789'),
('Lina Sami', 'lina@example.com', '0554567890'),
('Maya Adel', 'maya@example.com', '0555678901');

INSERT INTO rooms (room_number, room_type, price_per_night, is_available)
VALUES
('101', 'Single', 50.00, TRUE),
('102', 'Double', 80.00, TRUE),
('103', 'Suite', 150.00, FALSE),
('201', 'Single', 55.00, TRUE),
('202', 'Double', 90.00, FALSE),
('203', 'Suite', 180.00, TRUE);

INSERT INTO reservations
(guest_id, room_id, check_in, check_out, total_price)
VALUES
(1, 1, '2026-12-01', '2026-12-03', 100.00),
(2, 2, '2026-12-05', '2026-12-08', 240.00),
(3, 3, '2026-12-10', '2026-12-12', 300.00),
(4, 4, '2026-12-15', '2026-12-17', 110.00),
(5, 5, '2026-12-20', '2026-12-23', 270.00),
(1, 6, '2026-12-25', '2026-12-27', 360.00),
(2, 1, '2027-01-05', '2027-01-07', 100.00),
(3, 2, '2027-01-10', '2027-01-12', 160.00);
