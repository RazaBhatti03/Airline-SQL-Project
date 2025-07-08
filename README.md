#  Airline Database SQL Project

This is a **practice-based SQL project** built for learning database design and SQL querying using **MySQL**. It simulates a real-world airline reservation system and contains six connected tables: aircrafts, airports, flights, passengers, bookings, and crew_members. The project is focused on beginner to intermediate level learners who want to improve their skills in writing queries and understanding relational databases.

##  Project Structure

Airline-SQL-Project/
├── AirLineSchema.sql         → Contains the SQL code to create 6 airline-related tables  
├── insert_airline_data.sql    → Contains 20 manually inserted rows for each table (120 total)  
├── AirLine_data_Analysis.sql     → Contains 50 beginner-to-intermediate practice queries  
└── README.md                  → Project documentation

##  Learning Objectives

- Learn to design a relational database schema from scratch  
- Understand relationships between real-world entities like flights, aircraft, passengers, and bookings  
- Practice SQL commands like SELECT, JOIN, GROUP BY, ORDER BY, WHERE, COUNT, etc.  
- Strengthen SQL logic through real-world inspired airline case studies  
- Prepare for internships or job interviews requiring SQL skills

##  Database Tables Overview

- `aircrafts`: Stores details of aircrafts including model, seating capacity, and range  
- `airports`: Stores information about airports including IATA code, city, and country  
- `flights`: Contains scheduled flights, linking aircrafts and airports with departure/arrival data  
- `passengers`: Basic details of passengers who travel on flights  
- `bookings`: Booking info of passengers including seat number, class, and status  
- `crew_members`: Staff assigned to specific flights (pilot, co-pilot, attendants, etc.)

##  Query File Overview

The `AirLine_data_Analysis.sql` file contains 50 carefully selected SQL queries divided across 5 learning categories:

1. Flights & Aircrafts  
2. Passengers & Bookings  
3. Airports & Routes  
4. Crew Members  
5. Aggregations & Filters  

Each query is beginner to intermediate level and is fully commented to help understand the logic. You will work on real-world tasks like finding delayed flights, counting bookings by class, showing pilot assignments, and identifying unused airports.

##  Tools Used
- MySQL Workbench or any SQL client
- SQL (DDL - Data Definition Language, DML - Data Manipulation Language, DQL - Data Query Language)
- .sql scripting for schema creation, data insertion, and analysis

## Use Case
This project is suitable for:
- Students learning databases
- Interview preparation
- Academic portfolio or GitHub projects
- SQL practice with realistic, connected data
- Personal improvement in query writing

## How to Run the Project
Open MySQL Workbench (or your preferred SQL IDE)
1. Run schema_airline.sql to create all 6 tables
2. Run insert_airline_data.sql to insert 20 rows per table
3. Run airline_queries_50.sql to start practicing queries and analyzing data

## Future Suggestions
- Add stored procedures and triggers
- Create views for frequently used queries
- Extend the dataset with additional tables like payments, tickets, or delays
- Add ERD (Entity Relationship Diagram) using drawSQL or dbdiagram.io

##  Author
Created with ❤️ by Raza Ur Rahman
If you find this project helpful, feel free to ⭐️ the GitHub repository and use it for practice or learning.
