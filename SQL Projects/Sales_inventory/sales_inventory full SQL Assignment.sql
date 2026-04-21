-- CREATE schema assignment
CREATE SCHEMA assignment;


-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory t
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from customers c;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(*) from products p ;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price from products p ;

-- 4. Write a query to find the average price of all products from the `Products` table.
select 
	AVG(price) as average_price
	from products p;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.
select
	SUM(total_amount) as total_sales
	from sales s ;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct c.membership_status  from customers c ;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select
	concat(c.first_name , ' ', c.last_name ) as full_name
	from customers c ;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select * from products p where p.category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select  
	MAX(price) as highest_price
	from products p ;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select 
	product_id,
	count(*) as sales_count
from sales s 
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select 
	product_id,
	sum(s.quantity_sold ) as sales_quantity_count
from sales s 
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select  
	MIN(price) as lowest_price
	from products p ;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select * from sales s where s.total_amount > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
select  
	s.product_id,
	p.product_name,
	s.quantity_sold,
	s.total_amount 
from sales s 
left join products p 
on s.product_id = p.product_id;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
SELECT 
    c.customer_id,
    concat(c.first_name, ' ', c.last_name )as full_name,
    SUM(s.total_amount) AS total_spent
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
SELECT 
    c.first_name,
    c.last_name,
    p.product_name,
    s.quantity_sold 
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
JOIN Products p ON s.product_id = p.product_id;

-- *17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select  
	c1.customer_id as customer1,
	c1.first_name as first_name_1,
	c1.last_name as last_name_1,
    c2.customer_id as customer2,
    c1.first_name as first_name_2,
	c1.last_name as last_name_2,
    c1.membership_status
from customers c1
join customers c2
	on c1.membership_status = c2.membership_status
	and c1.customer_id < c2.customer_id 
order by c1.membership_status, c1.customer_id ;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
SELECT 
	p.product_id,
    p.product_name,
    COUNT(s.sale_id) AS number_of_sales,
    sum(s.quantity_sold) as total_sold
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
SELECT 
	product_id,
    product_name,
    stock_quantity 
FROM Products
WHERE stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
SELECT 
	p.product_id,
    p.product_name,
    SUM(s.quantity_sold ) AS total_quantity
FROM Products p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity_sold) > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select distinct 
	s.customer_id,
	c.first_name, 
	c.last_name,
	p.category
from customers c
join sales s on c.customer_id = s.customer_id 
join products p on s.product_id = p.product_id 
where p.category in ('Electronics', 'Appliances');


-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select  
	p.product_name,
	SUM(s.total_amount) as total_sales_amount
from products p 
join sales s on p.product_id = s.product_id
group by p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select distinct 
	c.customer_id,
	concat(c.first_name, ' ', c.last_name )as full_name,
	c.email,
	s.sale_date 
from customers c 
join sales s on c.customer_id = s.customer_id
where extract(year from s.sale_date ) = 2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.
select  
	c.customer_id,
	concat(c.first_name, ' ', c.last_name )as full_name,
	sum(s.total_amount ) as total_sales_2023
from customers c 
join sales s on c.customer_id = s.customer_id
where extract(year from s.sale_date ) = 2023
group by c.customer_id 
order by total_sales_2023 desc;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select  
	p.product_id,
	p.product_name,
	p.category,
	p.price as unit_price,
	s.total_amount as sale_total
from products p 
join sales s on p.product_id = s.product_id
order by p.price desc limit 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select 
	count(distinct c.customer_id) as total_customers
from customers c 
join sales s on c.customer_id = s.customer_id
where s.total_amount > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select  
	count(s.sale_id) as total_sales,
	SUM(s.total_amount) as total_revenue
from customers c
join sales s on c.customer_id = s.customer_id 
join products p on s.product_id = p.product_id
where c.membership_status = 'Gold';
-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select 
	p.product_id,
	p.product_name,
	p.category,
	p.supplier,
	i.stock_quantity
from products p
join inventory i on p.product_id = i.product_id
where i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select  
	c.customer_id,
	concat(c.first_name, ' ', c.last_name )as full_name,
	sum(s.quantity_sold) as total_purchase
from customers c 
join sales s on c.customer_id = s.customer_id
group by c.customer_id
having SUM(s.quantity_sold ) > 5;


-- 30. Write a query to find the average quantity sold per product.
select 
	p.product_id,
	p.product_name,
	avg(s.quantity_sold) as avg_qty_sold
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, product_name
order by avg_qty_sold desc;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select 
	count(sale_id) as total_sales,
	sum(total_amount) as total_revenue
