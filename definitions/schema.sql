CREATE SCHEMA IF NOT EXISTS whoson;

CREATE TABLE IF NOT EXISTS whoson.timezones (
    id           SERIAL,
    display_name VARCHAR(50) NOT NULL, -- Pacific Time - PST
    name         VARCHAR(30) NOT NULL, -- America/Los_Angeles
    code         VARCHAR(6) NOT NULL, -- GMT-8
    acronym      VARCHAR(3) NOT NULL, -- PST
    CONSTRAINT timezones_pk PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS whoson.persons (
    id           SERIAL,
    timezone_id  INTEGER NOT NULL,
    display_name VARCHAR(30) NOT NULL,
    start_time   TIMESTAMP NOT NULL,
    end_time     TIMESTAMP NOT NULL,
    CONSTRAINT person_pk PRIMARY KEY (id),
    CONSTRAINT person_timezone_id_fk FOREIGN KEY (timezone_id) REFERENCES whoson.timezones (id)
);
