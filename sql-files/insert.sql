 -- Table 1: Owners 
INSERT ALL 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('123456789', 'GIANNIS', 'NIKOLAOU', 'M', TO_DATE('01-JAN-1980', 'DD-MON-YYYY'), 'NIKOLAOU.DOE@GMAILE.COM', 'ATHENS', '6916436458') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('234567890', 'GIORGOS', 'GEORGIOU', 'F', TO_DATE('15-FEB-1985', 'DD-MON-YYYY'), 'GEORGIOU.SMITH@GMAIL.COM', 'THESSALONIKI', '6976431115') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('345678901', 'MIXALIS', 'PAPADOPOULOS', 'M', TO_DATE('20-MAR-1975', 'DD-MON-YYYY'), 'PAPADOPOULOS.JOHNSON@GMAIL.COM', 'PATRA', '6997664364') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('456789012', 'LOUKIA', 'ANTONIOU', 'F', TO_DATE('05-APR-1990', 'DD-MON-YYYY'), 'ANTONIOU.BROWN@GMAIL.COM', 'HERAKLION', '6976764589') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('567890123', 'ACHILLEAS', 'VLACHOS', 'M', TO_DATE('10-MAY-1982', 'DD-MON-YYYY'), 'VLACHOS.DAVIS@GMAIL.COM', 'LARISSA', '6996352648') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('678901234', 'EMILIA', 'PAPADOPOULOU', 'F', TO_DATE('25-JUN-1978', 'DD-MON-YYYY'), 'PAPADOPOULOU.MILLER@GMAIL.COM', 'VOLOS', '6944663254') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('789012345', 'DIMITRIS', 'PAPPAS', 'M', TO_DATE('30-JUL-1995', 'DD-MON-YYYY'), 'PAPPAS.WILSON@GMAIL.COM', 'IOANNINA', '6997643151') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('890123456', 'SOFIA', 'PAPADIMITRIOU', 'F', TO_DATE('15-AUG-1988', 'DD-MON-YYYY'), 'VLAXOU.MOORE@GMAIL.COM', 'RHODES', '6998665534') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('901234567', 'XRISTOS', 'IOANNIDIS', 'M', TO_DATE('10-SEP-1983', 'DD-MON-YYYY'), 'IOANNIDIS.TAYLOR@GMAIL.COM', 'CORFU', '6977643361') 
  INTO Owners (tin, name, surname, gender, date_of_birth, email, city, tel) VALUES ('012345678', 'NATASA', 'OIKONOMOU', 'F', TO_DATE('05-OCT-1977', 'DD-MON-YYYY'), 'OIKONOMOU.ANDERSON@GMAIL.COM', 'KAVALA', '6997948819') 
SELECT 1 FROM DUAL; 

INSERT ALL 
  INTO Owners VALUES ('109876542', 'KOSTAS', 'PAPAGEORGIOU', 'M', TO_DATE('25-NOV-1992', 'DD-MON-YYYY'), 'PAPAGEORGIOU.THOMAS@GMAIL.COM', '6930482939', 'LAMIA') 
  INTO Owners VALUES ('210986543', 'DESPOINA', 'MICHAELIDOU', 'F', TO_DATE('30-DEC-1986', 'DD-MON-YYYY'), 'MICHAELIDOU.JACKSON@GMAIL.COM', '6903264080', 'KOMOTINI') 
  INTO Owners VALUES ('321098654', 'DORA', 'PAPADAKI', 'F', TO_DATE('10-JAN-1981', 'DD-MON-YYYY'), 'PAPADAKI.WRIGHT@GMAIL.COM', '6906313058', 'CHALKIDA') 
  INTO Owners VALUES ('432108765', 'EVA', 'DELEONARDI', 'F', TO_DATE('15-FEB-1984', 'DD-MON-YYYY'), 'DELEONARDI.HARRIS@GMAIL.COM', '6990336594', 'KATERINI') 
SELECT 1 FROM DUAL; 

