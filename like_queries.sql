-- 1. Display all customers whose name start with ‘M’.
SELECT * FROM CUSTOMERS WHERE customer_name LIKE 'M%';

-- 2. Display all the customers whose name ends with ‘L’.
SELECT * FROM CUSTOMERS WHERE customer_name LIKE '%L';

-- 3. Display all loan details whose branch starts with ‘A’.
SELECT * FROM LOANS WHERE branch_name LIKE 'A%';

-- 4. Display the details of sailors whose name is minimum 6 characters long.
SELECT * FROM SAILORS WHERE LENGTH(name) >= 6;

-- 5. Display the details of Employees whose address starts with ‘S’.
SELECT * FROM EMPLOYEES WHERE address LIKE 'S%';

-- 6. List the details of the boat ending with ‘e’.
SELECT * FROM BOATS WHERE boat_name LIKE '%e';

-- 7. List the details of clients having ‘h’ as a 3rd character in his/her name.
SELECT * FROM CLIENTS WHERE SUBSTR(client_name, 3, 1) = 'h';

-- 8. List Client Name, due balance and city whose pin code starts with 4.
SELECT client_name, due_balance, city FROM CLIENTS WHERE pin_code LIKE '4%';

-- 9. List all customers whose city contains ‘a’ as second character.
SELECT * FROM CUSTOMERS WHERE SUBSTR(city, 2, 1) = 'a';

-- 10. List client names and city whose state has ‘a’ as fourth or fifth character.
SELECT client_name, city FROM CLIENTS WHERE SUBSTR(state, 4, 1) = 'a' OR SUBSTR(state, 5, 1) = 'a';
