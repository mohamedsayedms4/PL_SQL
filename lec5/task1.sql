--1. AVG Function
--Question:
--Write an SQL query to calculate the average salary of all employees from the EMPLOYEES table.
SELECT AVG(salary) AS average_salary
FROM employees;


--2. COUNT Function
--Question:
--Write an SQL query to count the total number of employees in the EMPLOYEES table.

SELECT COUNT(*) AS total_employees
FROM employees;


--3. MAX Function
--Question:
--Write an SQL query to find the maximum salary offered in the EMPLOYEES table.

SELECT MAX(salary) AS highest_salary
FROM employees;


--4. MIN Function
--Question:
--Write an SQL query to find the minimum salary offered in the EMPLOYEES table.

SELECT MIN(salary) AS lowest_salary
FROM employees;


--5. SUM Function
--Question:
--Write an SQL query to calculate the total salary that the company pays to all employees.

SELECT SUM(salary) AS total_salary_paid
FROM employees;


--6. GROUP BY Clause (Part 1)
--Question:
--Write an SQL query to display the department ID and the average salary of employees grouped by department from the EMPLOYEES table.

SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

--7. GROUP BY Clause (Part 2)
--Question:
--Write an SQL query to show job ID and the total number of employees for each job title in the EMPLOYEES table.

SELECT job_id, COUNT(*) AS employee_count
FROM employees
GROUP BY job_id;

--8. HAVING Clause
--Question:
--Write an SQL query to display the department ID and the total salary of employees only for departments where the total salary exceeds 50,000.
--(Hint: Use GROUP BY and HAVING together.)

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 50000;



--9. AVG Function (Advanced)
--Question:
--Write a query to find the average commission (COMMISSION_PCT) given to employees who have a non-null commission in the EMPLOYEES table.

SELECT AVG(commission_pct) AS average_commission
FROM employees
WHERE commission_pct IS NOT NULL;

--10. COUNT Function (Advanced)
--Question:
--Write a query to count how many employees have a salary greater than 10,000.

SELECT COUNT(*) AS high_salary_employees
FROM employees
WHERE salary > 10000;

--11. MAX and MIN Together
--Question:
--Write a query to find the maximum and minimum salary within each job ID using GROUP BY.

SELECT job_id,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees
GROUP BY job_id;

--12. SUM Function (Advanced)
--Question:
--Write a query to sum the salaries for each manager (MANAGER_ID) in the EMPLOYEES table.

SELECT manager_id, SUM(salary) AS total_salary
FROM employees
GROUP BY manager_id;

--13. GROUP BY with Multiple Columns
--Question:
--Write a query to display department ID and job ID, and show the total salary for each group (department + job combination).

SELECT department_id, job_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id, job_id;

--14. HAVING with COUNT
--Question:
--Write a query to display job ID and count of employees for each job, only show jobs that have more than 5 employees.

SELECT job_id, COUNT(*) AS employee_count
FROM employees
GROUP BY job_id
HAVING COUNT(*) > 5;

--15. Using Aggregate Functions Together
--Question:
--Write a query to show each department ID with:
--
--Total employees,
--
--Average salary,
--
--Maximum salary,
--
--Minimum salary,
--and group them by department ID.

SELECT department_id,
       COUNT(*) AS total_employees,
       AVG(salary) AS average_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees
GROUP BY department_id;

--16. Complex HAVING
--Question:
--Write a query to find all departments where:
--
--The average salary is more than 8000,
--
--And the number of employees is less than 10.

SELECT department_id,
       AVG(salary) AS average_salary,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 8000 AND COUNT(*) < 10;


--17. Nested Aggregation
--Question:
--Write a query to find the department that has the highest total salary among all departments.
--
--(Hint: You can use GROUP BY + ORDER BY DESC + FETCH FIRST 1 ROW ONLY.)

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROW ONLY;

--18. Using Aliases with Aggregates
--Question:
--Write a query to show department ID, sum of salaries as Total_Salary, and average salary as Average_Salary, grouped by department ID.

SELECT department_id,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;