from sales 
where extract(year from sale_date) = 2023 and extract(month from sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select  
	c.customer_id, 
	concat(c.first_name, ' ', c.last_name )as full_name,
	sum(total_amount) as total_2023
from customers c 
join sales s on c.customer_id = s.customer_id
where extract (year from s.sale_date ) = 2023
group by c.customer_id, full_name 
order by total_2023 desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select  
	p.product_id,
    p.product_name,
    p.category,
    i.stock_quantity as remaining_stock,
    sum(s.quantity_sold) as total_units_sold
from products p
join sales s     ON p.product_id = s.product_id
join inventory i ON p.product_id = i.product_id
group by p.product_id, i.stock_quantity 
having i.stock_quantity < 5
order by i.stock_quantity asc;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select 
    p.product_name,
    sum(s.quantity_sold)    as total_units_sold,
    sum(s.total_amount)     as total_sales_amount
from products p
join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name
order by total_sales_amount desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.registration_date,
    s.sale_date,
    (s.sale_date - c.registration_date) as days_after_registration
from customers c
join sales s on c.customer_id = s.customer_id
where s.sale_date between c.registration_date 
                      and c.registration_date + interval '7 days'
order by days_after_registration asc;

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT 
    s.sale_id,
    p.product_name,
    p.price             AS unit_price,
    s.quantity_sold,
    s.sale_date,
    s.total_amount
FROM assignment.sales s
JOIN assignment.products p ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500
ORDER BY p.price DESC;
-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(s.sale_id) AS total_purchases
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_purchases DESC
-- 38. Write a query to find the total quantity of products sold per customer.
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity_sold) AS total_quantity_sold
FROM assignment.customers c
JOIN assignment.sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_quantity_sold DESC;
-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
SELECT 
    product_id,
    product_name,
    stock_quantity,
    'Highest Stock' AS stock_label
FROM assignment.products
WHERE stock_quantity = (SELECT MAX(stock_quantity) FROM assignment.products)

UNION ALL

SELECT 
    product_id,
    product_name,
    stock_quantity,
    'Lowest Stock'  AS stock_label
FROM assignment.products
WHERE stock_quantity = (SELECT MIN(stock_quantity) FROM assignment.products)

ORDER BY stock_label;
-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.price                 AS unit_price,
    SUM(s.quantity_sold)    AS total_units_sold,
    SUM(s.total_amount)     AS total_sales_amount
FROM assignment.products p
JOIN assignment.sales s ON p.product_id = s.product_id
WHERE p.product_name ILIKE '%phone%'
GROUP BY p.product_id, p.product_name, p.category, p.price
ORDER BY total_sales_amount DESC;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    sum(s.total_amount) as total_sales_amount
from customers c
inner join sales s    on c.customer_id = s.customer_id
inner join products p on s.product_id  = p.product_id
where c.membership_status = 'Gold'
group by c.customer_id, c.first_name, c.last_name, p.product_name
order by total_sales_amount desc;

-- 42. Write a query to find the total sales of products by category.
select
    p.category,
    sum(s.total_amount)  as total_sales_amount,
    sum(s.quantity_sold) as total_units_sold
from products p
inner join sales s on p.product_id = s.product_id
group by p.category
order by total_sales_amount desc;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select
    p.product_id,
    p.product_name,
    extract(year  from s.sale_date) as sale_year,
    extract(month from s.sale_date) as sale_month,
    sum(s.quantity_sold)            as total_units_sold,
    sum(s.total_amount)             as total_sales_amount
from products p
inner join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name, sale_year, sale_month
order by sale_year, sale_month, total_sales_amount desc;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select
    p.product_id,
    p.product_name,
    p.category,
    sum(s.quantity_sold) as total_units_sold,
    i.stock_quantity     as remaining_stock
from sales s
inner join products p   on s.product_id = p.product_id
inner join inventory i  on p.product_id = i.product_id
group by p.product_id, p.product_name, p.category, i.stock_quantity
having i.stock_quantity > 0
order by remaining_stock asc;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    sum(s.total_amount) as total_spent
from customers c
inner join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, c.membership_status
order by total_spent desc
limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select
    count(distinct s.product_id) as unique_products_sold
from sales s
where extract(year from s.sale_date) = 2023;

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select
    p.product_id,
    p.product_name,
    p.category,
    max(s.sale_date) as last_sale_date
