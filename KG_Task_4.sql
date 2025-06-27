create database bank;
use bank;

-- Sample Table: BankAccounts
CREATE TABLE BankAccounts (
  account_id INT,
  customer_name VARCHAR(100),
  branch_name VARCHAR(100),
  account_type VARCHAR(50),
  balance DECIMAL(12, 2),
  city VARCHAR(50)
);

-- Sample Data
INSERT INTO BankAccounts (account_id, customer_name, branch_name, account_type, balance, city) VALUES
(101, 'Ravi Kumar', 'Main Branch', 'Savings', 50000.00, 'Mumbai'),
(102, 'Anita Desai', 'Main Branch', 'Current', 30000.00, 'Mumbai'),
(103, 'Meena Shah', 'East Branch', 'Savings', 75000.00, 'Pune'),
(104, 'Ravi Kumar', 'Main Branch', 'Savings', 25000.00, 'Mumbai'),
(105, 'Rajesh Joshi', 'West Branch', 'Current', 42000.00, 'Delhi'),
(106, 'Anita Desai', 'Main Branch', 'Savings', 38000.00, 'Mumbai');

-- 1. Total Balance in All Accounts
SELECT SUM(balance) AS Total_Balance
FROM BankAccounts;

-- 2. Total Number of Accounts per Customer
SELECT customer_name, COUNT(*) AS Total_Accounts
FROM BankAccounts
GROUP BY customer_name;

-- 3. Average Balance Across All Accounts
SELECT AVG(balance) AS Average_Balance
FROM BankAccounts;

-- 4. Total Balance by Account Type
SELECT account_type, SUM(balance) AS Total_By_Type
FROM BankAccounts
GROUP BY account_type;

-- 5. Number of Accounts by City
SELECT city, COUNT(account_id) AS Accounts_Count
FROM BankAccounts
GROUP BY city;

-- 6. Customers Having More Than 1 Account
SELECT customer_name, COUNT(*) AS Total_Accounts
FROM BankAccounts
GROUP BY customer_name
HAVING COUNT(*) > 1;

-- 7. Branches Where Average Balance is Greater Than 40000
SELECT branch_name, AVG(balance) AS Avg_Balance
FROM BankAccounts
GROUP BY branch_name
HAVING AVG(balance) > 40000;
