
-- GROUP BY --
-- Find the total score for each country --
SELECT 
	country,
	SUM(score)
FROM customers
GROUP BY country


-- Find the total score and total number of customers for each country --

SELECT 
country,
SUM (score) AS total_score,
COUNT (id) AS total_numberofcustomers
FROM customers
GROUP BY country

--HAVING --
-- Find the average score of each country considering only the customers with a score not equal to 0 and return only those countries with an average score greater than 430 --
SELECT 
	country ,
	AVG(score) AS total_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430

-- DISTICT --
-- Return unique list of all countries --
SELECT DISTINCT
	country
FROM customers

--TOP--
-- Retrive only 3 customers--
SELECT TOP 3
*
	FROM customers
-- Retrive the top 3 customers with the highest score --
SELECT TOP 3
*
	FROM customers
	ORDER BY score DESC

-- Retrive the lowest 2 customers based on the score --

SELECT TOP 2
*
FROM customers
ORDER BY score ASC

-- Get the 2 most recent orders --

SELECT TOP 2
*
FROM orders

-- DDL Commands --
-- CREATE --
-- Create a new table called persons with columns id , person_name , birth_date , phone --
CREATE TABLE persons (
id INT NOT NULL,
person_name CHAR(50) NOT NULL ,
birth_date DATE ,
phone VARCHAR(15) NOT NULL,
PRIMARY KEY(id)
)
-- ALTER --
-- add a new column called email to the persons table --

ALTER TABLE persons
ADD email VARCHAR(60) NOT NULL

SELECT * 
FROM persons

-- Remove the column phone from persons table --
ALTER TABLE persons
DROP COLUMN phone

SELECT *
FROM persons

-- DROP --
-- Delete the table persons from the database --
DROP TABLE persons

SELECT *
FROM persons

-- DML commands -- 
--INSERT--
--Manually type 1  - 

INSERT INTO customers (id , first_name , country , score )
VALUES ( 6 , 'veena', 'INDIA' , 900),
       (7 , ' srinivas' , 'INDIA' , 1050)

	   SELECT * 
	   FROM customers

-- INSERT using SELECT  type 2 --
-- copy data from customers table into persons -- 
CREATE TABLE persons (
   id INT NOT NULL ,
   person_name VARCHAR(35) NOT NULL,
   birth_date DATE NULL,
   phone VARCHAR (20) ,
   PRIMARY KEY (id)
   )

INSERT INTO persons (id , person_name , birth_date , phone)
SELECT 
	id ,
	first_name ,
	Null,
	'Unknown'
FROM customers

SELECT * 
FROM persons

-- UPDATE --
-- change the score of customer 6 to 0 --

SELECT *
FROM customers

UPDATE customers
SET score= 0
WHERE id = 6

SELECT * 
FROM customers
WHERE id = 6

-- change the score of customers with id 10 to 0 and update the country to 'uk' --
UPDATE customers 
	SET score = 0 ,
	    country ='uk'
WHERE id = 7

SELECT * 
FROM customers 
WHERE id = 7

-- DELETE --
-- Delete all the customers with an ID greater than 5 --
DELETE FROM customers 
WHERE ID > 5

SELECT * 
FROM customers

-- Delete all data from the persons table --
DELETE FROM persons

SELECT *
FROM persons

-- Filtering Data --
-- Comparision Operators --
-- Retrive all customers from Germany --
SELECT * 
FROM customers
WHERE country = 'Germany'

-- Retrive all customers who are not fron Germany --
SELECT *
FROM customers 
WHERE country != 'Germany'

-- Retrive all customers with a score greater than 500 --
SELECT *
FROM customers 
WHERE score > 500

-- Retrive all the customers with a score greater than 500 or more --
SELECT *
FROM customers
WHERE score >= 500

-- Retrive all the customers with a score less than 500 --
SELECT *
FROM customers
WHERE score < 500

-- Retrive all the customers with a score less than or equal 500 --
SELECT *
FROM customers 
WHERE score <= 500

-- Logical --
-- AND --
-- retrive all customers who are from the USA and have a score greater than 500 --

SELECT *
FROM customers 
WHERE country = 'USA' AND score > 500

-- OR --

