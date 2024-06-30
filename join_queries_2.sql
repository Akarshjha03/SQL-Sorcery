-- 1. Find the list of sailors who have reserved all boats.
SELECT name FROM SAILORS WHERE NOT EXISTS (SELECT * FROM BOATS WHERE NOT EXISTS (SELECT * FROM RESERVES WHERE RESERVES.sailor_id = SAILORS.sailor_id AND RESERVES.boat_id = BOATS.boat_id));

-- 2. Find the list of boats which are reserved by all sailors.
SELECT boat_name FROM BOATS WHERE NOT EXISTS (SELECT * FROM SAILORS WHERE NOT EXISTS (SELECT * FROM RESERVES WHERE RESERVES.boat_id = BOATS.boat_id AND RESERVES.sailor_id = SAILORS.sailor_id));

-- 3. Find the names of employees working in the department where department head is ‘John’.
SELECT emp_name FROM EMPLOYEES WHERE dept_id = (SELECT dept_id FROM DEPARTMENTS WHERE head = 'John');

-- 4. Find the list of products which have never been sold.
SELECT product_name FROM PRODUCTS WHERE product_id NOT IN (SELECT product_id FROM ORDERS);