-- TABLE 2 : Apartments 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '123456789', 100.00, 100, 'ERMOU', 1, '12345', 'ATHENS', 1) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '123456789', 120.00, 120, 'SAINT ANARGYROU', 2, '12246', 'ATHENS', 2) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '123456789', 115.00, 115, 'KIFISIAS', 13, '35100', 'LAMIA', 13) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '234567890', 85.00, 85, 'TSIMISKI', 3, '54321', 'THESSALONIKI', 3) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '234567890', 85.00, 85, 'SAINT DIMITRIOU', 3, '54321', 'THESSALONIKI', 3) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '345678901', 75.00, 75, 'KORINTHOU', 4, '26890', 'PATRA', 4) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '456789012', 95.00, 95, 'KNOSSOU', 5, '71876', 'HERAKLION', 5) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '567890123', 120.00, 120, 'PAPANASTASIOU', 6, '40354', 'LARISSA', 6) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '789012345', 90.00, 90, 'TSIROGIANNI', 8, '45654', 'IOANNINA', 8) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '890123456', 80.00, 80, 'KON/NOU PALAIOLOGOU', 9, '85165', 'RHODES', 9) ; 
INSERT INTO Apartments (apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '901234567', 130.00, 130, 'SPYROU VASILEIOU', 10, '49223', 'CORFU', 10) ; 
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES(apartment_id_seq.NEXTVAL, '012345678', 140.00, 140, 'ERMIONIS', 11, '65445', 'KAVALA', 5);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '109876542', 105.00, 105, 'CHATZOPOULOU', 12, '35100', 'LAMIA', 8);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '210986543', 115.00, 115, 'MAVRIKIOU', 14, '69100', 'KOMOTINI', 12);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '321098654', 125.00, 125, 'SALAMINOS', 15, '34101', 'CHALKIDA', 5);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '432108765', 135.00, 135, 'TRIKOUPI', 16, '60112', 'KATERINI', 4);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '432108765', 145.00, 145, 'OMONIAS', 17, '60113', 'KATERINI', 1);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '678901234', 110.00, 110, 'NIKITARA', 7, '38678', 'VOLOS', 6);  
INSERT INTO Apartments(apt_id, tin, price, area, street_name, street_num, zip_code, city, floor) VALUES (apartment_id_seq.NEXTVAL, '109876542', 160.00, 160, 'THEOFILOU', 19, '59200', 'NAOUSSA', 3); 

-- TABLE 3: Tenants 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country)  VALUES (tnt_id_seq.NEXTVAL, 'GEORGIOS', 'TACHTSIDIS','M', 'TACHTSG@GMAIL.COM', '2310032555', TO_DATE('23-SEP-1962', 'DD-MON-YYYY'), 1, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country)  VALUES (tnt_id_seq.NEXTVAL, 'GEORGIA', 'VALASIOTI','F', 'VALASGEO@GMAIL.COM', '2310423525', TO_DATE('14-MAY-1992', 'DD-MON-YYYY'), 5, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country)  VALUES (tnt_id_seq.NEXTVAL, 'ILIANA', 'VASILIADOU','F', 'VASILIADOU@GMAIL.COM', '2310923535', TO_DATE('11-NOV-1988', 'DD-MON-YYYY'), 2, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country)  VALUES (tnt_id_seq.NEXTVAL, 'CHRYSOVALANTIS', 'ELEFTHERIADIS','M', 'ELEFTHERIADISC@GMAIL.COM', '2105612315', TO_DATE('12-AUG-1996', 'DD-MON-YYYY'), 2, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'STAVROULA', 'CHALKIA','O', 'STAVCHALKIA@GMAIL.COM', '2105825315', TO_DATE('30-JAN-1978', 'DD-MON-YYYY'), 2, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'JULIO', 'ALVAREZ','M', 'ALVAREZJ@GMAIL.COM', NULL, TO_DATE('22-OCT-1997', 'DD-MON-YYYY'), 2, 'ARGENTINA'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'JAMES', 'CARTER','O', 'CARTERJ@GMAIL.COM', NULL, TO_DATE('15-JAN-1987', 'DD-MON-YYYY'), 4, 'UNITED STATES'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'EMILY', 'JOHNSON','F', 'JOHNSONEM@GMAIL.COM', NULL, TO_DATE('23-JUL-2001', 'DD-MON-YYYY'), 3, 'CANADA'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'MARIA', 'PAPADOPOULOU','F', 'MPAPAD@GMAIL.COM', '6980851450',TO_DATE(' 02-MAY-1997', 'DD-MON-YYYY'), 3, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'KYRIAKOS', 'KYRIAKOU','M', 'KYRKYR@GMAIL.COM', '6934255222', TO_DATE('11-JAN-2003', 'DD-MON-YYYY'), 4, 'CYPRUS'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'DA SILVA SANTOS JR', 'NEYMAR','M', 'NEYMARJR@GMAIL.COM', NULL, TO_DATE('05-FEB-1992', 'DD-MON-YYYY'), 2, 'UNITED STATES'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'OLIVIA', 'RODRIGO','F', 'RODRIGOLIV@GMAIL.COM', NULL, TO_DATE('20-FEB-2003', 'DD-MON-YYYY'), 5, 'UNITED STATES'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'LUIGI', 'MARIO','M', 'MARIOLUI@GMAIL.COM', '', TO_DATE('13-SEP-1985', 'DD-MON-YYYY'), 1, 'ITALY'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'ANTONIS', 'ANARGIROU','M', 'ANARGANT@GMAIL.COM', '', TO_DATE('22-JUN-1997', 'DD-MON-YYYY'), 4, 'GREECE'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'GEORGE', 'BIDENIDIS','M', 'BIDENIDISG@GMAIL.COM', '', TO_DATE('30-SEP-1959', 'DD-MON-YYYY'), 3, 'UNITED STATES'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'HELEN', 'MARIGONA','F', 'MARIGONAH@GMAIL.COM', NULL, TO_DATE('22-APR-2001', 'DD-MON-YYYY'), 4, 'SERBIA'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'ELEONORA', 'ANDREWS','F', 'ANDREWSE@GMAIL.COM', NULL, TO_DATE('20-MAY-1993', 'DD-MON-YYYY'), 2, 'ROMANIA'); 
INSERT INTO tenants (tnt_id, name,surname, gender, email, Tel, date_of_birth, num_of_tenants, Country) VALUES (tnt_id_seq.NEXTVAL, 'NIKOLA', 'ADAMS','M', 'ADAMSN@GMAIL.COM', NULL, TO_DATE('22-JAN-2000', 'DD-MON-YYYY'), 3, 'MEXICO');