from products p
inner join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name, p.category
having max(s.sale_date) < current_date - interval '6 months'
order by last_sale_date asc;
-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select
    p.product_id,
    p.product_name,
    p.price,
    sum(s.quantity_sold) as total_quantity_sold,
    sum(s.total_amount)  as total_sales_amount
from products p
inner join sales s on p.product_id = s.product_id
where p.price between 200 and 800
group by p.product_id, p.product_name, p.price
order by total_quantity_sold desc;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    sum(s.total_amount) as total_spent_2023
from customers c
inner join sales s on c.customer_id = s.customer_id
where extract(year from s.sale_date) = 2023
group by c.customer_id, c.first_name, c.last_name, c.membership_status
order by total_spent_2023 desc;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select
    p.product_id,
    p.product_name,
    p.price,
    sum(s.quantity_sold) as total_quantity_sold
from products p
inner join sales s on p.product_id = s.product_id
where p.price > 200
group by p.product_id, p.product_name, p.price
having sum(s.quantity_sold) > 100
order by total_quantity_sold desc;

-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?
select
    c.customer_id,
    c.first_name,
    c.last_name,
    sum(s.total_amount) as total_spent
from customers c
inner join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
having sum(s.total_amount) > (
    select avg(customer_total)
    from (
        select sum(total_amount) as customer_total
        from sales
        group by customer_id
    ) as avg_subquery
)
order by total_spent desc;

-- 52. Which products are priced higher than the average price of all products?
select
    product_id,
    product_name,
    category,
    price
from products
where price > (
    select avg(price)
    from products
)
order by price desc;

-- 53. Which customers have never made a purchase?
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    c.membership_status
from customers c
where c.customer_id not in (
    select distinct customer_id
    from sales
)
order by c.customer_id;

-- 54. Which products have never been sold?
select
    p.product_id,
    p.product_name,
    p.category,
    p.price,
    p.stock_quantity
from products p
where p.product_id not in (
    select distinct product_id
    from sales
)
order by p.product_id;

-- 55. Which customer made the single most expensive purchase (total amount)?
select
    c.customer_id,
    c.first_name,
    c.last_name,
    s.sale_id,
    s.sale_date,
    s.total_amount
from customers c
inner join sales s on c.customer_id = s.customer_id
where s.total_amount = (
    select max(total_amount)
    from sales
);
-- 56. Which products have total sales greater than the average total sales across all products?
select
    p.product_id,
    p.product_name,
    sum(s.total_amount) as product_total_sales
from products p
inner join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name
having sum(s.total_amount) > (
    select avg(product_total)
    from (
        select sum(total_amount) as product_total
        from sales
        group by product_id
    ) as product_avg_subquery
)
order by product_total_sales desc;


-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers
select
    customer_id,
    first_name,
    last_name,
    registration_date,
    membership_status
from customers
where registration_date < (
    select to_timestamp(avg(extract(epoch from registration_date)))::date
    from customers
)
order by registration_date asc;

-- 58. Which products have a price higher than the average price within their own category?
select
    p.product_id,
    p.product_name,
    p.category,
    p.price,
    category_avg.avg_category_price
from products p
inner join (
    select
        category,
        round(avg(price), 2) as avg_category_price
    from products
    group by category
) as category_avg on p.category = category_avg.category
where p.price > category_avg.avg_category_price
order by p.category, p.price desc;


-- 59. Which customers have spent more than the customer with ID = 10?
select
    c.customer_id,
    c.first_name,
    c.last_name,
    sum(s.total_amount) as total_spent
from customers c
inner join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
having sum(s.total_amount) > (
    select sum(total_amount)
    from sales
    where customer_id = 10
)
order by total_spent desc;

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select
    p.product_id,
    p.product_name,
    sum(s.quantity_sold) as total_quantity_sold
from products p
inner join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name
having sum(s.quantity_sold) > (
    select avg(product_qty)
    from (
        select sum(quantity_sold) as product_qty
        from sales
        group by product_id
    ) as qty_avg_subquery
)
order by total_quantity_sold desc;


-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        sum(s.total_amount) as total_spent
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
)
select *
from customer_spending
order by total_spent desc
limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with product_quantity as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.quantity_sold) as total_quantity_sold
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
)
select *
from product_quantity
order by total_quantity_sold desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with category_revenue as (
    select
        p.category,
        sum(s.total_amount)  as total_revenue,
        sum(s.quantity_sold) as total_units_sold
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.category
)
select *
from category_revenue
order by total_revenue desc
limit 1;


