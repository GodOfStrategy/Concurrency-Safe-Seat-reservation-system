CREATE TABLE seats (
    seat_id SERIAL PRIMARY KEY,
    seat_number VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,
    seat_id INT NOT NULL,
    user_id INT NOT NULL,

    status VARCHAR(20) NOT NULL,

    locked_until TIMESTAMP,
    created_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_seat
        FOREIGN KEY (seat_id)
        REFERENCES seats(seat_id)
);
