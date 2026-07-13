CREATE TYPE booking_status AS ENUM ('ACTIVE', 'CANCELLED');

CREATE TABLE bookings(
    id BIGSERIAL PRIMARY KEY,
    start_time TIMESTAMP NOT NULL ,
    end_time TIMESTAMP NOT NULL ,
    status booking_status NOT NULL ,
    user BIGSERIAL REFERENCES users(id) NOT NULL,
    workspace BIGSERIAL REFERENCES workspaces(id) NOT NULL
);