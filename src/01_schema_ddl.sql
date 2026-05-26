-- Table 1: Owners 
CREATE TABLE Owners ( 
    TIN VARCHAR2(9) NOT NULL ,  -- Tax Identification Number as Primary key 
    name VARCHAR2(35) NOT NULL,  -- First name 
    surname VARCHAR2(35) NOT NULL,  -- Last name 
    gender CHAR(1),  -- Gender (e.g., 'M', 'F', 'O' for other) 
    date_of_birth DATE,  -- Birthday 
    email VARCHAR2(255)  NOT NULL,  -- Email
    tel VARCHAR2(10) NOT NULL,  -- Phone number 
    city VARCHAR2(35)  -- City of residence
); 

-- Table 2: Apartments 
CREATE TABLE Apartments ( 
    apt_id NUMBER(7,0) NOT NULL,  -- Unique ID for each apartment, Primary key 
    tin VARCHAR2(9) NOT NULL,  -- Owner's TIN, Foreign key 
    price NUMBER(5,2) NOT NULL,  -- Apartment's daily price in euro 
    area NUMBER(5,2),  -- in sqr meters 
    street_name VARCHAR2(80),  -- Street name 
    street_num VARCHAR2(5),  -- Street number (could include letters like '12A') 
    zip_code VARCHAR2(5) ,  -- Zip code 
    city VARCHAR2(30) NOT NULL,  -- City 
    floor NUMBER(2,0)  -- Floor number
); 

-- Table 3: Tenants 
CREATE TABLE Tenants ( 
    tnt_id NUMBER(7,0) NOT NULL,  -- Unique tenant ID, Primary key 
    name VARCHAR2(50) NOT NULL,  -- First name 
    surname VARCHAR2(50) NOT NULL,  -- Last name 
    gender CHAR(1) ,  -- Gender (e.g., 'M', 'F', 'O' for other) 
    country VARCHAR2(35),  -- Tenant’s country of origin 
    email VARCHAR2(255) NOT NULL,  -- Email 
    tel VARCHAR2(10),  -- Tenant's phone number 
    date_of_birth DATE,  -- Birthday 
    num_of_tenants NUMBER(2,0)  -- Number of tenants booked under the same reservation
); 

-- Table 4: Rentals 
CREATE TABLE Rentals ( 
    apt_id NUMBER(7,0) NOT NULL,  -- References apartment, Primary key component
    tnt_id NUMBER(7,0) NOT NULL,  -- References tenant, Primary key component
    start_date DATE NOT NULL,  -- Start date of rental, Primary key component
    end_date DATE  -- End date of rental
); 

-- Table 5: Reviews 
CREATE TABLE Reviews (  
    review_id NUMBER(7,0) NOT NULL,  -- Unique review ID, Primary key  
    apt_id NUMBER(7,0) NOT NULL,  -- References rentals, Foreign key 
    tnt_id NUMBER(7,0) NOT NULL,  -- References rentals, Foreign key 
    start_date DATE NOT NULL,  -- References rentals , Foreign key 
    rev_date TIMESTAMP,  -- Date of the review  
    stars NUMBER(1,0),  -- Star rating between 1 and 5  
    text VARCHAR2(500)  -- Review text  
); 

CREATE SEQUENCE apartment_id_seq START WITH 1 INCREMENT BY 1; 
CREATE SEQUENCE tnt_id_seq START WITH 1 INCREMENT BY 1; 
CREATE SEQUENCE review_id_seq START WITH 1 INCREMENT BY 1; 

-- t1. Display all table names in the current schema
SELECT * FROM TAB WHERE tname NOT LIKE 'BIN%';  

-- t5. Display all sequences in the current schema
SELECT sequence_name FROM user_sequences;

-- Display details of the table such as column names, data types, constraints 
DESC OWNERS; 
DESC APARTMENTS; 
DESC TENANTS; 
DESC RENTALS; 
DESC REVIEWS; 

 
