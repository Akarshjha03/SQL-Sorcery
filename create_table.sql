-- Query 1: Employee table
SELECT Emp_name, Street, City
FROM Employee;

-- Query 2: Work table
SELECT w.Emp_name, w.Cmp_name, w.Salary
FROM Work w;

-- Query 3: Company table
SELECT Cmp_name, City
FROM Company;

-- Query 4: Manager table
SELECT m.Emp_name, m.Man_name
FROM Manager m;

-- Query 5: Sailors table
SELECT Sid, Sname, Rating, Age
FROM Sailors;

-- Query 6: Reserves table
SELECT Sid, Bid, Day
FROM Reserves;

-- Query 7: Boats table
SELECT Bid, Bname, Color
FROM Boats;

-- Query 8: Client table
SELECT Cl_no, Name, City, Pincode, State, Baldue
FROM Client;

-- Query 9: Product table
SELECT Pr_no, Dscr, Profit, Unit, Qty, Reorder_Lvl, Sell_Price, Cost_Price
FROM Product;

-- Query 10: Salesman table
SELECT Sl_no, Name, Add1, Add2, City, Pin, State, Amt, Tgt, Sales, Rem
FROM Salesman;

-- Query 11: Salesorder table
SELECT Od_no, Cl_no, O_dat, Sl_no, D_Type, Bill, D_dat, Status
FROM Salesorder;

-- Query 12: Salesorder_Details table
SELECT Od_no, Pr_no, Qty_order, Qty_disp, Rate
FROM Salesorder_Details;

-- Query 13: Deposit table
SELECT Act_no, Cname, Bname, Amount, Date
FROM Deposit;

-- Query 14: Borrow table
SELECT Loanno, Cname, Bname, Amount
FROM Borrow;

-- Query 15: Branch table
SELECT Bname, City
FROM Branch;

-- Query 16: Customers table
SELECT Cname, City
FROM Customers;
