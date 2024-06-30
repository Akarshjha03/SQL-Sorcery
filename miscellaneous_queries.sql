-- 1. Find the average rate for each Order.
SELECT order_id, AVG(rate) as average_rate
FROM Orders
GROUP BY order_id;

-- 2. Give the loan details of all the customers.
SELECT * FROM Loans;

-- 3. List the customer name having loan account in the same branch city they live in.
SELECT c.customer_name
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
JOIN Branches b ON l.branch_id = b.branch_id
WHERE c.city = b.city;

-- 4. Provide the loan details of all the customers who have opened their accounts after August’95.
SELECT * FROM Loans
WHERE account_opening_date > '1995-08-31';

-- 5. List the order information for client C00001 and C00002.
SELECT * FROM Orders
WHERE client_id IN ('C00001', 'C00002');

-- 6. List all the information for the orders placed in the month of June.
SELECT * FROM Orders
WHERE EXTRACT(MONTH FROM order_date) = 6;

-- 7. List the details of clients who do not stay in Maharashtra.
SELECT * FROM Clients
WHERE state <> 'Maharashtra';

-- 8. Determine the maximum and minimum product price. Rename the output as “Max_Price” and “Min_Price”.
SELECT MAX(price) AS Max_Price, MIN(price) AS Min_Price
FROM Products;

-- 9. Count the number of products having price less than or equal to 500.
SELECT COUNT(*) AS Product_Count
FROM Products
WHERE price <= 500;

-- 10. List the order number and the day on which client placed an order.
SELECT order_number, order_date, TO_CHAR(order_date, 'Day') AS order_day
FROM Orders;

-- 11. List the month and the date on which an order is to be delivered.
SELECT EXTRACT(MONTH FROM delivery_date) AS delivery_month, EXTRACT(DAY FROM delivery_date) AS delivery_day
FROM Orders;

-- 12. List the date, 25 days after today’s date.
SELECT CURRENT_DATE + INTERVAL '25 days' AS future_date;

-- 13. Find the total of all the billed orders in the month of June.
SELECT SUM(bill_amount) AS total_billed_amount
FROM Orders
WHERE EXTRACT(MONTH FROM order_date) = 6;

-- 14. List the products and orders from customers who have ordered less than 5 units of “Pull Overs”.
SELECT p.product_name, o.order_id
FROM Products p
JOIN Order_Details od ON p.product_id = od.product_id
JOIN Orders o ON od.order_id = o.order_id
WHERE p.product_name = 'Pull Overs' AND od.quantity < 5;

-- 15. Find the list of products and orders placed by “Ivan Bayrosss” and “Mamta Muzumdar”.
SELECT p.product_name, o.order_id
FROM Products p
JOIN Order_Details od ON p.product_id = od.product_id
JOIN Orders o ON od.order_id = o.order_id
JOIN Clients c ON o.client_id = c.client_id
WHERE c.client_name IN ('Ivan Bayrosss', 'Mamta Muzumdar');

-- 16. List the clients who placed order before June’04.
SELECT c.client_name
FROM Clients c
JOIN Orders o ON c.client_id = o.client_id
WHERE o.order_date < '2004-06-01';

-- 17. List all the clients who stays in “Bengaluru” or “Mangalore”.
SELECT * FROM Clients
WHERE city IN ('Bengaluru', 'Mangalore');
