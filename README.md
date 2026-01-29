# pharmacy-claims-data-warehouse
Star-schema pharmacy claims data warehouse built in SQL, including ERD and relational constraints (PK/FK) for analytics.

# Pharmacy Claims Data Warehouse (SQL Project)

## Overview
This project focuses on the design and implementation of a **Pharmacy Claims Data Warehouse** using **SQL**. The objective is to model real-world healthcare claims data in a structured format that supports **analytics, reporting, and decision-making**.

The database is designed using a **star schema**, enabling efficient querying across multiple business dimensions such as patients, drugs, pharmacies, prescribers, and time.

---

## Project Objectives
- Design an analytically efficient **data warehouse schema**
- Implement **fact and dimension tables** with primary and foreign key constraints
- Translate business requirements into a relational database model
- Support analytical use cases and reporting needs

---

## Data Model
- **Schema Type:** Star Schema  
- **Fact Table:** Pharmacy Claims  
- **Dimension Tables:**
  - Patient
  - Drug
  - Pharmacy
  - Prescriber
  - Time

The **Entity Relationship Diagram (ERD)** illustrates table relationships, keys, and cardinality.

---

## Repository Structure
