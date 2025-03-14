--CREATE EMPLOYEE TABLE
CREATE TABLE EMPLOYEE(
EID INT,
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
AGE INT,
GENDER VARCHAR(50)
)

--CREATE EMPLOYEE SALARY TABLE
CREATE TABLE SALARY(
EID INT,
JOB_TITLE VARCHAR(50),
SALARY INT)

--INSERT RECORDS IN EMPLOYEE TABLE
INSERT INTO EMPLOYEE VALUES
(5001, 'Surya', 'Thapa', 42, 'Male'),
(5002, 'Prapthi', 'Reddy', 25, 'Female'),
(5003, 'Uttej', 'Mediseti', 26, 'Male'),
(5004, 'Ritik', 'Sharma', 25, 'Male'),
(5005, 'Veni', 'Shetty', 34, 'Female'),
(5006, 'Nithya', 'M.V', 25, 'Female'),
(5007, 'Manoj', 'A.R', 27, 'Male'),
(5008, 'Alok', 'Thakur', 50, 'Male'),
(5009, 'Tushar', 'Karamwala', 45, 'Male')

--INSERT RECORDS IN SALARY TABLE
INSERT INTO SALARY VALUES
(5001, 'Salesman', 45000),
(5002, 'Receptionist', 36000),
(5003, 'Salesman', 63000),
(5004, 'Accountant', 47000),
(5005, 'HR', 50000),
(5006, 'Regional Manager', 65000),
(5007, 'Supplier Relations', 41000),
(5008, 'Salesman', 48000),
(5009, 'Accountant', 42000)

/*
SELECT STATEMENT
*, TOP, 
DISTINCT - UNIQUE VALUES IN A SPECIFIC COLUMN, 
COUNT - COUNT OF NON-NULL VALUES, 
AS - ALIAS, 
MAX, MIN, AVG
*/
SELECT * FROM EMPLOYEE
SELECT TOP 6 * FROM EMPLOYEE
SELECT DISTINCT(GENDER) FROM EMPLOYEE
SELECT COUNT(*) AS TOTAL_EMPLOYEE FROM EMPLOYEE
SELECT MAX(SALARY) AS MAX_SALARY FROM SALARY
SELECT MIN(SALARY) AS MIN_SALARY FROM SALARY
SELECT AVG(SALARY) AS AVG_SALARY FROM SALARY

/*
FROM
*/
SELECT * 
FROM SQL_PRACTICE.DBO.EMPLOYEE

/*
WHERE
=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, 
IN - Multiple equal statement
*/
SELECT *
FROM EMPLOYEE
WHERE LASTNAME LIKE 'S%E%'

SELECT * FROM EMPLOYEE
WHERE FIRSTNAME IS NOT NULL

SELECT * FROM EMPLOYEE
WHERE FIRSTNAME IN ('Surya', 'Uttej', 'Nithya')

/* 
GROUP BY - SELECT DISTINCT + ROLLUP, 
ORDER BY
*/
SELECT DISTINCT(GENDER) FROM EMPLOYEE
SELECT GENDER, COUNT(*) FROM EMPLOYEE GROUP BY GENDER

SELECT GENDER, AGE, COUNT(AGE)
FROM EMPLOYEE
GROUP BY GENDER, AGE

SELECT GENDER, COUNT(GENDER) AS COUNTGENDER
FROM EMPLOYEE
WHERE AGE > 30
GROUP BY GENDER
ORDER BY GENDER

SELECT * FROM EMPLOYEE
ORDER BY AGE DESC

SELECT * FROM EMPLOYEE
ORDER BY AGE DESC, GENDER DESC

SELECT * FROM EMPLOYEE
ORDER BY 4 DESC, 5 DESC