--TABLE 4: Rentals 
INSERT ALL 
INTO rentals (apt_id, tnt_id, start_date, end_date)  
VALUES (11,11,TO_DATE('05-MAR-2022', 'DD-MON-YYYY'),TO_DATE('10-MAR-2022', 'DD-MON-YYYY')) 
SELECT 1 FROM DUAL; 

INSERT ALL 
INTO rentals VALUES (1,5, TO_DATE('06-NOV-2024', 'DD-MON-YYYY'), TO_DATE('15-NOV-2024', 'DD-MON-YYYY')) 
INTO rentals VALUES (7,10, TO_DATE('10-JAN-2022', 'DD-MON-YYYY'), TO_DATE('10-MAR-2022', 'DD-MON-YYYY')) 
INTO rentals VALUES (3,4, TO_DATE('15-MAY-2022', 'DD-MON-YYYY'), TO_DATE('20-AUG-2022', 'DD-MON-YYYY')) 
INTO rentals VALUES (19, 14, TO_DATE('01-SEP-2022', 'DD-MON-YYYY'), TO_DATE('30-SEP-2022', 'DD-MON-YYYY')) 
INTO rentals VALUES (17,13, TO_DATE('05-NOV-2022', 'DD-MON-YYYY'), TO_DATE('15-NOV-2022', 'DD-MON-YYYY')) 
INTO rentals VALUES (1,5, TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), TO_DATE('15-FEB-2023', 'DD-MON-YYYY')) 
INTO rentals VALUES (7,9, TO_DATE('10-MAR-2023', 'DD-MON-YYYY'), TO_DATE('10-MAY-2023', 'DD-MON-YYYY')) 
INTO rentals VALUES (2,10, TO_DATE('01-JUL-2023', 'DD-MON-YYYY'), TO_DATE('30-JUL-2023', 'DD-MON-YYYY')) 
INTO rentals VALUES (5,13, TO_DATE('05-SEP-2023', 'DD-MON-YYYY'), TO_DATE('15-SEP-2023', 'DD-MON-YYYY')) 
INTO rentals VALUES (3,3, TO_DATE('01-NOV-2023', 'DD-MON-YYYY'), TO_DATE('21-NOV-2023', 'DD-MON-YYYY')) 
INTO rentals VALUES (12,11, TO_DATE('15-JAN-2024', 'DD-MON-YYYY'), TO_DATE('20-JAN-2024', 'DD-MON-YYYY')) 
INTO rentals VALUES (4,5, TO_DATE('05-MAR-2024', 'DD-MON-YYYY'), TO_DATE('01-APR-2024', 'DD-MON-YYYY')) 
INTO rentals VALUES (3,5, TO_DATE('15-MAY-2024', 'DD-MON-YYYY'), TO_DATE('30-MAY-2024', 'DD-MON-YYYY')) 
INTO rentals VALUES (7,6, TO_DATE('01-JUL-2024', 'DD-MON-YYYY'), TO_DATE('01-AUG-2024', 'DD-MON-YYYY')) 
INTO rentals VALUES (11,13, TO_DATE('10-OCT-2024', 'DD-MON-YYYY'), TO_DATE('20-OCT-2024', 'DD-MON-YYYY')) 
INTO rentals VALUES (1,15, TO_DATE('01-JAN-2025', 'DD-MON-YYYY'), TO_DATE('02-JAN-2025', 'DD-MON-YYYY')) 
INTO rentals VALUES (8,8, TO_DATE('05-APR-2025', 'DD-MON-YYYY'), TO_DATE('15-APR-2025', 'DD-MON-YYYY')) 
SELECT 1 FROM DUAL; 

