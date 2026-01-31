create database retailSales;

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(100),
    region VARCHAR(50)
);
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
INSERT INTO customers (customer_id, customer_name, region) VALUES
(1, 'Amit Sharma', 'North'),
(2, 'Neha Verma', 'South'),
(3, 'Rahul Singh', 'East'),
(4, 'Priya Gupta', 'West'),
(5, 'Ankit Jain', 'North'),
(6, 'Rohit Mehra', 'East'),
(7, 'Sneha Kapoor', 'West'),
(8, 'Vikas Malhotra', 'North'),
(9, 'Pooja Nair', 'South'),
(10, 'Arjun Patel', 'West'),
(11, 'Karan Khanna', 'North'),
(12, 'Meenal Joshi', 'East'),
(13, 'Suresh Rao', 'South'),
(14, 'Nikita Arora', 'North'),
(15, 'Aakash Verma', 'West');
INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Smartphone', 'Electronics', 25000),
(103, 'Office Chair', 'Furniture', 8000),
(104, 'Table', 'Furniture', 12000),
(105, 'Headphones', 'Accessories', 3000),
(106, 'Monitor', 'Electronics', 15000),
(107, 'Keyboard', 'Accessories', 2000),
(108, 'Mouse', 'Accessories', 1200),
(109, 'Printer', 'Electronics', 18000),
(110, 'Desk Lamp', 'Furniture', 2500),
(111, 'Webcam', 'Accessories', 3500),
(112, 'Router', 'Electronics', 4000),
(113, 'Bookshelf', 'Furniture', 9000),
(114, 'Tablet', 'Electronics', 30000),
(115, 'Power Bank', 'Accessories', 1800);
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    customer_id INT,
    product_id INT,
    quantity INT
);
INSERT INTO orders (order_id, order_date, customer_id, product_id, quantity) VALUES
(2001,'2024-01-03',1,101,1),
(2002,'2024-01-05',2,102,2),
(2003,'2024-01-06',3,103,1),
(2004,'2024-01-07',4,104,3),
(2005,'2024-01-08',5,105,2),

(2006,'2024-01-10',6,106,2),
(2007,'2024-01-12',7,114,1),
(2008,'2024-01-14',8,109,1),
(2009,'2024-01-15',9,111,3),
(2010,'2024-01-18',10,107,4),

(2011,'2024-02-02',11,101,1),
(2012,'2024-02-04',12,110,2),
(2013,'2024-02-06',13,112,1),
(2014,'2024-02-08',14,108,3),
(2015,'2024-02-10',15,115,2),

(2016,'2024-02-12',1,102,1),
(2017,'2024-02-14',2,105,1),
(2018,'2024-02-16',3,104,2),
(2019,'2024-02-18',4,103,3),
(2020,'2024-02-20',5,101,2),

(2021,'2024-03-01',6,103,2),
(2022,'2024-03-03',7,104,3),
(2023,'2024-03-05',8,102,1),
(2024,'2024-03-07',9,101,2),
(2025,'2024-03-09',10,105,4),

(2026,'2024-03-11',11,104,1),
(2027,'2024-03-13',12,103,2),
(2028,'2024-03-15',13,105,3),
(2029,'2024-03-17',14,102,1),
(2030,'2024-03-19',15,101,2),

(2031,'2024-04-02',1,105,2),
(2032,'2024-04-04',2,102,3),
(2033,'2024-04-06',3,101,1),
(2034,'2024-04-08',4,104,2),
(2035,'2024-04-10',5,103,3),

(2036,'2024-04-12',6,102,1),
(2037,'2024-04-14',7,101,2),
(2038,'2024-04-16',8,104,3),
(2039,'2024-04-18',9,105,1),
(2040,'2024-04-20',10,103,2),

(2041,'2024-05-01',11,101,3),
(2042,'2024-05-03',12,104,1),
(2043,'2024-05-05',13,102,2),
(2044,'2024-05-07',14,105,4),
(2045,'2024-05-09',15,103,1),

(2046,'2024-05-11',1,104,2),
(2047,'2024-05-13',2,105,3),
(2048,'2024-05-15',3,101,1),
(2049,'2024-05-17',4,102,2),
(2050,'2024-05-19',5,104,3);