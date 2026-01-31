SELECT * FROM retailsales.orders;
select count(*) from orders;

#join tables
select o.order_id, o.order_date, c.customer_name, c.region, p.product_name,
 p.category, p.price, o.quantity,(p.price*o.quantity) as sales
 from orders as o join customers as c
 on o.customer_id = c.customer_id
 join products as p on o.product_id = p.product_id;
 
 #total sales
 select sum(price * quantity) as totalSales from orders join products
 on orders.product_id = products.product_id;
 
 #total orders count
 select count(*) as totalOrders from orders;
 
 #SALES  BY MONTH
 
 select month(order_date) as month, sum(price * quantity) as monthlylSales
 from orders join products on orders.product_id = products.product_id
 group by month(order_date)
 order by month desc;
 
 # category by sales
 
 select category, sum(price * quantity) as categorySales
 from orders join products
 on orders.product_id = products.product_id
 group by category
 order by(categorySales) desc;
 
 
 
 #product by sales
 
 select product_name, sum(price * quantity) as productSales
 from orders join products
 on orders.product_id = products.product_id
 group by product_name
 order by(productSales) desc;
 
 #customers by sales
 select c.customer_name, sum(p.price * o.quantity) as customerSales
 from orders as o join customers as c
  on o.customer_id = c.customer_id
  join products as p
 on o.product_id = p.product_id
 group by c.customer_name
 order by(customerSales) desc
 limit 5;
 
 
 #region wise sales
 
 
  select c.region, sum(p.price * o.quantity) as regionSales
 from orders as o join customers as c
  on o.customer_id = c.customer_id
  join products as p
 on o.product_id = p.product_id
 group by c.region
 order by(regionSales) desc
 limit 5;
 
 
 #average order value
 select sum(price * quantity) / count(distinct order_id) as avgSales
 #select avg(price * quantity) as avgSales
  from orders join products 
  on orders.product_id = products.product_id;
  
  #customer count by region 
  
  select region, count(*) as customerCount
  from customers
  group by region;
  
  #sales contribution by category
  
  select p.category, sum(p.price * o.quantity) as categorySales,
  round(sum(p.price * o.quantity) * 100 /
  (select sum(p2.price * o2.quantity)
  from orders as o2 join products as p2
  on o2.product_id = p2.product_id), 2) as salesPercent 
  from orders as o join products as p 
  on o.product_id = p.product_id
  group by p.category;
 
 
 
 
 
 
 
 