
# Hotel Booking Database

## 1. Project Overview

This project is a Hotel Booking Database developed using PostgreSQL.

It manages hotel guests, rooms, and reservations through three related tables.

## 2. Database Tables

The database contains three tables:

- **guests:** Stores guest information.
- **rooms:** Stores room details, types, prices, and availability.
- **reservations:** Stores booking information and connects guests with rooms.

## 3. Relationships

- One guest can have multiple reservations.
- One room can appear in multiple reservations over time.
- Each reservation belongs to one guest and one room.

## 4. Constraints

The project uses:

- PRIMARY KEY for unique record identification.
- FOREIGN KEY to connect related tables.
- NOT NULL to require essential values.
- UNIQUE to prevent duplicate emails and room numbers.
- CHECK to validate prices and reservation dates.
- DEFAULT to set room availability automatically.

## 5. SQL Operations

The project demonstrates:

- CRUD: INSERT, SELECT, UPDATE, DELETE.
- INNER JOIN: Combines reservation, guest, and room information.
- GROUP BY: Calculates reservation counts, total revenue, and average prices by room type.
- Pagination: Uses LIMIT and OFFSET to divide reservations into pages.
- Transactions: Demonstrates COMMIT and ROLLBACK.
- Indexing: Creates an index on reservations.guest_id.

## 6. Sample Data

The initial sample dataset contains:

- 5 guests
- 6 rooms
- 8 reservations

A committed transaction adds one additional guest.

## 7. Index Analysis

An index was created on the guest_id column in the reservations table.

EXPLAIN ANALYZE was used to inspect the query execution plan.

PostgreSQL selected a Sequential Scan instead of an Index Scan because the table contains only a small number of rows.

This demonstrates that PostgreSQL's query planner chooses an execution plan based on estimated cost.

## 8. Project Structure

```text
hotel-booking-database/
├── sql/
│   ├── 01_schema.sql
│   ├── 02_sample_data.sql
│   ├── 03_crud.sql
│   ├── 04_joins_group_by.sql
│   ├── 05_pagination.sql
│   ├── 06_transactions.sql
│   └── 07_index_analysis.sql
├── docs/
│   └── AI_USAGE.md
└── README.md
```

## 9. How to Reproduce the Project

1. Create a PostgreSQL database.
2. Execute the SQL files in numerical order.
3. Run the queries in pgAdmin 4 or another PostgreSQL client.

**Important:** Execute the files in order on a new, empty database. Do not rerun the schema or sample-data files on an existing populated database, as this may cause errors or duplicate data.

## 10. Tools

- PostgreSQL
- pgAdmin 4
- Visual Studio Code
- AI assistance for SQL generation, review, and explanation