-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with customer_purchases as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        count(s.sale_id) as number_of_purchases
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
)
select *
from customer_purchases
where number_of_purchases > 2
order by number_of_purchases desc;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with product_quantity as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.quantity_sold) as total_quantity_sold
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
),
average_quantity as (
    select avg(total_quantity_sold) as avg_quantity
    from product_quantity
)
select
    pq.product_id,
    pq.product_name,
    pq.category,
    pq.total_quantity_sold,
    round(aq.avg_quantity, 2) as avg_quantity_sold
from product_quantity pq
cross join average_quantity aq
where pq.total_quantity_sold > aq.avg_quantity
order by pq.total_quantity_sold desc;


-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        sum(s.total_amount) as total_spent
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
),
average_spending as (
    select avg(total_spent) as avg_spent
    from customer_spending
)
select
    cs.customer_id,
    cs.first_name,
    cs.last_name,
    cs.membership_status,
    cs.total_spent,
    round(av.avg_spent, 2) as avg_customer_spending
from customer_spending cs
cross join average_spending av
where cs.total_spent > av.avg_spent
order by cs.total_spent desc;

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with product_revenue as (
    select
        p.product_id,
        p.product_name,
        p.category,
        p.price as unit_price,
        sum(s.quantity_sold) as total_units_sold,
        sum(s.total_amount) as total_revenue
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category, p.price
)
select *
from product_revenue
order by total_revenue desc;


-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as (
    select
        extract(year  from sale_date) as sale_year,
        extract(month from sale_date) as sale_month,
        sum(total_amount) as total_revenue,
        count(sale_id) as total_transactions
    from sales
    group by sale_year, sale_month
)
select *
from monthly_sales
order by total_revenue desc
limit 1;


-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with product_sales_count as (
    select
        p.product_id,
        p.product_name,
        p.category,
        count(distinct s.customer_id) as unique_customers,
        count(s.sale_id) as total_sales
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
)
select *
from product_sales_count
where unique_customers > 3
order by unique_customers desc;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with product_quantity as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.quantity_sold) as total_quantity_sold
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
),
average_quantity as (
    select avg(total_quantity_sold) as avg_quantity
    from product_quantity
)
select
    pq.product_id,
    pq.product_name,
    pq.category,
    pq.total_quantity_sold,
    round(aq.avg_quantity, 2) as avg_quantity_sold
from product_quantity pq
cross join average_quantity aq
where pq.total_quantity_sold < aq.avg_quantity
order by pq.total_quantity_sold asc;



-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    sum(s.total_amount) as total_spent,
    rank()     over (order by sum(s.total_amount) desc)   as spend_rank,
    dense_rank() over (order by sum(s.total_amount) desc) as spend_dense_rank
from customers c
inner join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, c.membership_status
order by spend_rank;



-- 72. Rank products based on total quantity sold.
select
    p.product_id,
    p.product_name,
    p.category,
    sum(s.quantity_sold) as total_quantity_sold,
    rank()     over (order by sum(s.quantity_sold) desc) as quantity_rank,
    dense_rank() over (order by sum(s.quantity_sold) desc)  as quantity_dense_rank
from products p
inner join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name, p.category
order by quantity_rank;


-- 73. Identify the 3rd highest spending customer.
with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        sum(s.total_amount) as total_spent,
        dense_rank() over (order by sum(s.total_amount) desc)  as spend_rank
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
)
select *
from customer_spending
where spend_rank = 3;



-- 74. Identify the 2nd most expensive product.
with product_pricing as (
    select
        product_id,
        product_name,
        category,
        price,
        dense_rank() over (order by price desc) as price_rank
    from products
)
select *
from product_pricing
where price_rank = 2;


-- 75. Show the ranking of products within each category based on price.
select
    product_id,
    product_name,
    category,
    price,
    rank() over (partition by category order by price desc) as rank_in_category,
    dense_rank() over (partition by category order by price desc) as dense_rank_in_category
from products
order by category, rank_in_category;



-- 76. Show the ranking of customers based on the number of purchases they made.
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    count(s.sale_id) as total_purchases,
    rank()     over (order by count(s.sale_id) desc) as purchase_rank,
    dense_rank() over (order by count(s.sale_id) desc) as purchase_dense_rank
from customers c
inner join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, c.membership_status
order by purchase_rank;


