-- -----------------------------------------------------
-- INSERT DATA INTO aircrafts (20 rows)
-- -----------------------------------------------------
INSERT INTO aircrafts (aircraft_id, model, manufacturer, total_seats, range_km) VALUES
(1, 'A320', 'Airbus', 180, 6150),
(2, 'B737', 'Boeing', 160, 5600),
(3, 'A350', 'Airbus', 300, 15000),
(4, 'B777', 'Boeing', 350, 15600),
(5, 'E190', 'Embraer', 100, 4500),
(6, 'A320', 'Airbus', 186, 6200),
(7, 'B737', 'Boeing', 170, 5750),
(8, 'A350', 'Airbus', 310, 14900),
(9, 'B777', 'Boeing', 340, 15500),
(10, 'E190', 'Embraer', 98, 4300),
(11, 'A320', 'Airbus', 182, 6100),
(12, 'B737', 'Boeing', 165, 5650),
(13, 'A350', 'Airbus', 305, 15100),
(14, 'B777', 'Boeing', 345, 15400),
(15, 'E190', 'Embraer', 102, 4400),
(16, 'A320', 'Airbus', 178, 6250),
(17, 'B737', 'Boeing', 168, 5700),
(18, 'A350', 'Airbus', 315, 14850),
(19, 'B777', 'Boeing', 355, 15700),
(20, 'E190', 'Embraer', 99, 4350);

-- -----------------------------------------------------
-- INSERT DATA INTO airports (20 rows)
-- -----------------------------------------------------
INSERT INTO airports (airport_id, airport_name, city, country, iata_code) VALUES
(1, 'JFK International', 'New York', 'USA', 'JFK'),
(2, 'LHR International', 'London', 'UK', 'LHR'),
(3, 'HND International', 'Tokyo', 'Japan', 'HND'),
(4, 'CDG International', 'Paris', 'France', 'CDG'),
(5, 'DXB International', 'Dubai', 'UAE', 'DXB'),
(6, 'SYD International', 'Sydney', 'Australia', 'SYD'),
(7, 'YYZ International', 'Toronto', 'Canada', 'YYZ'),
(8, 'FRA International', 'Frankfurt', 'Germany', 'FRA'),
(9, 'SIN International', 'Singapore', 'Singapore', 'SIN'),
(10, 'DEL International', 'Delhi', 'India', 'DEL'),
(11, 'AMS International', 'Amsterdam', 'Netherlands', 'AMS'),
(12, 'GRU International', 'Sao Paulo', 'Brazil', 'GRU'),
(13, 'JNB International', 'Johannesburg', 'South Africa', 'JNB'),
(14, 'ICN International', 'Seoul', 'South Korea', 'ICN'),
(15, 'MEX International', 'Mexico City', 'Mexico', 'MEX'),
(16, 'BOM International', 'Mumbai', 'India', 'BOM'),
(17, 'BKK International', 'Bangkok', 'Thailand', 'BKK'),
(18, 'MAD International', 'Madrid', 'Spain', 'MAD'),
(19, 'ZRH International', 'Zurich', 'Switzerland', 'ZRH'),
(20, 'SFO International', 'San Francisco', 'USA', 'SFO');

