--create table Doctor contain
--id, name , salary , address

CREATE TABLE  Doctor(
id INT PRIMARY KEY,
name varchar(30) NOT NULL,
salary DECIMAL(10,2),
address VARCHAR(150)
);

--please insert 10 row with Data as you like 
INSERT ALL
    INTO Doctor (id, name, salary, address) VALUES (1, 'Dr. Ahmed Mostafa', 15000.00, 'Cairo, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (2, 'Dr. Mona Hassan', 18500.50, 'Alexandria, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (3, 'Dr. Tarek Adel', 22000.75, 'Giza, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (4, 'Dr. Salma Fathy', 17500.00, 'Mansoura, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (5, 'Dr. Hany Mohamed', 16000.00, 'Tanta, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (6, 'Dr. Reem Samir', 20000.25, 'Aswan, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (7, 'Dr. Omar Sherif', 19500.80, 'Zagazig, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (8, 'Dr. Laila Nasser', 21000.00, 'Suez, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (9, 'Dr. Nour ElDin', 15500.60, 'Ismailia, Egypt')
    INTO Doctor (id, name, salary, address) VALUES (10, 'Dr. Karim Saeed', 23000.90, 'Fayoum, Egypt')
SELECT * FROM dual;

--update record number 3 with salary 20000
UPDATE Doctor
SET salary = 20000
WHERE id = 3 ;


--delete record number 9
DELETE FROM DOCTOR 
WHERE id = 9;

-- please Concatenation all name with salary  of all rows
SELECT name ||''|| salary AS "name with salary" FROM DOCTOR ;

--display all record with salary * 2
SELECT id, name, salary*2 AS "salary*2", address FROM DOCTOR d ;


-- select all data with salary  1000 , 2000 , 3000 
SELECT *
FROM Doctor
WHERE salary IN (1000, 2000, 3000);

--rename table Doctor to PRD_DOCTOR
RENAME DOCTOR TO PRD_DOCTOR;

