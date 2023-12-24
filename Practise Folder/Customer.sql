create table customers(
	customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    balance DECIMAL(10, 2)
);

-- 2
insert into customers values
(1, 'Alice', 'Johnson', 'alice@example.com', 28, 1000.00),
(2, 'Bob', 'Smith', 'bob@example.com', 35, 1500.00),
(3, 'Charlie', 'Williams', 'charlie@example.com', 22, 800.00),
(4, 'David', 'Brown', 'david@example.com', 40, 2000.00),
(5, 'Eve', 'Davis', 'eve@example.com', 28, 1200.00),
(6, 'Frank', 'Jones', 'frank@example.com', 45, 1800.00),
(7, 'Grace', 'Taylor', 'grace@example.com', 33, 900.00),
(8, 'Henry', 'Clark', 'henry@example.com', 50, 2500.00),
(9, 'Ivy', 'Thomas', 'ivy@example.com', 29, 1300.00),
(10, 'Jack', 'Wilson', 'jack@example.com', 28, 1100.00),
(11, 'Kate', 'Anderson', 'kate@example.com', 22, 700.00),
(12, 'Leo', 'Martin', 'leo@example.com', 38, 1700.00),
(13, 'Mia', 'Miller', 'mia@example.com', 42, 2300.00),
(14, 'Noah', 'Garcia', 'noah@example.com', 31, 1400.00),
(15, 'Olivia', 'Lopez', 'olivia@example.com', 27, 1000.00),
(16, 'Paul', 'Harris', 'paul@example.com', 44, 2100.00),
(17, 'Quinn', 'Lewis', 'quinn@example.com', 25, 1200.00),
(18, 'Ryan', 'Jackson', 'ryan@example.com', 30, 1600.00),
(19, 'Sophia', 'White', 'sophia@example.com', 32, 1700.00),
(20, 'Thomas', 'Allen', 'thomas@example.com', 36, 1900.00);


-- 3 Increase the balance of customer Alice by $500:
update customers set balance = balance + 500.00
where customer_id = 1;

-- 4 Decrease the age of customer Bob by 2:
update customers set age = age - 2
where customer_id = 2;

-- 5 Update the email of customer Charlie:
update customers set email = 'charlie@gmail.com'
where customer_id = 3;

-- 6 Increase the balance of customers aged 30 and above by 10%:
SET SQL_SAFE_UPDATES = 0;
update customers set balance = balance * 1.10
where age >= 30;
SET SQL_SAFE_UPDATES = 1;

-- 7 Set the balance of customers with no email to $2000:
update customers set balance = 2000
where email = null;

-- 8
update customers set balance = balance + 100.00
where customer_id = 1 and last_name = 'Johnson';

-- 9
-- Disable safe updates for the current session
SET SQL_SAFE_UPDATES = 0;

-- Update the email of customers with a balance over $1000
UPDATE customers
SET email = 'newemail@example.com'
WHERE balance > 1000.00;

-- Re-enable safe updates for the current session
SET SQL_SAFE_UPDATES = 1;

-- 10 Double the balance of customers with ages between 25 and 40:
update customers set balance = balance * balance
where 25 <= age <= 40;

-- 11 Set the email of customer with ID 5 to 'new_email@example.com'
update customers set email = 'new_email@example.com'
where customer_id = 5;

-- 12 Decrease the balance of customers with an email ending in '.net' by 15%:
update customers set balance = balance - balance * 0.15
where email like '%.net';

-- 13 Increase the balance of customers aged 30 and above by $200, but only for those with a balance less than $2000:
update customers set balance = balance + 200
where balance > 2000;

-- 14 Update the email of customers whose last name is 'Smith' and age is greater than 25:
update customers set email = 'smith@gamilcom'
where last_name = 'Smith' and age > 25;

-- 15 Decrease the balance of customers with a balance over $1500 and age between 30 and 45 by 5%:
update customers set balance = balance - 0.05
where balance > 1500 and 30<= age <= 45; 

-- 16 Update the last name of customers whose first name is 'Alice' to 'Anderson' and age is less than 30:
update customers set last_name = 'Anderson'
where first_name = 'Alice' and age < 30;

-- 17 Set the balance of customers with no email and age greater than 40 to $3000:
update customers set balance = 3000
where email is null and age > 40;

-- 18 Double the balance of customers with an email containing 'example.com' and whose last name is not 'Johnson':
update customers set balance = balance * 2
where email like '%example.com%' and last_name = 'Johnson';

-- 19 Update the email of customers aged 22 or 35, but only if their balance is below $1000
update customers set email = 'update@example.in'
where (age = 22 or age = 35) AND balance < 1000;

-- 20 Increase the balance of customers with a last name starting with 'W' and whose age is not 22 or 40, by $150:
update customers set balance = balance + 150.00
where last_name like 'W%'and (age != 22 or age != 40);

-- 21 Set the email of customers with a balance greater than $2000 and whose first name contains 'C' to 'high_balance@example.com':
update customers set email = 'high_balance@example.com'
where balance > 2000 and first_name like '%C%';

-- 22 Decrease the balance of customers with an email ending in '.org' and whose age is less than 50, by 10%:
update customers set balance = balance - 0.10
where email like '%.org'and age < 50;

select * from customers;
