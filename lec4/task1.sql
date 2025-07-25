-- Q1. Create a table called EMP_TEST with a column NAME having leading and trailing spaces.
CREATE TABLE EMP_TEST (
    name VARCHAR2(100)
);


INSERT INTO EMP_TEST (name) VALUES ('   ali   ');
INSERT INTO EMP_TEST (name) VALUES ('   ahmed');
INSERT INTO EMP_TEST (name) VALUES ('amar   ');
INSERT INTO EMP_TEST (name) VALUES ('   yomna   ');

-- Q2. Display all names using TRIM to remove both leading and trailing spaces.

SELECT TRIM(name) AS trimmed_name
FROM EMP_TEST;

-- Q3. Use LTRIM to remove only leading spaces.

SELECT LTRIM(name) AS left_trimmed_name
FROM EMP_TEST;

-- Q4. Use RTRIM to remove only trailing spaces.

SELECT RTRIM(name) AS right_trimmed_name
FROM EMP_TEST;

-- Q5. Use TRIM to remove a specific character (e.g., ‘*’ or ‘#’) from both sides of a string.
CREATE TABLE EMP_SPECIAL (
    name VARCHAR2(100)
);
INSERT INTO EMP_SPECIAL (name) VALUES ('***Ayman***');
INSERT INTO EMP_SPECIAL (name) VALUES ('###Moan###');
INSERT INTO EMP_SPECIAL (name) VALUES ('***Khalad');
INSERT INTO EMP_SPECIAL (name) VALUES ('Zyad###');

SELECT TRIM(BOTH '*' FROM name) AS cleaned_name
FROM EMP_SPECIAL;

SELECT TRIM(BOTH '#' FROM name) AS cleaned_name
FROM EMP_SPECIAL;



