--create Employees table wiith column ( EmployeeID, FirstName, LastName, Department, Salary )
CREATE TABLE  Employeess
(
EmployeeID int ,
FirstName varchar(30),
LastName  varchar(30),
Department varchar(30),
Salary DECIMAL(10,2)
);

/*
 * Insert a new record into the Employees table.

EmployeeID     FirstName   LastName  Department      Salary
101            'John1'      'Doe1'     'HR'            20000
102            'John2'      'Doe2'     'IT'            50000
103            'John3'      'Doe3'     'CS'            40000
104            'John4'      'Doe4'     'IT'            10000
105            'John5'      'Doe5'     'ZX'            30000
 * */

INSERT INTO Employeess ( EmployeeID, FirstName, LastName, Department, Salary ) 
VALUES (101,'John1','Doe1','HR',20000);
INSERT INTO Employeess ( EmployeeID, FirstName, LastName, Department, Salary ) 
VALUES (102,'John2','Doe2','IT',50000);
INSERT INTO Employeess ( EmployeeID, FirstName, LastName, Department, Salary ) 
VALUES (103,'John3','Doe3','CS',40000);
INSERT INTO Employeess ( EmployeeID, FirstName, LastName, Department, Salary ) 
VALUES (104,'John4','Doe4','CS',10000);
INSERT INTO Employeess ( EmployeeID, FirstName, LastName, Department, Salary ) 
VALUES (105,'John5','Doe5','ZX',30000);


--Update the salary of an employee to 600000 with EmployeeID     101.
UPDATE Employeess
SET Salary = 600000
WHERE EmployeeID =101;


--Delete a record of an employee who Department = 101.
DELETE FROM Employeess
WHERE EmployeeID =101;

--Retrieve all employees in the IT department.
SELECT * FROM Employeess
WHERE Department = 'IT';


--select * data from table but conatination  FirstName, LastName as one column
SELECT  EmployeeID, FirstName||''||LastName AS "FULL NAME", Department, Salary 
FROM Employeess;




