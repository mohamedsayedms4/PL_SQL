/*
1. Character Functions – Part 3 (TRIM, LTRIM, RTRIM)

- Create a table 'customers' with a column 'full_name'.
- Insert names with extra spaces at the beginning and/or end.

- Use TRIM to remove both leading and trailing spaces from names.
- Use LTRIM to remove only leading (left) spaces from names.
- Use RTRIM to remove only trailing (right) spaces from names.

- Also demonstrate how to trim specific characters 
  (like $, *, or #) from both sides of a given string using TRIM.
*/
CREATE TABLE customers (
    full_name VARCHAR2(100)
);

INSERT INTO customers VALUES ('   Ahmed Ali   ');
INSERT INTO customers VALUES ('   Mona Samir');
INSERT INTO customers VALUES ('Youssef Adel   ');
INSERT INTO customers VALUES ('   Salma     ');


SELECT full_name, TRIM(full_name) AS trimmed_name
FROM customers;

SELECT full_name, LTRIM(full_name) AS left_trimmed
FROM customers;

SELECT full_name, RTRIM(full_name) AS right_trimmed
FROM customers;


SELECT TRIM('$' FROM '$$$Mohamed$$$') AS trimmed_symbol FROM dual;

SELECT TRIM(' ' FROM 
       REPLACE(REPLACE('*#*#Ali#*', '*', ' '), '#', ' ')
) AS cleaned_name
FROM dual;
----------------------------------------------------------------------------

/*
 * 2. Character Functions – Part 4 (REPLACE, LPAD, RPAD)
Replace all occurrences of the letter 'o' with '0' in the word “promotion”.

Replace the word “basic” with “advanced” in the sentence “This is a basic course”.

Create a departments table with dept_name column. Insert at least 3 department names.

Format each department name to 15 characters by padding with ‘*’ on the left using LPAD.

Format each department name to 15 characters by padding with ‘-’ on the right using RPAD.
 * */
SELECT REPLACE('promotion', 'o', '0') AS replaced_text FROM dual;

SELECT REPLACE('This is a basic course', 'basic', 'advanced') AS updated_sentence FROM dual;

CREATE TABLE departmentss (
    dept_name VARCHAR2(50)
);

INSERT INTO departmentss VALUES ('Finance');
INSERT INTO departmentss VALUES ('Human Resources');
INSERT INTO departmentss VALUES ('IT');


SELECT dept_name, LPAD(dept_name, 15, '*') AS padded_left
FROM departmentss;

SELECT dept_name, RPAD(dept_name, 15, '-') AS padded_right
FROM departmentss;

----------------------------------------------------------------------------------------------------------------

/*
 * 3. TO_CHAR Function
Display the current date in the format DD-MON-YYYY.

Display the current date in the format Day, Month YYYY.

Convert a number to a formatted string with commas and two decimal places using TO_CHAR.

Format an employee’s salary to include a currency symbol using TO_CHAR.

Display system date in the format: YYYY/MM/DD HH24:MI:SS.*/

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS today_date FROM dual;

SELECT TO_CHAR(SYSDATE, 'Day, Month YYYY') AS full_date FROM dual;

SELECT TO_CHAR(12345.6789, '9,999,999.00') AS formatted_number FROM dual;

SELECT TO_CHAR(12345.6789, '9,999,999.00') AS formatted_number FROM dual;

SELECT TO_CHAR(3500, 'L9,999.00') AS salary_formatted FROM dual;
	
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS full_timestamp FROM dual;


-------------------------------------------------------------------------------------------------------------------------

/*
 * 4. Oracle Conditional Expressions – CASE Expressions
Create a students table with name and score columns. Insert at least 5 records.

Write a query using CASE to assign grades based on the score:

90 and above: A

80–89: B

70–79: C

Below 70: F

Modify the query to display “Pass” if score is 60 or more, otherwise “Fail”.

Use CASE to display a message for each student:

"Excellent" for A, "Good" for B, "Average" for C, and "Needs Improvement" for F.

Write a CASE expression using system date to return the name of the day (e.g., “Today is Monday”).
*/


CREATE TABLE students (
    name VARCHAR2(50),
    MARKS NUMBER
);

INSERT INTO students VALUES ('Ahmed', 95);
INSERT INTO students VALUES ('Sara', 83);
INSERT INTO students VALUES ('Youssef', 78);
INSERT INTO students VALUES ('Laila', 66);
INSERT INTO students VALUES ('Omar', 52);

SELECT name, MARKS ,
       CASE
           WHEN MARKS >= 90 THEN 'A'
           WHEN MARKS >= 80 THEN 'B'
           WHEN MARKS >= 70 THEN 'C'
           ELSE 'F'
       END AS grade
FROM students;

SELECT name, MARKS,
       CASE
           WHEN MARKS >= 60 THEN 'Pass'
           ELSE 'Fail'
       END AS result
FROM students;


SELECT name, MARKS,
       CASE
           WHEN MARKS >= 90 THEN 'Excellent'
           WHEN MARKS >= 80 THEN 'Good'
           WHEN MARKS >= 70 THEN 'Average'
           ELSE 'Needs Improvement'
       END AS performance
FROM students;

SELECT 'Today is ' || TO_CHAR(SYSDATE, 'Day') AS current_day FROM dual;

-----------------------------------------------------------------------------------------------------------

/*5. Oracle Conditional Expressions – DECODE Function
Use DECODE to return grade letters ('A', 'B', 'C', 'F') based on specific score values (e.g., 100 = A, 90 = B, etc.).

Create a status_log table with a status_code column containing values like ‘N’, ‘I’, ‘C’.

Use DECODE to convert:

‘N’ → ‘New’

‘I’ → ‘In Progress’

‘C’ → ‘Completed’

Use DECODE to check if a product’s quantity is 0, and display “Out of Stock”, otherwise “Available”.

Write a query using DECODE to display a bonus:

If department is ‘HR’ → 500

If department is ‘IT’ → 1000

If department is ‘Sales’ → 1500

Else → 300*/

SELECT MARKS,
       DECODE(MARKS,
              100, 'A',
               90, 'B',
               80, 'C',
               'F') AS grade
FROM students;

CREATE TABLE status_log (
    status_code CHAR(1)
);

INSERT INTO status_log VALUES ('N');
INSERT INTO status_log VALUES ('I');
INSERT INTO status_log VALUES ('C');

SELECT status_code,
       DECODE(status_code,
              'N', 'New',
              'I', 'In Progress',
              'C', 'Completed',
              'Unknown') AS status_description
FROM status_log;

CREATE TABLE products (
    product_id   NUMBER GENERATED BY DEFAULT AS IDENTITY,
    product_name VARCHAR2(50),
    quantity     NUMBER
);

INSERT INTO products (product_name, quantity) VALUES ('Laptop', 10);
INSERT INTO products (product_name, quantity) VALUES ('Phone', 0);
INSERT INTO products (product_name, quantity) VALUES ('Tablet', 5);
INSERT INTO products (product_name, quantity) VALUES ('Monitor', 0);


SELECT product_name, quantity,
       DECODE(quantity,
              0, 'Out of Stock',
              'Available') AS availability
FROM products;


SELECT dept_name,
       DECODE(dept_name,
              'HR', 500,
              'IT', 1000,
              'Sales', 1500,
              300) AS bonus
FROM departmentss;










