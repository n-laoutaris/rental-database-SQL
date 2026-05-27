-- Table 1 : Owners 
ALTER TABLE Owners ADD CONSTRAINT PK_owner PRIMARY KEY (tin); 
ALTER TABLE Owners ADD CONSTRAINT CHK_tin CHECK (REGEXP_LIKE(TRIM(tin), '^[0-9]{9}$')); 
ALTER TABLE Owners ADD CONSTRAINT CHK_Oname CHECK (name = UPPER(name)); 
ALTER TABLE Owners ADD CONSTRAINT CHK_Osurname CHECK (surname = UPPER(surname)); 
ALTER TABLE Owners ADD CONSTRAINT CHK_Ogender CHECK (gender IN ('M', 'F', 'O')); 
ALTER TABLE Owners ADD CONSTRAINT CHK_Oemail CHECK (REGEXP_LIKE(email, '^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$'));
ALTER TABLE Owners ADD CONSTRAINT CHK_Ocity CHECK (city = UPPER(city)); 
ALTER TABLE Owners ADD CONSTRAINT CHK_Otel CHECK (REGEXP_LIKE(TRIM(tel), '^[0-9]{10}$')); 

-- TABLE 2 : APARTMENTS 
ALTER TABLE Apartments ADD CONSTRAINT PK_apartment PRIMARY KEY (apt_id); 
ALTER TABLE Apartments ADD CONSTRAINT FK_tin FOREIGN KEY (tin) REFERENCES Owners(tin) ON DELETE CASCADE;
ALTER TABLE Apartments ADD CONSTRAINT CHK_area CHECK (area > 0); 
ALTER TABLE Apartments ADD CONSTRAINT CHK_price CHECK (price > 0); 
ALTER TABLE Apartments ADD CONSTRAINT CHK_streetName CHECK (street_name = UPPER(street_name)); 
ALTER TABLE Apartments ADD CONSTRAINT CHK_zip_code CHECK (REGEXP_LIKE(TRIM(zip_code), '^[0-9]{5}$')); 
ALTER TABLE Apartments ADD CONSTRAINT CHK_Acity CHECK (city = UPPER(city)); 

-- TABLE 3 : TENANTS 
ALTER TABLE Tenants ADD CONSTRAINT PK_tenant_id PRIMARY KEY (tnt_id); 
ALTER TABLE Tenants ADD CONSTRAINT CHK_Tname CHECK (name = UPPER(name)); 
ALTER TABLE Tenants ADD CONSTRAINT CHK_Tsurname CHECK (surname = UPPER(surname)); 
ALTER TABLE Tenants ADD CONSTRAINT CHK_Tgender CHECK (gender in ('M','F','O')); 
ALTER TABLE Tenants ADD CONSTRAINT CHK_Temail CHECK (REGEXP_LIKE(email, '^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$')); 
ALTER TABLE Tenants ADD CONSTRAINT CHK_Ttel CHECK (REGEXP_LIKE(TRIM(tel), '^[0-9]{10}$')); 
ALTER TABLE Tenants ADD CONSTRAINT CHK_num_of_tenants CHECK (num_of_tenants > 0); 
ALTER TABLE Tenants MODIFY num_of_tenants DEFAULT 1; 
ALTER TABLE Tenants ADD CONSTRAINT CHK_country CHECK (country= UPPER(country)); 

-- TABLE 4 : RENTALS 
ALTER TABLE Rentals ADD CONSTRAINT PK_rental PRIMARY KEY (apt_id, tnt_id, start_date); 
ALTER TABLE Rentals ADD CONSTRAINT FK_Ren_apt_id FOREIGN KEY (apt_id) REFERENCES Apartments(apt_id) ON DELETE CASCADE;
ALTER TABLE Rentals ADD CONSTRAINT FK_Ren_tnt_id FOREIGN KEY (tnt_id) REFERENCES Tenants(tnt_id) ON DELETE CASCADE;
ALTER TABLE Rentals ADD CONSTRAINT CHK_Ren_dates CHECK (end_date > start_date);

-- TABLE 5 : REVIEWS 
ALTER TABLE Reviews ADD CONSTRAINT PK_review PRIMARY KEY (review_id); 
ALTER TABLE Reviews ADD CONSTRAINT FK_Reviews_Rentals FOREIGN KEY (apt_id, tnt_id, start_date) REFERENCES Rentals (apt_id, tnt_id, start_date) ON DELETE CASCADE; 
ALTER TABLE Reviews ADD CONSTRAINT UQ_Rev_Rental UNIQUE (apt_id, tnt_id, start_date);
ALTER TABLE Reviews ADD CONSTRAINT CHK_text CHECK (text = UPPER(text)); 
ALTER TABLE Reviews MODIFY rev_date DEFAULT SYSDATE; 
ALTER TABLE Reviews ADD CONSTRAINT CHK_stars CHECK (stars between 1 and 5); 

--DESC OWNERS; 
--DESC APARTMENTS; 
--DESC TENANTS; 
--DESC RENTALS; 
--DESC REVIEWS; 

-- t2. Display all primary key constraints in the current schema
SELECT CONSTRAINT_NAME, TABLE_NAME FROM USER_CONSTRAINTS WHERE CONSTRAINT_NAME LIKE 'PK%';  
-- t3. Display all foreign key constraints in the current schema 
SELECT CONSTRAINT_NAME, TABLE_NAME FROM USER_CONSTRAINTS WHERE CONSTRAINT_NAME LIKE 'FK%';  
-- t4. Display all check constraints in the current schema
SELECT CONSTRAINT_NAME, TABLE_NAME FROM USER_CONSTRAINTS WHERE CONSTRAINT_NAME LIKE 'CHK%';  