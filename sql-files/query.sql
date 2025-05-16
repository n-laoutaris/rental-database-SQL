--1 
SELECT tnt_id, name, surname  
FROM tenants  
WHERE surname LIKE 'A%S'; 

--2 
SELECT country, count(*)  
FROM tenants  
GROUP BY country; 

--3 
SELECT apt_id,COUNT(*) AS rental_count  
FROM Rentals  
GROUP BY apt_id  
ORDER BY rental_count DESC; 

--4 
SELECT o.surname AS Owner_Surname, o.name AS Owner_Name, o.TIN AS Owner_TIN, a.apt_id AS Apartment_ID, a.street_name AS Apartment_Street, a.street_num AS Apartment_Street_Number, a.city AS Apartment_City 
FROM Owners o 
LEFT JOIN Apartments a ON o.TIN = a.tin 
ORDER BY o.surname ASC, o.name ASC; 

--5 
SELECT o.tin, o.surname, o.name, COUNT(a.apt_id) AS num_apartments    
FROM owners o    
JOIN apartments a ON o.tin = a.tin    
GROUP BY o.tin, o.name, o.surname    
ORDER BY num_apartments DESC    
FETCH FIRST 1 ROWS ONLY; 

-- 6 
SELECT city, MAX(price) AS Max_Price 
FROM Apartments 
GROUP BY city 
ORDER BY Max_Price DESC 
LIMIT 1; 

--7 
SELECT review_id,COUNT(*) AS review_count  
FROM Reviews  
WHERE YEAR(rev_date)=2020  
GROUP BY review_id; 

--8 
SELECT t.surname, t.name, COUNT(r.review_id) AS num_reviews    
FROM tenants t    
JOIN reviews r ON t.tnt_id = r.tnt_id    
GROUP BY t.surname, t.name    
ORDER BY num_reviews DESC    
FETCH FIRST 1 ROWS ONLY; 

--9 
SELECT DISTINCT a.apt_id, a.street_name, a.street_num, a.city, r.start_date  
FROM apartments a  
JOIN rentals r ON a.apt_id = r.apt_id  
WHERE TO_CHAR(r.start_date, 'MM') = '08'; 

--10 
SELECT COUNT(*) AS Unrented_Apartments  
FROM apartments a 
LEFT JOIN rentals r ON a.APT_ID = r.APT_ID  
WHERE r.APT_ID IS NULL; 

--11 
SELECT NAME, SURNAME, DATE_OF_BIRTH 
FROM tenants t  
WHERE t.GENDER = 'F'    
ORDER BY DATE_OF_BIRTH ASC  
FETCH FIRST 1 ROWS ONLY; 

--12 
SELECT o.TIN, o.name, o.surname  
FROM owners o  
WHERE o.TIN NOT IN ( 
	SELECT DISTINCT a.tin  
	FROM apartments a  
	JOIN rentals r ON a.apt_id = r.apt_id  
); 

--13 
SELECT t.name AS Tenant_Name, t.surname AS Tenant_Surname, t.email AS Tenant_Email,a.street_name AS Apartment_Street, a.city AS Apartment_City 
FROM Rentals r 
JOIN Tenants t ON r.tnt_id = t.tnt_id 
JOIN Apartments a ON r.apt_id = a.apt_id 
WHERE a.street_name LIKE '%SAINT%'; 

--14 
SELECT a.apt_id, a.street_name,a.street_num,a.zip_code,a.city,a.floor, avg(r.stars) as Average_Stars 
FROM apartments a  
JOIN reviews r ON a.APT_ID = r.APT_ID  
GROUP BY a.apt_id, a.street_name,a.street_num,a.zip_code, a.city,a.floor  
ORDER BY Average_Stars DESC; 

--15 
SELECT r.apt_id,AVG(r.stars) AS review_average  
FROM Reviews r  
JOIN Apartments a ON r.apt_id=a.apt_id  
WHERE a.city=’THESSALONIKI’  
GROUP BY r.apt_id  
ORDER BY review_average DESC; 

