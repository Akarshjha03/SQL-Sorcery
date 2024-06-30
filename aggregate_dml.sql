-- 1. List total deposit from deposit.
SELECT SUM(amount) FROM DEPOSIT;

-- 2. Give maximum loan given to the customer.
SELECT MAX(loan_amount) FROM LOANS;

-- 3. Describe the average age of all the sailors.
SELECT AVG(age) FROM SAILORS;

-- 4. Count total number of customers.
SELECT COUNT(*) FROM CUSTOMERS;

-- 5. Count total number of customer’s cities.
SELECT COUNT(DISTINCT city) FROM CUSTOMERS;

-- 6. Display total target for the salesman.
SELECT SUM(target) FROM SALESMAN;

-- 7. Update the salary of the employee having 10000 to 11500.
UPDATE EMPLOYEES SET salary = 11500 WHERE salary = 10000;

-- 8. Update the city of client from Bangalore to Bengaluru.
UPDATE CLIENTS SET city = 'Bengaluru' WHERE city = 'Bangalore';

-- 9. Give the 15% hike in the salary of all the Employees. Rename that column to “New Salary”.
UPDATE EMPLOYEES SET salary = salary * 1.15 AS "New Salary";
