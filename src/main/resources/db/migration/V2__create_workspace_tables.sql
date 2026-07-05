CREATE TYPE workspace_type AS ENUM ('DESK', 'MEETING_ROOM');

CREATE TYPE workspace_status AS ENUM ('AVAILABLE', 'UNDER_MAINTENANCE');

CREATE TABLE workspaces (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type workspace_type NOT NULL,
    status workspace_status NOT NULL,
    capacity INTEGER NOT NULL

);