-- 77. Show the running total of sales amounts ordered by sale_date.
select
    sale_id,
    customer_id,
    product_id,
    sale_date,
    total_amount,
    sum(total_amount) over (
        order by sale_date, sale_id
        rows between unbounded preceding and current row
    ) as running_total
from sales
order by sale_date, sale_id;


-- 78. Show the previous sale amount for each sale ordered by sale_date.
select
    sale_id,
    customer_id,
    product_id,
    sale_date,
    total_amount,
    lag(total_amount, 1) over (
        order by sale_date, sale_id
    ) as previous_sale_amount
from sales
order by sale_date, sale_id;


-- 79. Show the next sale amount for each sale ordered by sale_date.
select
    sale_id,
    customer_id,
    product_id,
    sale_date,
    total_amount,
    lead(total_amount, 1) over (
        order by sale_date, sale_id
    ) as next_sale_amount
from sales
order by sale_date, sale_id;


-- 80. Divide customers into 4 groups based on total spending.
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    sum(s.total_amount) as total_spent,
    ntile(4) over (order by sum(s.total_amount) desc) as spending_quartile
from customers c
inner join sales s on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, c.membership_status
order by spending_quartile, total_spent desc;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
with customer_categories as (
	select  
		c.customer_id,
		c.first_name, 
		c.last_name,
		count(distinct p.category ) as categories_purchased
	from customers c
	inner join sales s on c.customer_id = s.customer_id
	inner join products p on s.product_id = p.product_id 
	group by c.customer_id, c.first_name, c.last_name
)
select * 
from customer_categories
where categories_purchased > 1
order by categories_purchased desc;

-- 82. Which customers purchased products within 7 days of registering?
select  
	c.customer_id, 
	c.first_name, 
	c.last_name,
	c.registration_date,
	s.sale_date,
	(s.sale_date - c.registration_date ) as days_after_registration
from customers c
inner join sales s on c.customer_id = s.customer_id 
where s.sale_date between c.registration_date and c.registration_date + interval '7 days'
order by days_after_registration asc;


-- 83. Which products have lower stock remaining than the average stock quantity?
select
    product_id,
    product_name,
    category,
    stock_quantity,
    round((select avg(stock_quantity) from products), 2) as avg_stock_quantity
from products
where stock_quantity < (
    select avg(stock_quantity)
    from products
)
order by stock_quantity asc;
-- 84. Which customers purchased the same product more than once?
select
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    count(s.sale_id) as times_purchased
from customers c
inner join sales s    on c.customer_id = s.customer_id
inner join products p on s.product_id  = p.product_id
group by c.customer_id, c.first_name, c.last_name, p.product_name
having count(s.sale_id) > 1
order by times_purchased desc;
-- 85. Which product categories generated the highest total revenue?
with category_revenue as (
    select
        p.category,
        sum(s.total_amount)  as total_revenue,
        sum(s.quantity_sold) as total_units_sold,
        count(s.sale_id)     as total_transactions
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.category
)
select
    category,
    total_revenue,
    total_units_sold,
    total_transactions,
    rank() over (order by total_revenue desc) as revenue_rank
from category_revenue
order by revenue_rank;


-- 86. Which products are among the top 3 most sold products?
with product_sales as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.quantity_sold)                                   as total_quantity_sold,
        dense_rank() over (order by sum(s.quantity_sold) desc) as sales_rank
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
)
select *
from product_sales
where sales_rank <= 3
order by sales_rank;


-- 87. Which customers purchased the most expensive product?
select
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    p.price,
    s.sale_date
from customers c
inner join sales s    on c.customer_id = s.customer_id
inner join products p on s.product_id  = p.product_id
where p.price = (
    select max(price)
    from products
)
order by s.sale_date;


-- 88. Which products were purchased by the highest number of unique customers?
with product_reach as (
    select
        p.product_id,
        p.product_name,
        p.category,
        count(distinct s.customer_id)                             as unique_customers,
        dense_rank() over (
            order by count(distinct s.customer_id) desc
        )                                                         as reach_rank
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
)
select *
from product_reach
order by reach_rank;


-- 89. Which customers made purchases above the average sale amount?
with avg_sale as (
    select avg(total_amount) as avg_amount
    from sales
)
select
    c.customer_id,
    c.first_name,
    c.last_name,
    s.sale_id,
    s.total_amount,
    round(av.avg_amount, 2) as avg_sale_amount
