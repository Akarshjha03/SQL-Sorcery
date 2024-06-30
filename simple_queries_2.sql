-- 1. Give name of depositors having amount greater than 4000.
SELECT depositor_name FROM DEPOSIT WHERE amount > 4000;

-- 2. List the employees having salary less than 22000.
SELECT emp_name FROM EMPLOYEES WHERE salary < 22000;

-- 3. List the sailors having age more than 25.
SELECT name FROM SAILORS WHERE age > 25;

-- 4. List the boats travelling on 10-oct-98.
SELECT * FROM BOATS WHERE travel_date = '10-OCT-98';

-- 5. List the details of boat “Interlake”.
SELECT * FROM BOATS WHERE boat_name = 'Interlake';

-- 6. List the details of the red colored boat.
SELECT * FROM BOATS WHERE color = 'red';

-- 7. List the details of clients whose city is Mumbai.
SELECT * FROM CLIENTS WHERE city = 'Mumbai';

-- 8. List Client Name, due balance and city of the clients having balance greater than 1500.
SELECT client_name, due_balance, city FROM CLIENTS WHERE due_balance > 1500;

-- 9. Describe the details of products having selling price less than 500.
SELECT * FROM PRODUCTS WHERE selling_price < 500;

-- 10. List the products for which quantity ordered is less than 120 and cost price is greater than 250.
SELECT * FROM PRODUCTS WHERE quantity_ordered < 120 AND cost_price > 250;

-- 11. Display account details having amount greater 2200.
SELECT * FROM ACCOUNTS WHERE amount > 2200;

-- 12. Display all the customers staying in Nagpur.
SELECT * FROM CUSTOMERS WHERE city = 'Nagpur';

-- 13. Display the names of sailors having rating greater than 7.
SELECT name FROM SAILORS WHERE rating > 7;

-- 14. Display the orders made in the month of June.
SELECT * FROM ORDERS WHERE EXTRACT(MONTH FROM order_date) = 6;

-- 15. List all the accounts created in the month of March.
SELECT * FROM ACCOUNTS WHERE EXTRACT(MONTH FROM creation_date) = 3;
