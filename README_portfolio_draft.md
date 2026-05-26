# Rental Property Management Database

This is a small portfolio project showcasing a relational database design for a rental property management scenario. It is a learning-focused SQL exercise built with synthetic data and a modest analytical query set.

## What this project is about

The goal was to design a clean, normalized schema for a property management business and demonstrate how basic data engineering practices can make the model easier to maintain and analyze.

This project shows:
- a structured approach to modeling rental and tenant data,
- the use of database constraints to enforce data quality,
- simple analytical queries to answer business-style questions,
- supporting documentation that explains the design and testing.

## Why this is a useful showcase

As a junior data practitioner, I’m highlighting the way I approached the problem rather than claiming advanced production-ready engineering.

Key points:
- I started from a business idea and mapped entities such as properties, apartments, tenants, leases, and payments.
- I focused on normalization and relationships to reduce redundancy.
- I used constraints to capture rules like valid rental amounts and consistent foreign keys.
- I documented assumptions and validation with diagrams and test notes.

## Project structure

The repository is organized into SQL scripts that were developed in a logical order:

- `src/01_schema_ddl.sql` — create tables and main schema definitions
- `src/02_constraints.sql` — add keys, indexes, and integrity constraints
- `src/03_seed_data_dml.sql` — insert synthetic sample data for testing and exploration
- `src/04_analytical_queries.sql` — example queries for basic business reporting
- `src/99_teardown.sql` — cleanup script to drop tables when needed

Documentation and design artifacts are stored in `docs/`:

- `docs/schema_design.pdf` — explanation of entity relationships and design choices
- `docs/testing_validation.pdf` — summary of validation checks and outcomes
- `docs/ER_diagram.jpg` — entity-relationship diagram for the schema

## Technical focus

This project is primarily about relational data modeling and disciplined database design.

What I demonstrated:
- SQL schema development using DDL
- Data governance through primary/foreign keys and column constraints
- Simple data population with synthetic data designed to cover key scenarios
- Analytical query writing for common rental business questions
- Documenting design decisions and validation results

## Skills and learning highlights

- Translating a domain problem into a relational model
- Applying normalization principles to reduce data duplication
- Using constraints to make data structure more robust
- Writing queries that support basic reporting needs
- Creating documentation to explain the design and testing process

## Notes for reviewers

This repo is intentionally limited in scope. It is not a large production system; instead, it is a compact example of how I think about data structure and integrity.

The data is synthetic, and the query set is intentionally simple. The emphasis is on clarity of model, correctness of constraints, and the thought process behind the design.

---

If you want, I can also provide a shorter README version with bullet-focused sections for a resume-like project summary.