-- -----------------------------------------------------
-- INSERT DATA INTO passengers (20 rows)
-- -----------------------------------------------------
INSERT INTO passengers (passenger_id, first_name, last_name, email, phone, passport_number) VALUES
(1, 'Ali', 'Khan', 'ali.khan@example.com', '03001234567', 'PAK12345'),
(2, 'Sara', 'Ahmed', 'sara.ahmed@example.com', '03111234567', 'PAK12346'),
(3, 'John', 'Doe', 'john.doe@example.com', '03211234567', 'USA78901'),
(4, 'Emma', 'Stone', 'emma.stone@example.com', '03331234567', 'UK32122'),
(5, 'Yuki', 'Tanaka', 'yuki.t@example.com', '03451234567', 'JP98765'),
(6, 'Pierre', 'Dupont', 'p.dupont@example.com', '03561234567', 'FR45678'),
(7, 'Fatima', 'Ali', 'fatima.ali@example.com', '03671234567', 'PAK12347'),
(8, 'Mike', 'Smith', 'mike.smith@example.com', '03781234567', 'USA78902'),
(9, 'Linda', 'Lee', 'linda.lee@example.com', '03891234567', 'CN55555'),
(10, 'Carlos', 'Garcia', 'carlos.g@example.com', '03991234567', 'MX44444'),
(11, 'Amir', 'Hassan', 'amir.h@example.com', '03011234567', 'PAK12348'),
(12, 'Leila', 'Zahid', 'leila.z@example.com', '03121234567', 'PAK12349'),
(13, 'David', 'Clark', 'david.c@example.com', '03231234567', 'USA78903'),
(14, 'Sophia', 'Brown', 'sophia.b@example.com', '03341234567', 'UK32123'),
(15, 'Chen', 'Wei', 'chen.wei@example.com', '03451234568', 'CN55556'),
(16, 'Olga', 'Ivanova', 'olga.i@example.com', '03561234568', 'RU77777'),
(17, 'Noura', 'Fahad', 'noura.f@example.com', '03671234568', 'SA33333'),
(18, 'Mohamed', 'Ali', 'mohamed.ali@example.com', '03781234568', 'EG11111'),
(19, 'Julia', 'Meier', 'julia.m@example.com', '03891234568', 'DE66666'),
(20, 'Jacob', 'Hill', 'jacob.h@example.com', '03991234568', 'USA78904');

-- -----------------------------------------------------
-- INSERT DATA INTO flights (20 rows)
-- -----------------------------------------------------
INSERT INTO flights (flight_id, flight_number, aircraft_id, departure_airport_id, arrival_airport_id, departure_time, arrival_time, status) VALUES
(1, 'FL001', 1, 1, 2, '2025-07-10 08:00:00', '2025-07-10 16:00:00', 'Scheduled'),
(2, 'FL002', 2, 3, 4, '2025-07-11 09:30:00', '2025-07-11 14:00:00', 'Scheduled'),
(3, 'FL003', 3, 5, 6, '2025-07-12 22:00:00', '2025-07-13 06:00:00', 'Delayed'),
(4, 'FL004', 4, 7, 8, '2025-07-13 06:00:00', '2025-07-13 12:00:00', 'Cancelled'),
(5, 'FL005', 5, 2, 1, '2025-07-14 14:00:00', '2025-07-14 22:00:00', 'Scheduled'),
(6, 'FL006', 6, 10, 11, '2025-07-15 07:30:00', '2025-07-15 11:30:00', 'Scheduled'),
(7, 'FL007', 7, 12, 13, '2025-07-16 18:00:00', '2025-07-17 02:00:00', 'Delayed'),
(8, 'FL008', 8, 14, 15, '2025-07-17 23:30:00', '2025-07-18 07:00:00', 'Scheduled'),
(9, 'FL009', 9, 16, 17, '2025-07-18 10:00:00', '2025-07-18 14:30:00', 'Scheduled'),
(10, 'FL010', 10, 18, 19, '2025-07-19 16:00:00', '2025-07-20 00:00:00', 'Scheduled'),
(11, 'FL011', 11, 20, 1, '2025-07-20 12:00:00', '2025-07-21 06:00:00', 'Scheduled'),
(12, 'FL012', 12, 4, 3, '2025-07-21 05:30:00', '2025-07-21 14:00:00', 'Cancelled'),
(13, 'FL013', 13, 6, 5, '2025-07-22 13:00:00', '2025-07-22 21:00:00', 'Scheduled'),
(14, 'FL014', 14, 8, 7, '2025-07-23 09:45:00', '2025-07-23 17:30:00', 'Scheduled'),
(15, 'FL015', 15, 9, 10, '2025-07-24 08:30:00', '2025-07-24 15:00:00', 'Scheduled'),
(16, 'FL016', 16, 11, 12, '2025-07-25 07:15:00', '2025-07-25 12:30:00', 'Delayed'),
(17, 'FL017', 17, 13, 14, '2025-07-26 16:45:00', '2025-07-27 02:00:00', 'Scheduled'),
(18, 'FL018', 18, 15, 16, '2025-07-27 14:20:00', '2025-07-28 01:00:00', 'Scheduled'),
(19, 'FL019', 19, 17, 18, '2025-07-28 11:00:00', '2025-07-28 17:45:00', 'Scheduled'),
(20, 'FL020', 20, 19, 20, '2025-07-29 22:00:00', '2025-07-30 08:00:00', 'Delayed');

