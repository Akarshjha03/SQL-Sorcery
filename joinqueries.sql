-- 1. List employee names and their department names.
SELECT emp_name, dept_name FROM EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.dept_id = DEPARTMENTS.dept_id;

-- 2. List sailors and boat names they reserved.
SELECT SAILORS.name, BOATS.boat_name FROM SAILORS JOIN RESERVES ON SAILORS.sailor_id = RESERVES.sailor_id JOIN BOATS ON RESERVES.boat_id = BOATS.boat_id;

-- 3. List customer names and branch names for customers having accounts in the same branch.
SELECT CUSTOMERS.customer_name, BRANCH.branch_name FROM CUSTOMERS JOIN ACCOUNTS ON CUSTOMERS.customer_id = ACCOUNTS.customer_id JOIN BRANCH ON ACCOUNTS.branch_id = BRANCH.branch_id;

-- 4. List all loan details and branch names.
SELECT LOANS.*, BRANCH.branch_name FROM LOANS JOIN BRANCH ON LOANS.branch_id = BRANCH.branch_id;

-- 5. List all the products and their supplier names.
SELECT PRODUCTS.product_name, SUPPLIERS.supplier_name FROM PRODUCTS JOIN SUPPLIERS ON PRODUCTS.supplier_id = SUPPLIERS.supplier_id;
