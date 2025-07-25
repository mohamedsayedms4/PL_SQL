--1. Find all employee where the emp_id is within a certain range  100  and  105.
SELECT * 
FROM employees
WHERE employee_id BETWEEN 100 AND 105;

--2. Find all employee that belong to a specific set of emp_id  151 , 152, 153, 154 , 155.
SELECT *
FROM employees
WHERE employee_id IN (151, 152, 153, 154, 155);

--3. Retrieve all employee where the employee first_name starts with the letter 'P' OR 'p'
SELECT *
FROM employees
WHERE UPPER(first_name) LIKE 'P%';

--4. Retrieve all employee where the employee first_name end with the letter 'A' OR 'a'
SELECT  *
FROM employees
WHERE first_name LIKE '%A' OR first_name LIKE '%a';

--5. Retrieve all employee where the employee first_name with the letter 'A' OR 'a'
SELECT *
FROM employees
WHERE UPPER(first_name) LIKE '%A%';

--6. Retrieve all employee where the employee first_name  third char with the letter 'e' OR 'E'
SELECT *
FROM employees
WHERE SUBSTR(UPPER(first_name), 3, 1) = 'E';

--7. Retrieve all employees who don't have a manager assigned (i.e., manager_id is NULL).
SELECT *
FROM employees
WHERE manager_id IS NULL;

--8. Find all employees who have a manager assigned.
SELECT *
FROM employees
WHERE manager_id IS NOT NULL;

--9. Insert a new employee without assigning a manager (NULL value for manager_id).
INSERT INTO employees (
    employee_id, first_name, last_name, email, phone_number,
    hire_date, job_id, salary, manager_id, department_id
) VALUES (
    999, 'John', 'Doe', 'john.doe@example.com', '1234567890',
    TO_DATE('2025-07-25', 'YYYY-MM-DD'), 'IT_PROG', 5000, NULL, 60
);

--10. Find all employees who work either in the 'AD_VP' JOB_ID or the 'IT_PROG' JOB_ID.
SELECT *
FROM employees
WHERE job_id IN ('AD_VP', 'IT_PROG');


--11. Retrieve all employees sorted by their last_name in ascending order.
SELECT *
FROM employees
ORDER BY last_name ASC;

--12. Retrieve all employees sorted by their hire_date in descending order.
SELECT *
FROM employees
ORDER BY hire_date DESC;

--13. Sort employees first by department in ascending order and then by salary in descending order within each department_id.
SELECT *
FROM employees
ORDER BY department_id ASC, salary DESC;

--14. Retrieve all employees with their last_name in lowercase
SELECT employee_id, first_name, LOWER(last_name) AS last_name_lowercase
FROM employees;

--15. Retrieve all employees with their first_name in uppercase.
SELECT employee_id, UPPER(first_name) AS first_name_upper, last_name
FROM employees;

--16. Retrieve all employees with their first_name and last_name in title case (first letter capitalized).
SELECT employee_id,
       INITCAP(first_name) AS first_name_title,
       INITCAP(last_name) AS last_name_title
FROM employees;

--17. Find employees whose last_name is 'smith', regardless of the case.
SELECT *
FROM employees
WHERE UPPER(last_name) = 'SMITH';








