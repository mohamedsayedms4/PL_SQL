-- Q1. Create a table STUDENTS with columns: name, marks.
CREATE TABLE STUDENTS (
    name  VARCHAR2(50),
    marks NUMBER(3)
);

-- Q2. Insert 5 sample students with marks.
INSERT INTO STUDENTS (name, marks) VALUES ('Ali', 95);
INSERT INTO STUDENTS (name, marks) VALUES ('Sara', 88);
INSERT INTO STUDENTS (name, marks) VALUES ('John', 73);
INSERT INTO STUDENTS (name, marks) VALUES ('Lina', 65);
INSERT INTO STUDENTS (name, marks) VALUES ('Omar', 79);

-- Q3. Use CASE to assign grades: 
--     >=90 => 'A', 80–89 => 'B', 70–79 => 'C', else => 'F'
SELECT name, marks,
       CASE
           WHEN marks >= 90 THEN 'A'
           WHEN marks >= 80 THEN 'B'
           WHEN marks >= 70 THEN 'C'
           ELSE 'F'
       END AS grade
FROM STUDENTS;

