
CREATE TABLE guests (
    guest_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20)
);

CREATE TABLE rooms (
    room_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL UNIQUE,
    room_type VARCHAR(50) NOT NULL,
    price_per_night NUMERIC(10, 2) NOT NULL CHECK (price_per_night > 0),
    is_available BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE reservations (
    reservation_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    guest_id INTEGER NOT NULL REFERENCES guests(guest_id),
    room_id INTEGER NOT NULL REFERENCES rooms(room_id),
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    total_price NUMERIC(10, 2) NOT NULL CHECK (total_price > 0),
    CHECK (check_out > check_in)
);