--16 
SELECT t.name, t.surname, COUNT(r.apt_id) AS num_rentals    
FROM tenants t    
JOIN rentals r ON t.tnt_id = r.tnt_id    
GROUP BY t.name, t.surname    
ORDER BY num_rentals DESC    
FETCH FIRST 1 ROWS ONLY; 

-- 17 
SELECT t.gender AS Tenant_Gender, AVG(r.stars) AS Average_Score 
FROM Reviews r 
JOIN Tenants t ON r.tnt_id = t.tnt_id 
WHERE t.gender IN ('F', 'M') 
GROUP BY t.gender; 

--18 
SELECT t.gender, a.city, COUNT(*) AS rental_count  
FROM rentals r  
JOIN apartments a ON r.apt_id = a.apt_id  
JOIN tenants t ON r.tnt_id = t.tnt_id  
GROUP BY t.gender, a.city  
ORDER BY t.gender, rental_count DESC; 

--19 
SELECT tnt_id, name, surname, concat(substr(name, 1, 4), substr(surname, 1, 4)) as username 
FROM tenants; 

--20 
SELECT TO_CHAR(r.start_date, 'YYYY') AS rental_year, SUM(a.price * (r.end_date - r.start_date)) AS total_revenue  
FROM apartments a  
JOIN rentals r ON a.apt_id = r.apt_id  
GROUP BY TO_CHAR(r.start_date, 'YYYY')  
ORDER BY rental_year; 


--a1 
SELECT * FROM rentals; 

--a2 
SELECT * FROM owners; 

--b1 
SELECT apt_id, city, area  
FROM apartments  
ORDER BY apt_id desc; 

--b2 
SELECT tnt_id, surname, date_of_birth  
FROM tenants  
ORDER BY tnt_id desc; 

--c1 
SELECT * FROM tenants  
WHERE country='UNITED STATES'; 

--c2 
SELECT * FROM tenants  
WHERE name LIKE 'A%IS' OR name LIKE '%IA'; 

--c3 
SELECT * FROM tenants  
WHERE country NOT IN ('GREECE','UNITED STATES')  
	AND TO_CHAR(date_of_birth, 'YYYY') BETWEEN '1980' AND '2000'; 

--d1 
SELECT t.name, t.surname, t.country  
FROM tenants t  
INNER JOIN rentals ren ON ren.tnt_id=t.tnt_id  
WHERE ren.apt_id=11; 

--d2 
SELECT distinct t.name, t.surname, t.email  
FROM tenants t  
INNER JOIN rentals ren ON ren.tnt_id=t.tnt_id	  
INNER JOIN apartments apt ON apt.apt_id=ren.apt_id  
WHERE t.num_of_tenants<=3  
	AND apt.price<92; 

--d3 
SELECT o.name,o.surname,o.email AS owner_email,ren.apt_id,t.name,t.surname,t.email AS tenant_email,rev.start_date AS rental_date FROM owners o 
INNER JOIN apartments apt ON apt.tin=o.tin  
INNER JOIN rentals ren ON ren.apt_id=apt.apt_id  
INNER JOIN tenants t ON t.tnt_id=ren.tnt_id  
INNER JOIN reviews rev ON rev.tnt_id = ren.tnt_id AND rev.apt_id = ren.apt_id AND rev.start_date = ren.start_date  
WHERE rev.stars<=2; 

--e1 
SELECT city, ROUND(AVG(price),2) AS average_price 
FROM Apartments 
GROUP BY city; 

--e2 
SELECT t.tnt_id, t.name, t.surname, COUNT(*) AS rental_count 
FROM Rentals r 
JOIN Tenants t ON r.tnt_id = t.tnt_id 
GROUP BY t.tnt_id, t.name, t.surname; 

--e3 
SELECT o.TIN AS owner_tin, o.name AS owner_name, o.surname AS owner_surname, COUNT(*) AS apartment_count 
FROM Apartments a 
JOIN Owners o ON a.tin = o.TIN 
GROUP BY o.TIN, o.name, o.surname; 