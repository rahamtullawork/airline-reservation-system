-- ========================================================
-- AIRLINE RESERVATION SYSTEM - DATABASE SETUP SCRIPT
-- ========================================================

-- 1. Database Creation
CREATE DATABASE IF NOT EXISTS airline_reservation;
USE airline_reservation;

-- ========================================================
-- 2. TABLES CREATION
-- ========================================================

-- Table 1: Airline
CREATE TABLE airline (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100) NOT NULL,
    headquarters VARCHAR(100),
    contact_no VARCHAR(15)
);

-- Table 2: Pilot
CREATE TABLE pilot (
    pilot_id INT PRIMARY KEY,
    pilot_name VARCHAR(100) NOT NULL,
    license_no VARCHAR(50) UNIQUE,
    experience INT,
    phone VARCHAR(15)
);

-- Table 3: Flight
CREATE TABLE flight (
    flight_id INT PRIMARY KEY,
    airline_id INT,
    pilot_id INT,
    source VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    departure_time DATETIME,
    arrival_time DATETIME,
    FOREIGN KEY (airline_id) REFERENCES airline(airline_id),
    FOREIGN KEY (pilot_id) REFERENCES pilot(pilot_id)
);

-- Table 4: Passenger
CREATE TABLE passenger (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    phone VARCHAR(15),
    email VARCHAR(100)
);

-- Table 5: Booking
CREATE TABLE booking (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    ticket_price DECIMAL(10,2),
    booking_status VARCHAR(30),
    FOREIGN KEY (passenger_id) REFERENCES passenger(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

-- Table 6: Seat
CREATE TABLE seat (
    seat_id INT PRIMARY KEY,
    flight_id INT,
    seat_number VARCHAR(10),
    class_type VARCHAR(30),
    availability VARCHAR(20),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

-- Table 7: Payment
CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    booking_id INT UNIQUE,
    payment_mode VARCHAR(30),
    payment_status VARCHAR(30),
    payment_date DATE,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

-- Table 8: Baggage
CREATE TABLE baggage (
    baggage_id INT PRIMARY KEY,
    booking_id INT,
    weight DECIMAL(6,2),
    baggage_fee DECIMAL(10,2),
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);