INSERT INTO rentals VALUES (4,17, TO_DATE('10-MAR-2020', 'DD-MON-YYYY'), TO_DATE('15-MAR-2020', 'DD-MON-YYYY')); 
INSERT INTO rentals VALUES (6,1, TO_DATE('2-AUG-2020', 'DD-MON-YYYY'), TO_DATE('16-AUG-2020', 'DD-MON-YYYY')); 
INSERT INTO rentals VALUES (10,7, TO_DATE('14-AUG-2020', 'DD-MON-YYYY'), TO_DATE('19-AUG-2020', 'DD-MON-YYYY')); 

--Table 5: Reviews 
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 1,5, TO_DATE('06-NOV-2024', 'DD-MON-YYYY'), TO_DATE('11-DEC-2024', 'DD-MON-YYYY'),5, 'PERFECT GETAWAY! THE VIEW FROM THE BALCONY WAS BREATHTAKING, AND THE AMENITIES WERE EXACTLY AS DESCRIBED. HIGHLY RECOMMEND!');  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 7,9, TO_DATE('10-MAR-2023', 'DD-MON-YYYY'),TO_DATE('14-MAY-2023', 'DD-MON-YYYY'),3, 'DECENT PLACE FOR A SHORT STAY. THE APARTMENT WAS CLEAN BUT LACKED A FEW ESSENTIALS LIKE EXTRA TOWELS AND TOILETRIES.');  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 11,13, TO_DATE('10-OCT-2024', 'DD-MON-YYYY'), TO_DATE('22-OCT-2024', 'DD-MON-YYYY'),2, 'DISAPPOINTED WITH THE CLEANLINESS. THERE WERE DUSTY SHELVES AND A FUNKY SMELL IN THE BATHROOM. THE HOST WAS RESPONSIVE BUT NOT PROACTIVE.');  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 3,5, TO_DATE('15-MAY-2024', 'DD-MON-YYYY'), TO_DATE('05-JUN-2024', 'DD-MON-YYYY'),4, 'GREAT LOCATION AND VERY COZY. A FEW MINOR ISSUES WITH THE WI-FI, BUT THE HOST WAS QUICK TO RESOLVE THEM. WOULD STAY AGAIN!') ;  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 12,11, TO_DATE('15-JAN-2024', 'DD-MON-YYYY'), TO_DATE('05-FEB-2024', 'DD-MON-YYYY'),1, 'TERRIBLE EXPERIENCE. THE APARTMENT WAS DIRTY, THE APPLIANCES DID NOT WORK, AND THE HOST WAS UNRESPONSIVE.') ;  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 2,10, TO_DATE('01-JUL-2023', 'DD-MON-YYYY'), TO_DATE('05-AUG-2023', 'DD-MON-YYYY'),1, 'WORST DAYS OF MY LIFE!!!!! DO NOT ATTEMPT TO LIVE HERE IF YOU VALUE YOUR VACATION TIME!!!!!! ' ) ;  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 7,9, TO_DATE('10-MAR-2023', 'DD-MON-YYYY'), TO_DATE('05-JUN-2023', 'DD-MON-YYYY'),5, 'LOVELY APARTMENT WITH MODERN DECOR. THE STREET NOISE WAS NOTICEABLE AT NIGHT, BUT OVERALL A WONDERFUL EXPERIENCE.') ; 
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 4,17, TO_DATE('10-MAR-2020', 'DD-MON-YYYY'), TO_DATE('05-JUN-2020', 'DD-MON-YYYY'),5, 'AMAZING APARTMENT AND GREAT LOCATION. DEFINITELY RECOMMENDED.') ; 
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 6,1, TO_DATE('2-AUG-2020', 'DD-MON-YYYY'), TO_DATE('17-AUG-2020', 'DD-MON-YYYY'),4, 'VERY CHEAP FOR ITS SIZE, BUT PATRA WAS TOO HOT DURING THE SUMMER.') ;  
INSERT INTO Reviews(review_id, apt_id, tnt_id, start_date, rev_date, stars, text) VALUES (review_id_seq.NEXTVAL, 10,7, TO_DATE('14-AUG-2020', 'DD-MON-YYYY'), TO_DATE('29-AUG-2020', 'DD-MON-YYYY'),4, 'VERY SATISFIED WITH THE ISLAND, BUT NOBODY HERE ACCEPTS HONEST-TO-GOODNESS AMERICAN DOLLARS. ') ; 

SELECT * FROM OWNERS; 
SELECT * FROM APARTMENTS; 
SELECT * FROM TENANTS; 
SELECT * FROM RENTALS; 
SELECT * FROM REVIEWS; 