-- -----------------------------------------------------
-- INSERT DATA INTO bookings (20 rows)
-- -----------------------------------------------------
INSERT INTO bookings (booking_id, passenger_id, flight_id, seat_number, booking_date, travel_class, status) VALUES
(1, 1, 1, '12A', '2025-07-01', 'Economy', 'Confirmed'),
(2, 2, 2, '14B', '2025-07-02', 'Business', 'Confirmed'),
(3, 3, 3, '18C', '2025-07-03', 'First', 'Checked-in'),
(4, 4, 4, '10D', '2025-07-04', 'Economy', 'Cancelled'),
(5, 5, 5, '15E', '2025-07-05', 'Business', 'Confirmed'),
(6, 6, 6, '8F', '2025-07-06', 'Economy', 'Confirmed'),
(7, 7, 7, '9A', '2025-07-07', 'First', 'Checked-in'),
(8, 8, 8, '6B', '2025-07-08', 'Economy', 'Confirmed'),
(9, 9, 9, '13C', '2025-07-09', 'Business', 'Cancelled'),
(10, 10, 10, '11D', '2025-07-10', 'Economy', 'Confirmed'),
(11, 11, 11, '17E', '2025-07-11', 'Economy', 'Confirmed'),
(12, 12, 12, '5F', '2025-07-12', 'First', 'Confirmed'),
(13, 13, 13, '4A', '2025-07-13', 'Business', 'Cancelled'),
(14, 14, 14, '3B', '2025-07-14', 'Economy', 'Checked-in'),
(15, 15, 15, '2C', '2025-07-15', 'Business', 'Confirmed'),
(16, 16, 16, '1D', '2025-07-16', 'First', 'Checked-in'),
(17, 17, 17, '16E', '2025-07-17', 'Economy', 'Confirmed'),
(18, 18, 18, '7F', '2025-07-18', 'First', 'Cancelled'),
(19, 19, 19, '19A', '2025-07-19', 'Business', 'Confirmed'),
(20, 20, 20, '20B', '2025-07-20', 'Economy', 'Checked-in');

-- -----------------------------------------------------
-- INSERT DATA INTO crew_members (20 rows)
-- -----------------------------------------------------
INSERT INTO crew_members (crew_id, full_name, role, flight_id, assigned_date) VALUES
(1, 'Adeel Raza', 'Pilot', 1, '2025-07-01'),
(2, 'Sana Qureshi', 'Co-Pilot', 1, '2025-07-01'),
(3, 'Usman Shah', 'Attendant', 1, '2025-07-01'),
(4, 'Maria Khan', 'Pilot', 2, '2025-07-02'),
(5, 'Zahid Malik', 'Co-Pilot', 2, '2025-07-02'),
(6, 'Ayesha Zafar', 'Attendant', 2, '2025-07-02'),
(7, 'Bilal Ahmad', 'Pilot', 3, '2025-07-03'),
(8, 'Hira Naveed', 'Co-Pilot', 3, '2025-07-03'),
(9, 'Tariq Javed', 'Attendant', 3, '2025-07-03'),
(10, 'Nadia Noor', 'Pilot', 4, '2025-07-04'),
(11, 'Hassan Rauf', 'Co-Pilot', 4, '2025-07-04'),
(12, 'Aliya Rizvi', 'Attendant', 4, '2025-07-04'),
(13, 'Hamza Saeed', 'Pilot', 5, '2025-07-05'),
(14, 'Mehwish Latif', 'Co-Pilot', 5, '2025-07-05'),
(15, 'Rashid Qamar', 'Attendant', 5, '2025-07-05'),
(16, 'Sadia Anwar', 'Pilot', 6, '2025-07-06'),
(17, 'Fahad Sheikh', 'Co-Pilot', 6, '2025-07-06'),
(18, 'Lubna Shahid', 'Attendant', 6, '2025-07-06'),
(19, 'Zainab Iqbal', 'Pilot', 7, '2025-07-07'),
(20, 'Rizwan Ali', 'Co-Pilot', 7, '2025-07-07');
