# task4

🧠 What Are Aggregate Functions?
Aggregate functions are special SQL functions that perform a calculation on a set of values and return a single value. These are used to get meaningful summaries from a large number of records. Some common aggregate functions are SUM(), COUNT(), AVG(), MIN(), and MAX().

➕ SUM() – Total Value
The SUM() function is used to add up all the values in a numeric column. For example, if you have an Orders table and you want to know the total sales amount, you can multiply the price and quantity of each order and then use SUM() to get the final result.

🔢 COUNT() – Number of Records
The COUNT() function is used to count the number of rows that match a certain condition. You can use COUNT(*) to count all rows or COUNT(column_name) to count only non-null values. It helps in finding things like how many orders a customer placed.

📊 AVG() – Average Value
The AVG() function calculates the average of a numeric column. For example, you can find the average price of all products ordered. This is helpful when you want to know the general price level or performance.

🧮 GROUP BY – Grouping the Data
The GROUP BY clause is used to group rows that have the same value in one or more columns. After grouping, you can apply aggregate functions to each group separately. For example, you can group orders by customer_name and then count how many orders each customer has made.

🚦 HAVING – Filter After Grouping
The HAVING clause is used to filter the results of a GROUP BY clause. Unlike WHERE (which filters individual rows), HAVING filters groups. For example, after grouping orders by customer, you can use HAVING to find only those customers who placed more than 2 orders.
