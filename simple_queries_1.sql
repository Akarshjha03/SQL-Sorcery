-- 1. Describe deposit, branch.
DESC deposit;
DESC branch;

-- 2. Describe borrow, customers.
DESC borrow;
DESC customers;

-- 3. List all data from table DEPOSIT.
SELECT * FROM DEPOSIT;

-- 4. List all data from table BORROW.
SELECT * FROM BORROW;

-- 5. List all data from table CUSTOMERS.
SELECT * FROM CUSTOMERS;

-- 6. List all data from table BRANCH.
SELECT * FROM BRANCH;

-- 7. Give account no and amount of depositors.
SELECT account_no, amount FROM DEPOSIT;

-- 8. List all data from SAILORS.
SELECT * FROM SAILORS;

-- 9. List Boat Name and its color.
SELECT boat_name, color FROM BOATS;

-- 10. List Employee name and its city.
SELECT emp_name, city FROM EMPLOYEES;

-- 11. List all the details of Clients.
SELECT * FROM CLIENTS;

-- 12. Describe various products and its price.
SELECT product_name, price FROM PRODUCTS;

-- 13. Describe sailor’s name, age and its rating.
SELECT name, age, rating FROM SAILORS;

-- 14. Describe the managers of various employees.
SELECT emp_name, manager_name FROM EMPLOYEES;

-- 15. Describe the details of Loan for customers.
SELECT * FROM LOANS;

-- 16. Describe the date of travel of various sailors.
SELECT sailor_name, travel_date FROM SAILORS_TRAVEL;
