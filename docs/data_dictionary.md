# Database Data Dictionary

This document outlines the schema, datatypes and governance constraints for the relational database.

### Table: `Owners`
*Stores personal and contact information for property owners.*

| Column Name | Data Type | Key | Required | Rules & Constraints | Description |
| :--- | :--- | :---: | :---: | :--- | :--- |
| `tin` | `VARCHAR2(9)` | **PK** | Yes | 9-digit Regex (`^[0-9]{9}$`) | Tax Identification Number. |
| `name` | `VARCHAR2(35)` | - | Yes | `UPPER()` enforced | First name. |
| `surname` | `VARCHAR2(35)` | - | Yes | `UPPER()` enforced | Last name. |
| `gender` | `CHAR(1)` | - | No | `IN ('M', 'F', 'O')` | Gender identifier. |
| `date_of_birth` | `DATE` | - | No | - | Birthday. |
| `email` | `VARCHAR2(255)` | - | Yes | Validated via Regex | Contact email address. |
| `tel` | `VARCHAR2(10)` | - | Yes | 10-digit Regex (`^[0-9]{10}$`) | Phone number. |
| `city` | `VARCHAR2(35)` | - | No | `UPPER()` enforced | City of residence. |

### Table: `Apartments`
*Stores details of the available rental properties, linked to their respective owners.*

| Column Name | Data Type | Key | Required | Rules & Constraints | Description |
| :--- | :--- | :---: | :---: | :--- | :--- |
| `apt_id` | `NUMBER(7,0)` | **PK** | Yes | Seq: `apartment_id_seq` | Unique ID for each apartment. |
| `tin` | `VARCHAR2(9)` | **FK** | Yes | `ON DELETE CASCADE` | Owner's TIN. References `Owners`. |
| `price` | `NUMBER(5,2)` | - | Yes | `> 0` | Apartment's daily price in euros. |
| `area` | `NUMBER(5,2)` | - | No | `> 0` | Area in square meters. |
| `street_name` | `VARCHAR2(80)` | - | No | `UPPER()` enforced | Street name. |
| `street_num` | `VARCHAR2(5)` | - | No | - | Street number (allows letters like '12A'). |
| `zip_code` | `VARCHAR2(5)` | - | No | 5-digit Regex (`^[0-9]{5}$`) | Zip code. |
| `city` | `VARCHAR2(30)` | - | Yes | `UPPER()` enforced | City. |
| `floor` | `NUMBER(2,0)` | - | No | - | Floor number. |

### Table: `Tenants`
*Stores the personal information and contact details of individuals renting apartments.*

| Column Name | Data Type | Key | Required | Rules & Constraints | Description |
| :--- | :--- | :---: | :---: | :--- | :--- |
| `tnt_id` | `NUMBER(7,0)` | **PK** | Yes | Seq: `tnt_id_seq` | Unique tenant ID. |
| `name` | `VARCHAR2(50)` | - | Yes | `UPPER()` enforced | First name. |
| `surname` | `VARCHAR2(50)` | - | Yes | `UPPER()` enforced | Last name. |
| `gender` | `CHAR(1)` | - | No | `IN ('M', 'F', 'O')` | Gender identifier. |
| `country` | `VARCHAR2(35)` | - | No | `UPPER()` enforced | Tenant’s country of origin. |
| `email` | `VARCHAR2(255)` | - | Yes | Validated via Regex | Contact email address. |
| `tel` | `VARCHAR2(10)` | - | No | 10-digit Regex (`^[0-9]{10}$`) | Tenant's phone number. |
| `date_of_birth` | `DATE` | - | No | - | Birthday. |
| `num_of_tenants` | `NUMBER(2,0)` | - | No | `> 0`, Default: `1` | Number of tenants booked under the same reservation. |

### Table: `Rentals`
*An associative entity tracking the specific rental periods of apartments by tenants.*

| Column Name | Data Type | Key | Required | Rules & Constraints | Description |
| :--- | :--- | :---: | :---: | :--- | :--- |
| `apt_id` | `NUMBER(7,0)` | **PK/FK** | Yes | `ON DELETE CASCADE` | Apartment reference. |
| `tnt_id` | `NUMBER(7,0)` | **PK/FK** | Yes | `ON DELETE CASCADE` | Tenant reference. |
| `start_date` | `DATE` | **PK** | Yes | `< end_date` | Start date of rental. |
| `end_date` | `DATE` | - | No | `> start_date` | End date of rental. |

### Table: `Reviews`
*Stores tenant feedback and ratings for specific rental instances.*

| Column Name | Data Type | Key | Required | Rules & Constraints | Description |
| :--- | :--- | :---: | :---: | :--- | :--- |
| `review_id` | `NUMBER(7,0)` | **PK** | Yes | Seq: `review_id_seq` | Unique review ID. |
| `apt_id` | `NUMBER(7,0)` | **FK** | Yes | `ON DELETE CASCADE` | Part of composite FK to `Rentals`. |
| `tnt_id` | `NUMBER(7,0)` | **FK** | Yes | `ON DELETE CASCADE` | Part of composite FK to `Rentals`. |
| `start_date` | `DATE` | **FK** | Yes | `ON DELETE CASCADE` | Part of composite FK to `Rentals`. |
| `rev_date` | `DATE` | - | No | Default: `SYSDATE` | Date of the review submission. |
| `stars` | `NUMBER(1,0)` | - | No | `BETWEEN 1 AND 5` | Star rating. |
| `text` | `VARCHAR2(500)` | - | No | `UPPER()` enforced | Review text. |