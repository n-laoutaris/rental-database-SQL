-- Table 1: Owners 
CREATE TABLE Owners ( 
    TIN VARCHAR2(9) NOT NULL ,  -- Tax Identification Number as Primary key 
    name VARCHAR2(35) NOT NULL,   -- First name 
    surname VARCHAR2(35) NOT NULL,   -- Last name 
    gender CHAR(1), 
    date_of_birth DATE,  -- Birthday must be a past date 
    email VARCHAR2(255)  NOT NULL,  
    tel VARCHAR2(10) NOT NULL, -- phone number 
    city VARCHAR2(35)
); 

-- Table 2: Apartments 
CREATE TABLE Apartments ( 
    apt_id NUMBER(7,0) NOT NULL,  -- Unique ID for each apartment, Primary key 
    tin VARCHAR2(9) NOT NULL,       -- Owner's TIN, Foreign key 
    price NUMBER(5,2) NOT NULL,     -- Apartment's daily price in euro 
    area NUMBER(5,2),      -- in sqr meters 
    street_name VARCHAR2(80),    -- Street name 
    street_num VARCHAR2(5),     -- Street number (could include letters like '12A') 
    zip_code VARCHAR2(5) ,    -- Zip code 
    city VARCHAR2(30) NOT NULL,    	-- City 
    floor NUMBER(2,0)                        -- Floor number
); 

-- Table 3: Tenants 
CREATE TABLE tenants ( 
    tnt_id NUMBER(7,0) NOT NULL,     -- Unique tenant ID, Primary key 
    name VARCHAR2(50) NOT NULL,       -- First name 
    surname VARCHAR2(50) NOT NULL,       -- Last name 
    gender CHAR(1) ,  -- Gender (e.g., 'M', 'F', 'O' for other) 
    country VARCHAR2(35), -- Tenant’s country of origin 
    email VARCHAR2(255) NOT NULL,  -- Email with basic check  
    tel VARCHAR2(10),                   -- Tenant's phone number 
    date_of_birth DATE,  -- Birthday must be a past date 
    num_of_tenants NUMBER(2,0)    -- Number of tenants must be positive 
); 

-- Table 4: Rentals 
CREATE TABLE rentals ( 
    apt_id NUMBER(7,0) NOT NULL,        -- References apartment, Primary key 
    tnt_id NUMBER(7,0) NOT NULL,           -- References tenant 
    start_date DATE NOT NULL,         -- Start date of rental 
    end_date DATE  -- End date of rental, must be on or after start date 
); 

-- Table 5: Reviews 
CREATE TABLE reviews (  
    review_id NUMBER(7,0) NOT NULL,     -- Unique review ID, Primary key  
    apt_id NUMBER(7,0) NOT NULL,        -- References rentals, Foreign key 
    tnt_id NUMBER(7,0) NOT NULL,           -- References rentals, Foreign key 
    start_date DATE NOT NULL, -- References rentals , Foreign key 
    rev_date TIMESTAMP, -- Date of the review  
    stars NUMBER(1,0),  -- Star rating between 1 and 5  
    text VARCHAR2(500)                 -- Review text  
); 

CREATE SEQUENCE apartment_id_seq START WITH 1 INCREMENT BY 1; 
CREATE SEQUENCE tnt_id_seq START WITH 1 INCREMENT BY 1; 
CREATE SEQUENCE review_id_seq START WITH 1 INCREMENT BY 1; 

SELECT sequence_name FROM user_sequences; -- displays all sequences owned by the current user 

SELECT * FROM TAB WHERE tname NOT LIKE 'BIN%' ;   -- displays all table names 

DESC OWNERS; -- displays details of the table such as column names, data types, and constraints 
DESC APARTMENTS; 
DESC TENANTS; 
DESC RENTALS; 
DESC REVIEWS; 

 
