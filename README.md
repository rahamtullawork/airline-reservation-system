# ✈️ Airline Reservation System

A **MySQL-based Airline Reservation System** designed to manage and analyze core airline operations such as flights, airlines, pilots, passengers, bookings, seats, payments, and baggage.

The project demonstrates the practical implementation of **relational database design, ER modeling, SQL queries, constraints, joins, aggregations, and data analysis**.

---

## 📌 Project Overview

The Airline Reservation System provides a structured relational database for managing airline reservation data.

The system maintains relationships between airlines, flights, pilots, passengers, bookings, seats, payments, and baggage. It also supports analytical SQL queries for extracting meaningful information such as ticket revenue, passenger bookings, costly tickets, baggage fees, and flight statistics.

The project was developed as a **database management project using MySQL**.

---

## 🎯 Objectives

- Design a normalized relational database for an airline reservation system.
- Establish relationships between different airline entities.
- Implement primary keys, foreign keys, unique constraints, and other data constraints.
- Populate the database with realistic sample data.
- Write SQL queries using joins, grouping, aggregation, filtering, and sorting.
- Generate useful insights from airline reservation data.
- Practice real-world database design and SQL problem solving.

---

## 🗂️ Database Entities

The system consists of **8 core tables**:

| Table | Description |
|---|---|
| `airline` | Stores airline company information |
| `flight` | Stores flight schedules, routes, and pricing information |
| `pilot` | Stores pilot details and flight assignments |
| `passenger` | Stores passenger information |
| `booking` | Stores passenger flight booking details |
| `seat` | Stores seat allocation and class information |
| `payment` | Stores payment transactions and payment status |
| `baggage` | Stores baggage details and applicable baggage fees |

---

## 🔗 Database Relationships

The major relationships in the database are:

```text
Airline       1 ─────── M  Flight
Pilot         1 ─────── M  Flight
Passenger     1 ─────── M  Booking
Flight        1 ─────── M  Booking
Flight        1 ─────── M  Seat
Booking       1 ─────── 1  Payment
Booking       1 ─────── M  Baggage
```

### Relationship Details

- One **Airline** can operate multiple **Flights**.
- One **Pilot** can be assigned to multiple **Flights**.
- One **Passenger** can have multiple **Bookings**.
- One **Flight** can have multiple **Bookings**.
- One **Flight** can contain multiple **Seats**.
- One **Booking** is associated with one **Payment**.
- One **Booking** can have multiple **Baggage** records.

---

<!-- ## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **MySQL** | Database Management System |
| **SQL** | Database creation, manipulation, and querying |
| **MySQL Workbench** | Database development and visualization |
| **ER Diagram** | Database modeling and relationship design |
| **Git & GitHub** | Version control and project hosting | -->

### SQL Concepts Used

- DDL – Data Definition Language
- DML – Data Manipulation Language
- Primary Keys
- Foreign Keys
- Unique Constraints
- Joins
- Aggregate Functions
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- Subqueries
- Filtering with `WHERE`
- Data analysis and reporting

---

## 📊 Key SQL Queries & Analysis

The project includes SQL queries for answering practical airline business questions, including:

### Passenger & Booking Analysis

- Passenger names with their flight details.
- Booking details along with payment status.
- Passengers who never made a booking.
- Most travelled routes.

### Revenue & Ticket Analysis

- Top 5 costliest tickets.
- Airline generating the highest revenue.
- Flight-wise total ticket revenue.
- Passengers paying baggage fees above ₹2,000.

### Flight & Pilot Analysis

- Pilot flying the maximum number of flights.
- Flight schedules by airline.
- Flight and seat availability analysis.

These queries demonstrate how SQL can be used not only for data retrieval but also for **business-oriented analysis and reporting**.

---

## 🗃️ Project Structure

Repository structure:

```text
airline-reservation-system/
│
├── README.md
│
├── sql/
│   ├── database_setup.sql
│   ├── data_insertion.sql
│   └── queries.sql
│
├── er-diagram/
│   └── airline-er-diagram.jpeg
│
└── documentation/
    └── project-documentation.pdf
```

> The exact file structure may vary depending on the files included in the repository.

---

## ⚙️ Setup & Installation

### Prerequisites

Before running the project, make sure you have:

- **MySQL Server**
- **MySQL Workbench** or another MySQL-compatible client
- **Git** (if cloning the repository)

---

### 1. Clone the Repository

```bash
git clone https://github.com/rahamtullawork/airline-reservation-system.git
```

Navigate to the project directory:

```bash
cd airline-reservation-system
```

---


### 2. Create the Database

Open **MySQL Workbench** or the MySQL command-line client and execute the database setup script.

For example:

```sql
CREATE DATABASE airline_reservation;
USE airline_reservation;
```

---

### 3. Create the Tables

Copy the SQL queries from table_creation.sql file and execute them in MySQL or Execute the table creation SQL script:

```sql
SOURCE sql/database_setup.sql;
```

Or open the SQL file in MySQL Workbench and execute it.

---

### 4. Insert Sample Data

Copy the SQL queries from the data_insertion.sql file and execute them in MySQL or Execute the data insertion script:

```sql
SOURCE sql/data_insertion.sql;
```

This populates the database with sample records for airlines, flights, pilots, passengers, bookings, seats, payments, and baggage.

---

### 5. Verify the Database

Run:

```sql
USE airline_reservation;

SHOW TABLES;
```

You should see the project's core tables:

```text
airline
flight
pilot
passenger
booking
seat
payment
baggage
```

---

### 6. Run the SQL Queries

Open:

```text
sql/queries.sql
```

Execute the required queries in MySQL Command Line Client or MySQL Workbench to generate reports and analyze the airline reservation data.

---


## 🧩 ER Diagram

The database was designed using an **Entity-Relationship (ER) model** to clearly represent entities, attributes, primary keys, foreign keys, and relationships.

The major entities are:

```text
Airline
   │
   └───< Flight >─── Pilot
             │
             ├───< Booking >─── Passenger
             │       │
             │       ├─── Payment
             │       │
             │       └───< Baggage
             │
             └───< Seat
```

The complete ER diagram is available in the `er-diagram` directory.

---

## 👥 Team Members & Contributions

| Team Member | Role | Contributions |
|---|---|---|
| **Rahamtulla** | Database Architect & Backend Developer | Designed the ER diagram and overall database schema. Created the `airline`, `pilot`, `flight`, `passenger`, `booking`, `seat`, `payment`, and `baggage` tables. Defined primary keys, foreign keys, and data constraints. Developed and tested SQL queries for data retrieval, analytics, and revenue reporting. |
| **Challa Charan Kumar** | Data Engineer & Documentation | Populated the database with sample data across all tables. Performed data validation and integrity checks. Executed and verified SQL queries and organized query outputs. Prepared project documentation and repository guidelines. |

---

## 📚 Learning Outcomes

Through this project, the team gained practical experience in:

- Relational database design
- ER diagram creation
- Database normalization
- Primary and foreign key relationships
- SQL DDL and DML commands
- Complex SQL joins
- Aggregate functions and grouping
- Data validation and integrity
- Business-oriented data analysis
- Git and GitHub project management

---
