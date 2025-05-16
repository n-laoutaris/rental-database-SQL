# Apartment Rental Database (Oracle SQL)

This repository contains the design, implementation, and testing of an apartment rental relational database system. It simulates a property rental service, covering aspects such as apartment listings, owner details, and tenant interactions. It supports key operations like listing available apartments, querying ownership details, and tracking rentals.

![ER Diagram](/images/ER.jpg)

## Project Context

This was a group project developed for the Advanced Database Systems course in the Data Science MSc program at International Hellenic University.

## Project Files

| File Name         | Description                                         |
|-------------------|-----------------------------------------------------|
| `create.sql`      | Script to create all required tables                |
| `insert.sql`      | Script to populate the tables with test data        |
| `constraint.sql`  | Script to add primary and foreign key constraints   |
| `query.sql`       | Tested queries demonstrating database functionality |
| `drop.sql`        | Script to drop all tables and clean up              |

Additionally, the following PDF documents are included in the `docs/` folder:
- `test_plan.pdf`: A document outlining test cases and expected/actual outcomes used to validate the database.
- `table_specifications.pdf`: A detailed breakdown of all table structures, relationships, and design decisions.

## Technologies Used
- Oracle SQL
- SQL*Plus
- ER modeling

## Features
- Relational model with normalization
- Referential integrity with foreign keys
- Verified with a comprehensive test plan
- Functional queries for real-world scenarios