from customers c
inner join sales s    on c.customer_id = s.customer_id
cross join avg_sale av
where s.total_amount > av.avg_amount
order by s.total_amount desc;


-- 90. Which customers purchased more products than the average quantity purchased per customer?
with customer_quantity as (
    select
        customer_id,
        sum(quantity_sold) as total_quantity
    from sales
    group by customer_id
),
avg_quantity as (
    select avg(total_quantity) as avg_qty
    from customer_quantity
)
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    cq.total_quantity,
    round(aq.avg_qty, 2) as avg_quantity_per_customer
from customers c
inner join customer_quantity cq on c.customer_id = cq.customer_id
cross join avg_quantity aq
where cq.total_quantity > aq.avg_qty
order by cq.total_quantity desc;


-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?
with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        sum(s.total_amount)                                          as total_spent,
        ntile(10) over (order by sum(s.total_amount) desc)           as spending_decile
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
)
select *
from customer_spending
where spending_decile = 1          -- decile 1 = top 10%
order by total_spent desc;

-- 92. Which products contribute to the top 50% of total revenue?
with product_revenue as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.total_amount)  as product_revenue
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
),
revenue_with_cumulative as (
    select
        product_id,
        product_name,
        category,
        product_revenue,
        sum(product_revenue) over ()                                           as grand_total,
        sum(product_revenue) over (order by product_revenue desc
            rows between unbounded preceding and current row)                  as cumulative_revenue,
        round(
            100.0 * sum(product_revenue) over (order by product_revenue desc
                rows between unbounded preceding and current row)
            / sum(product_revenue) over (), 2
        )                                                                      as cumulative_pct
    from product_revenue
)
select *
from revenue_with_cumulative
where cumulative_pct <= 50
order by product_revenue desc;


-- 93. Which customers made purchases in consecutive months?
with customer_months as (
    select distinct
        customer_id,
        date_trunc('month', sale_date)::date                              as sale_month
    from sales
),
with_next_month as (
    select
        customer_id,
        sale_month,
        lead(sale_month) over (
            partition by customer_id order by sale_month
        )                                                                  as next_sale_month
    from customer_months
)
select distinct
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status
from with_next_month wn
inner join customers c on wn.customer_id = c.customer_id
where next_sale_month = sale_month + interval '1 month'
order by c.customer_id;


-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
with product_stock_vs_sold as (
    select
        p.product_id,
        p.product_name,
        p.category,
        p.stock_quantity,
        coalesce(sum(s.quantity_sold), 0)              as total_sold,
        p.stock_quantity - coalesce(sum(s.quantity_sold), 0) as stock_gap
    from products p
    left join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category, p.stock_quantity
)
select
    product_id,
    product_name,
    category,
    stock_quantity,
    total_sold,
    stock_gap,
    rank() over (order by abs(stock_gap) desc) as gap_rank
from product_stock_vs_sold
order by gap_rank;


-- 95. Which customers have spending above the average spending of their membership tier?
with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        sum(s.total_amount) as total_spent
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
),
tier_avg as (
    select
        membership_status,
        avg(total_spent) as avg_tier_spending
    from customer_spending
    group by membership_status
)
select
    cs.customer_id,
    cs.first_name,
    cs.last_name,
    cs.membership_status,
    cs.total_spent,
    round(ta.avg_tier_spending, 2) as avg_spending_in_tier
from customer_spending cs
inner join tier_avg ta on cs.membership_status = ta.membership_status
where cs.total_spent > ta.avg_tier_spending
order by cs.membership_status, cs.total_spent desc;


-- 96. Which products have higher sales than the average sales within their category?
with product_revenue as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.total_amount) as total_sales
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
),
category_avg as (
    select
        category,
        avg(total_sales) as avg_category_sales
    from product_revenue
    group by category
)
select
    pr.product_id,
    pr.product_name,
    pr.category,
    pr.total_sales,
    round(ca.avg_category_sales, 2) as avg_sales_in_category
from product_revenue pr
inner join category_avg ca on pr.category = ca.category
where pr.total_sales > ca.avg_category_sales
order by pr.category, pr.total_sales desc;
-- 97. Which customer made the largest single purchase relative to their total spending?
with customer_totals as (
    select
        customer_id,
        sum(total_amount) as total_spent
    from sales
    group by customer_id
),
customer_max_purchase as (
    select
        s.customer_id,
        max(s.total_amount)                                      as largest_purchase,
        ct.total_spent,
        round(100.0 * max(s.total_amount) / ct.total_spent, 2)  as pct_of_total
    from sales s
    inner join customer_totals ct on s.customer_id = ct.customer_id
    group by s.customer_id, ct.total_spent
)
select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.membership_status,
    cm.largest_purchase,
    cm.total_spent,
    cm.pct_of_total
