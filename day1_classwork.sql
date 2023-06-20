--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg'

--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount) as pay_between
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT DESC;

--4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
SELECT COUNT(staff_id)
FROM RENTAL
GROUP BY Staff_id
ORDER BY COUNT DESC;

--6. How many different district names are there?
SELECT district
FROM address
GROUP BY district;


--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT DESC;



--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name
FROM customer
WHERE last_name LIKE '%es';


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 380 and 430
GROUP BY amount;






--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT rating
FROM film
GROUP BY rating; 




INtro query, select all records from the actor table
SElECT *
FROM actor;

-- query for first_name and last_name from the actor table
SELECT first_name, last_name
FROM actor;

-- Query for first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name ='Nick';

-- Query for first_name that is LIKE Nick
SELECT first_name, last_name
FROM actor
WHERE first_name Like 'Nick';

-- Query for all first_name data that starts with a J using the LIKE and WHERE clauses -- using the wildcard
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that starts with K and has 2 letters after the K using Like and WHERE clauses -- using underscore
SELECT first_name,actor_id
FROM actor
WHERE first_name LIKE 'K__';

SELECT first_name,actor_id
FROM actor
WHERE first_name LIKE 'K_m';

-- Query for all first_name data that starts with a K and ends with th
-- using the LIKE and WHERE clauses -- using BOTH wildcard AND underscore
SELECT first_name,last_name,actor_id
FROM actor
WHERE first_name LIKE 'K__%th';

-- Comparing operators are: 
-- Greater Than (>) -- Less Than (<)
-- Greater or Equal (>=) -- Less or Equal (<=)
-- Not Equal (<>)

-- Explore Data with SELECT All Query (Specific to changing into new table)
SELECT *
FROM payment;

-- Comparision Operators
-- an amount GREATER than> Less than <
-- Greater or Equal >= Less Than or Equal <=
-- not equal<>
-- Explore Data with SELECT All Query (Specific to changing into new table)
SELECT *
FROM payment;

-- Query for data that shows customers who paid 
-- an amount GREATER than $3
SELECT customer_id,amount
FROM payment
WHERE amount > 3;

-- Query for data that shows customers who paid
-- an amount LESS than $7.99
SELECT customer_id,rental_id, amount
FROM payment
WHERE amount < 7.99;

-- Query for data that shows customers who paid
-- an amount LESS than or EQUAL to $2.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount <= 2.99;

-- ORDER BY
-- BETWEEN
-- Query for all data order by the amount paid


-- Query for data that shows customers who paid
-- an amount GREATER than or EQUAL to $2.00
-- in Ascending order
SELECT *
FROM payment
ORDER BY amount ASC;

SELECT customer_id,amount
FROM payment
ORDER BY amount DESC;
-- Query for data that shows customers who paid
-- an amount BETWEEN $2.00 and $7.99
-- Using the BETWEEN with the AND clause
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 2.99 And 5.99;


-- Query for data that shows customers who paid
-- an amount NOT EQUAL to $0.00
-- Ordered in DESCENDING Order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount;

-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display sum of amounts payed that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;


-- Query to display average of amounts payed that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts payed that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of DISTINCT amounts payed that are greater than $5.99
SELECT COUNT(Distinct amount)
FROM payment
WHERE amount > 5.99;

-- Query for smallest payment made over 7.99
SELECT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

SELECT MIN(amount)
FROM payment
WHERE amount > 7.99


-- Query to display max amount greater than 7.99
SELECT MAX(amount) AS Max_Num_Payments
FROM payment
WHERE amount > 7.99;

SELECT AMOUNT
FROM PAYMENT
WHERE AMOUNT > 7.99
ORDER BY AMOUNT desc
LIMIT 1;



--Query to display all amounts (quick demo of groupby)
SELECT amount
FROM payment
WHERE amount = 7.99;


-- Query to display different amounts grouped together
-- and count the amounts
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer_ids with the summed amounts for each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);


--grab all amounts by customer id
SELECT customer_id, amount
From payment
GROUP BY customer_id, amount
ORDER BY customer_id;

-- Query to display customer_ids with the summed amounts for each customer_id -- Seperate example of 
-- a different way to use Group By
SELECT customer_id,amount
FROM payment
GROUP BY amount,customer_id
ORDER BY customer_id DESC;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;

-- Query to display customer_ids that show up more than 5 times
-- Grouping by the customer's email
SELECT COUNT(customer_id),email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email
HAVING COUNT(customer_id) > 0;
sql-day_1.sql
Displaying sql-day_1.sql.