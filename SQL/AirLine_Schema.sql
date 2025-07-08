-- -----------------------------------------------------
-- Database: airline_db
-- Purpose : Manage airline operations (flights, passengers, bookings, etc.)
-- Tables  : aircrafts, airports, flights, passengers, bookings, crew_members
-- -----------------------------------------------------

-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS airline_db;

-- Step 2: Use the database
USE airline_db;

-- -----------------------------------------------------
-- Table 1: aircrafts
-- Description: Stores information about the aircraft fleet
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS aircrafts (
    aircraft_id INT PRIMARY KEY,
    model VARCHAR(50),
    manufacturer VARCHAR(50),
    total_seats INT,
    range_km INT
);

-- -----------------------------------------------------
-- Table 2: airports
-- Description: Stores information about airports (departure and arrival)
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    iata_code CHAR(3) -- e.g., JFK, LAX
);

-- -----------------------------------------------------
-- Table 3: flights
-- Description: Stores flight schedule and related information
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10) UNIQUE,
    aircraft_id INT,
    departure_airport_id INT,
    arrival_airport_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    status VARCHAR(20), -- e.g., Scheduled, Cancelled, Delayed

    FOREIGN KEY (aircraft_id) REFERENCES aircrafts(aircraft_id),
    FOREIGN KEY (departure_airport_id) REFERENCES airports(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES airports(airport_id)
);

-- -----------------------------------------------------
-- Table 4: passengers
-- Description: Stores basic passenger details
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    passport_number VARCHAR(20) UNIQUE
);

-- -----------------------------------------------------
-- Table 5: bookings
-- Description: Stores ticket bookings made by passengers
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    seat_number VARCHAR(5),
    booking_date DATE,
    travel_class VARCHAR(20), -- Economy, Business, First
    status VARCHAR(20),       -- Confirmed, Cancelled, Checked-in

    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

-- -----------------------------------------------------
-- Table 6: crew_members
-- Description: Stores information about crew members assigned to flights
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS crew_members (
    crew_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    role VARCHAR(30), -- e.g., Pilot, Co-Pilot, Flight Attendant
    flight_id INT,
    assigned_date DATE,

    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