from customer_max_purchase cm
inner join customers c on cm.customer_id = c.customer_id
order by cm.pct_of_total desc;


-- 98. Which products rank among the top 3 most sold products within each category?
with product_sales as (
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.quantity_sold)                                              as total_quantity_sold,
        dense_rank() over (
            partition by p.category
            order by sum(s.quantity_sold) desc
        )                                                                 as rank_in_category
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
)
select *
from product_sales
where rank_in_category <= 3
order by category, rank_in_category;


-- 99. Which customers are tied for the highest total spending?
with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        sum(s.total_amount)                                       as total_spent,
        rank() over (order by sum(s.total_amount) desc)           as spend_rank
    from customers c
    inner join sales s on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.membership_status
)
select *
from customer_spending
where spend_rank = 1
order by customer_id;


-- 100. Which products generated sales every year present in the dataset?
with distinct_years as (
    select count(distinct extract(year from sale_date)) as total_years
    from sales
),
product_year_sales as (
    select
        p.product_id,
        p.product_name,
        p.category,
        count(distinct extract(year from s.sale_date)) as years_with_sales
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
)
select
    pys.product_id,
    pys.product_name,
    pys.category,
    pys.years_with_sales
from product_year_sales pys
cross join distinct_years dy
where pys.years_with_sales = dy.total_years
order by pys.product_name;


-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN
alter table products
    add column if not exists price_category varchar(20);

update products
set price_category = case
    when price > 1000              then 'Expensive'
    when price between 500 and 1000 then 'Moderate'
    else                                'Affordable'
end;

select product_id, product_name, price, price_category
from products
order by price desc;
-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN
alter table customers
    add column if not exists customer_level varchar(10);

with customer_spending as (
    select
        customer_id,
        sum(total_amount) as total_spent
    from sales
    group by customer_id
)
update customers c
set customer_level = case
    when cs.total_spent > 20000                  then 'VIP'
    when cs.total_spent between 10000 and 20000  then 'Regular'
    else                                              'New'
end
from customer_spending cs
where c.customer_id = cs.customer_id;

-- customers with no purchases are assigned 'New' by default
update customers
set customer_level = 'New'
where customer_level is null;

select customer_id, first_name, last_name, membership_status, customer_level
from customers
order by customer_level, customer_id;


-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN
alter table products
    add column if not exists stock_status varchar(20);

update products
set stock_status = case
    when stock_quantity < 50 then 'Low Stock'
    else                          'Sufficient Stock'
end;

select product_id, product_name, stock_quantity, stock_status
from products
order by stock_quantity asc;


-- 104. Display each customer’s registration year from the registration_date
select
    customer_id,
    first_name,
    last_name,
    registration_date,
    extract(year from registration_date)::int as registration_year
from customers c
order by registration_year, customer_id;


-- 105. Count how many customers registered in each year
select
    extract(year from registration_date)::int as registration_year,
    count(customer_id)                         as total_customers
from customers
group by registration_year
order by registration_year;


-- 106. Find the total sales amount for each month
select
    extract(year  from sale_date)::int as sale_year,
    extract(month from sale_date)::int as sale_month,
    to_char(sale_date, 'Month')        as month_name,
    count(sale_id)                     as total_transactions,
    sum(total_amount)                  as total_sales_amount
from sales
group by sale_year, sale_month, month_name
order by sale_year, sale_month;


-- 107. Show all sales made in the year 2023
select
    s.sale_id,
    c.first_name,
    c.last_name,
    p.product_name,
    s.quantity_sold,
    s.sale_date,
    s.total_amount
from sales s
inner join customers c on s.customer_id = c.customer_id
inner join products  p on s.product_id  = p.product_id
where extract(year from s.sale_date) = 2023
order by s.sale_date;


-- 108. Find the total sales amount for each year
select
    extract(year from sale_date)::int as sale_year,
    count(sale_id)                    as total_transactions,
    sum(quantity_sold)                as total_units_sold,
    sum(total_amount)                 as total_sales_amount
from sales
group by sale_year
order by sale_year;


-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)
select
    customer_id,
    first_name,
    last_name,
    registration_date,
    current_date                                         as today,
    (current_date - registration_date)                   as days_registered
