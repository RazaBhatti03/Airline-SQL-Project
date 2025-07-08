-- ============================================
--  50 Beginner–Intermediate SQL Queries
-- For Airline Database Project
-- ============================================

-- ===============================
--  Flights & Aircrafts
-- ===============================

-- 1. List all flights with their aircraft model
SELECT f.flight_number, a.model
FROM flights f
JOIN aircrafts a ON f.aircraft_id = a.aircraft_id;

-- 2. Show all scheduled flights
SELECT flight_number, departure_time, arrival_time
FROM flights
WHERE status = 'Scheduled';

-- 3. Find all flights that are delayed
SELECT flight_number, departure_time
FROM flights
WHERE status = 'Delayed';

-- 4. Count total number of flights per status
SELECT status, COUNT(*) AS total
FROM flights
GROUP BY status;

-- 5. List unique aircraft models used in flights
SELECT DISTINCT a.model
FROM flights f
JOIN aircrafts a ON f.aircraft_id = a.aircraft_id;

-- 6. Find the aircraft with the highest seating capacity
SELECT * FROM aircrafts
ORDER BY total_seats DESC
LIMIT 1;

-- 7. Show flight numbers and corresponding aircraft range
SELECT f.flight_number, a.range_km
FROM flights f
JOIN aircrafts a ON f.aircraft_id = a.aircraft_id;

-- 8. List all flights with departure and arrival airport codes
SELECT f.flight_number, d.iata_code AS departure, a.iata_code AS arrival
FROM flights f
JOIN airports d ON f.departure_airport_id = d.airport_id
JOIN airports a ON f.arrival_airport_id = a.airport_id;

-- 9. Count number of flights departing from each airport
SELECT d.airport_name, COUNT(*) AS total_departures
FROM flights f
JOIN airports d ON f.departure_airport_id = d.airport_id
GROUP BY d.airport_name;

-- 10. List all flights with same departure and arrival day
SELECT flight_number
FROM flights
WHERE DATE(departure_time) = DATE(arrival_time);

-- ===============================
--  Passengers & Bookings
-- ===============================

-- 11. Show all passengers who booked First class
SELECT DISTINCT p.first_name, p.last_name
FROM passengers p
JOIN bookings b ON p.passenger_id = b.passenger_id
WHERE b.travel_class = 'First';

-- 12. List all bookings with passenger name and flight number
SELECT b.booking_id, p.first_name, f.flight_number
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
JOIN flights f ON b.flight_id = f.flight_id;

-- 13. Count bookings by travel class
SELECT travel_class, COUNT(*) AS total
FROM bookings
GROUP BY travel_class;

-- 14. Find passengers with cancelled bookings
SELECT DISTINCT p.first_name, p.last_name
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
WHERE b.status = 'Cancelled';

-- 15. Total number of bookings per flight
SELECT f.flight_number, COUNT(*) AS total_bookings
FROM bookings b
JOIN flights f ON b.flight_id = f.flight_id
GROUP BY f.flight_number;

-- 16. Show all bookings made on '2025-07-10'
SELECT * FROM bookings
WHERE booking_date = '2025-07-10';

-- 17. Show passenger name, seat number, and travel class
SELECT p.first_name, b.seat_number, b.travel_class
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id;

-- 18. List all passengers with more than one booking
SELECT p.passenger_id, p.first_name, COUNT(*) AS booking_count
FROM bookings b
JOIN passengers p ON b.passenger_id = p.passenger_id
GROUP BY p.passenger_id, p.first_name
HAVING COUNT(*) > 1;

-- 19. Find the latest booking made
SELECT * FROM bookings
ORDER BY booking_date DESC
LIMIT 1;

-- 20. Show bookings grouped by status
SELECT status, COUNT(*) AS total
FROM bookings
GROUP BY status;

-- ===============================
--  Airports & Routes
-- ===============================

-- 21. List all departure cities used in flights
SELECT DISTINCT ap.city
FROM flights f
JOIN airports ap ON f.departure_airport_id = ap.airport_id;

-- 22. List all destination cities used in flights
SELECT DISTINCT ap.city
FROM flights f
JOIN airports ap ON f.arrival_airport_id = ap.airport_id;

