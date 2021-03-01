CREATE TABLE assignments (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    content VARCHAR,
    day Date,
    chapter VARCHAR,
    duration Time
);

CREATE TABLE assignment_submission (
    id SERIAL PRIMARY KEY NOT NULL,
    assignment_id VARCHAR(255) NOT NULL,
    content VARCHAR,
    day Date,
    chapter VARCHAR,
    duration Time
);