-- Q1. Display current date in the format 'DD-MON-YYYY'.
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS current_date
FROM dual;

-- Q2. Display current date in the format 'Month YYYY'.
SELECT TO_CHAR(SYSDATE, 'Month YYYY') AS current_date
FROM dual;

-- Q3. Convert a number to character using TO_CHAR with formatting (e.g., 12345.67 as '12,345.67').
SELECT TO_CHAR(12345.67, '99,999.99') AS formatted_number
FROM dual;

-- Q4. Show salary formatted with a currency symbol.
SELECT employee_id, first_name, salary,
       TO_CHAR(salary, '$99,999.00') AS formatted_salary
FROM employees;