-- 23. Count number of flights between each airport pair
SELECT d.city AS from_city, a.city AS to_city, COUNT(*) AS total_flights
FROM flights f
JOIN airports d ON f.departure_airport_id = d.airport_id
JOIN airports a ON f.arrival_airport_id = a.airport_id
GROUP BY d.city, a.city;

-- 24. Find top 3 most common destinations
SELECT a.city, COUNT(*) AS arrivals
FROM flights f
JOIN airports a ON f.arrival_airport_id = a.airport_id
GROUP BY a.city
ORDER BY arrivals DESC
LIMIT 3;

-- 25. Show airports with no outgoing flights
SELECT a.airport_name
FROM airports a
LEFT JOIN flights f ON a.airport_id = f.departure_airport_id
WHERE f.flight_id IS NULL;

-- 26. Show airports with no incoming flights
SELECT a.airport_name
FROM airports a
LEFT JOIN flights f ON a.airport_id = f.arrival_airport_id
WHERE f.flight_id IS NULL;

-- 27. List routes longer than 5 hours
SELECT flight_number, TIMESTAMPDIFF(HOUR, departure_time, arrival_time) AS hours
FROM flights
WHERE TIMESTAMPDIFF(HOUR, departure_time, arrival_time) > 5;

-- 28. Count how many airports are in each country
SELECT country, COUNT(*) AS total_airports
FROM airports
GROUP BY country;

-- 29. List airports with codes starting with 'D'
SELECT * FROM airports
WHERE iata_code LIKE 'D%';

-- 30. Show all unique countries from the airport table
SELECT DISTINCT country
FROM airports;

-- ===============================
-- ️ Crew Members
-- ===============================

-- 31. List all crew members with their assigned flights
SELECT c.full_name, f.flight_number
FROM crew_members c
JOIN flights f ON c.flight_id = f.flight_id;

-- 32. Count number of crew members assigned per flight
SELECT f.flight_number, COUNT(*) AS crew_count
FROM crew_members c
JOIN flights f ON c.flight_id = f.flight_id
GROUP BY f.flight_number;

-- 33. Show all Pilots and their assigned flights
SELECT c.full_name, f.flight_number
FROM crew_members c
JOIN flights f ON c.flight_id = f.flight_id
WHERE c.role = 'Pilot';

-- 34. List crew members assigned on '2025-07-05'
SELECT * FROM crew_members
WHERE assigned_date = '2025-07-05';

-- 35. Find all unique crew roles
SELECT DISTINCT role FROM crew_members;

-- 36. Count crew members per role
SELECT role, COUNT(*) AS total
FROM crew_members
GROUP BY role;

-- 37. List flights with more than 2 crew members
SELECT flight_id, COUNT(*) AS crew_count
FROM crew_members
GROUP BY flight_id
HAVING COUNT(*) > 2;

-- 38. Show all crew assigned to flight FL001
SELECT full_name
FROM crew_members c
JOIN flights f ON c.flight_id = f.flight_id
WHERE f.flight_number = 'FL001';

-- 39. Find latest crew assignment date
SELECT * FROM crew_members
ORDER BY assigned_date DESC
LIMIT 1;

-- 40. List crew assigned between 2025-07-01 and 2025-07-10
SELECT * FROM crew_members
WHERE assigned_date BETWEEN '2025-07-01' AND '2025-07-10';

-- ===============================
--  Aggregations & Filters
-- ===============================

-- 41. Count total passengers
SELECT COUNT(*) FROM passengers;

-- 42. Count total flights
SELECT COUNT(*) FROM flights;

-- 43. Count total bookings
SELECT COUNT(*) FROM bookings;

-- 44. Count total aircrafts
SELECT COUNT(*) FROM aircrafts;

-- 45. Find passengers without bookings
SELECT * FROM passengers
WHERE passenger_id NOT IN (
  SELECT DISTINCT passenger_id FROM bookings
);

-- 46. List aircrafts with range over 10000 km
SELECT * FROM aircrafts
WHERE range_km > 10000;

-- 47. Show flights where arrival is before departure (data error)
SELECT * FROM flights
WHERE arrival_time < departure_time;

-- 48. Total number of countries with airports
SELECT COUNT(DISTINCT country) AS total_countries
FROM airports;

-- 49. List bookings where seat number starts with '1'
SELECT * FROM bookings
WHERE seat_number LIKE '1%';

-- 50. Show aircrafts with model 'A320'
SELECT * FROM aircrafts
WHERE model = 'A320';