from customers
order by days_registered desc;


-- 110. Display each sale and extract the year and month from the sale date
select
    sale_id,
    customer_id,
    product_id,
    sale_date,
    extract(year  from sale_date)::int  as sale_year,
    extract(month from sale_date)::int  as sale_month,
    to_char(sale_date, 'Month')         as month_name,
    total_amount
from sales
order by sale_date;


-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE
select
    customer_id,
    first_name,
    last_name,
    coalesce(email, 'No Email Provided') as email
from customers
order by customer_id;

-- 112. Find customers who do not have an email address
select
    customer_id,
    first_name,
    last_name,
    email
from customers
where email is null
order by customer_id;

-- 113. Find products that have never been sold using a subquery
select
    product_id,
    product_name,
    category,
    price,
    stock_quantity
from products
where product_id not in (
    select distinct product_id
    from sales
)
order by product_id;


-- 114. Find customers who have not made any purchases using a subquery
select
    customer_id,
    first_name,
    last_name,
    email,
    membership_status
from customers
where customer_id not in (
    select distinct customer_id
    from sales
)
order by customer_id;


-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN
alter table products
    add column if not exists price_category varchar(20);

update products
set price_category = case
    when price > 1000             then 'Premium'
    when price between 500 and 1000 then 'Standard'
    else                              'Budget'
end;

select product_id, product_name, price, price_category
from products
order by price desc;


-- 116. Create a PostgreSQL function/procedure that takes a minimum revenue as input and returns all products whose total sales exceed that value
create or replace function get_products_above_revenue(min_revenue numeric)
returns table (
    product_id   int,
    product_name varchar,
    category     varchar,
    total_sales  numeric
)
language sql
as $$
    select
        p.product_id,
        p.product_name,
        p.category,
        sum(s.total_amount) as total_sales
    from products p
    inner join sales s on p.product_id = s.product_id
    group by p.product_id, p.product_name, p.category
    having sum(s.total_amount) > min_revenue
    order by total_sales desc;
$$;

select * from get_products_above_revenue(500);
-- 117. Create a PostgreSQL function/procedure that takes a customer_id as input and returns the total amount spent by that customer
create or replace function get_customer_total_spending(p_customer_id int)
returns numeric
language sql
as $$
    select coalesce(sum(total_amount), 0)
    from sales
    where customer_id = p_customer_id;
$$;

-- usage:
select get_customer_total_spending(1);


-- 118. Create a PostgreSQL function/procedure that takes a start_date and end_date as input and returns the number of orders made within that date range
create or replace function get_orders_in_range(start_date date, end_date date)
returns int
language sql
as $$
    select count(sale_id)::int
    from sales
    where sale_date between start_date and end_date;
$$;

-- usage:
select get_orders_in_range('2023-01-01', '2023-12-31');

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table 
create or replace procedure insert_new_sale(
    p_sale_id       int,
    p_customer_id   int,
    p_product_id    int,
    p_quantity_sold int,
    p_sale_date     date,
    p_total_amount  numeric
)
language plpgsql
as $$
begin
    insert into sales (sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
    values (p_sale_id, p_customer_id, p_product_id, p_quantity_sold, p_sale_date, p_total_amount);

    raise notice 'Sale % inserted successfully.', p_sale_id;
end;
$$;

-- usage:
call insert_new_sale(16, 1, 2, 1, '2024-03-01', 799.99);

-- 120. Create an index on the product_id column in the sales table to improve join performance
create index if not exists idx_sales_product_id
    on sales (product_id);
-- 121. Create an index on the registration_date column in the customers table to improve filtering by date

-- 122. Write a transaction that inserts a new sale using sale_id, customer_id, product_id, quantity_sold, sale_date, and total_amount, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together

-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid

-- 124. Create a view that shows total revenue per product

-- 125. Create a view that shows each customer and their total spending

-- 126. Use UNION to combine a list of all customer first names and product names into a single column

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN

-- 129. Use NOT EXISTS to find customers who have not made any purchases

-- 130. Cast the price column to an integer and display it alongside the original price

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format

-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;

-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;

-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- SELECT *
-- FROM assignment.sales s
-- JOIN assignment.products p
--   ON s.customer_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any

-- 136. Trim any leading or trailing spaces from customer first names if any

-- 137. Convert all customer emails to lowercase if any

-- 138. Replace empty strings in phone numbers with NULL if any

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any



