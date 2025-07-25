-- Q1. Use DECODE to achieve the same result as the CASE example above.
SELECT name, marks,
       DECODE(
           TRUNC(marks / 10),
           10, 'A',
            9, 'A',
            8, 'B',
            7, 'C',
           'F'
       ) AS grade
FROM STUDENTS;

-- Q2. Create a table ORDERS with a column status ('P', 'S', 'D').
CREATE TABLE ORDERS (
    order_id NUMBER,
    status   CHAR(1)
);

INSERT INTO ORDERS (order_id, status) VALUES (1, 'P');
INSERT INTO ORDERS (order_id, status) VALUES (2, 'S');
INSERT INTO ORDERS (order_id, status) VALUES (3, 'D');
INSERT INTO ORDERS (order_id, status) VALUES (4, 'X'); ا


-- Q3. Use DECODE to display full form of status:
--     'P' => 'Pending', 'S' => 'Shipped', 'D' => 'Delivered'

SELECT order_id,
       status,
       DECODE(status,
              'P', 'Pending',
              'S', 'Shipped',
              'D', 'Delivered',
              'Unknown') AS status_description
FROM ORDERS;
