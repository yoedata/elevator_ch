CREATE DATABASE elevatorData;
use elevatorData;

CREATE TABLE IF NOT EXISTS tblElevatorImport {
    `record_id` NUMERIC,
    `datetime` DATE,
    `capacity` NUMERIC,
    `building id` NUMERIC,
    `number of floors` NUMERIC,
    `elevator id` NUMERIC,
    `full capacity` NUMERIC,
    `remaining capacity` NUMERIC,
    `is vacant` BOOLEAN,
    `is moving` BOOLEAN,
    `is going up` NUMERIC,
    `previous stop floor` NUMERIC,
    `exists request` BOOLEAN,
    `nearest request floor` NUMERIC,
};

INSERT INTO tblElevatorImport VALUES
    ('Elevator1', 23, 12, 8),
    ('Elevator1', 23, 12, 8),
    ('Elevator1', 13, 2, 8),
    ('Elevator1', 23, 12, 8),
    ('Elevator1', 23, 10, 5),
    ('Elevator1', 30, 12, 8);