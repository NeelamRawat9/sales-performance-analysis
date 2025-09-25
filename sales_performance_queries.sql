-- Total Revenue
select sum(Purchase_Amount) from transaction; 

-- Total customer
select distinct count(user_name) from transaction

-- Top 5 best selling products category 
select  product_category, count(*) as top_selling
from transaction
group by Product_Category
order by top_selling DESC
limit 5;
 
 -- Top 10 customers
 select user_name, sum(purchase_amount) as total_spend
 from transaction
 group by user_name
 order by total_spend DESC
 limit 10;

-- Revenue by country
 select country, sum(purchase_amount) as revenue
 from transaction
 group by country
 order by  revenue DESC
 limit 10;
 
 -- Monthly Revenue Trend
select month(transaction_date) as month, sum(purchase_amount) as revenue
from transaction
group by month
order by month;

-- Customer Segmentation by age
Select CASE 
when age>25 then '18-24'
when age between 25 and 35 then '25-35'
when age between 36 and 55 then '36-55'
else 'above 55'
end as age_group, sum(purchase_amount) as revenue
from transaction
group by age_group
order by revenue ASC;
 
 
-- Total Revenue
select sum(Purchase_Amount) from transaction; 

-- Total customer
select distinct count(user_name) from transaction

-- Top 5 best selling products category 
select  product_category, count(*) as top_selling
from transaction
group by Product_Category
order by top_selling DESC
limit 5;
 
 -- Top 10 customers
 select user_name, sum(purchase_amount) as total_spend
 from transaction
 group by user_name
 order by total_spend DESC
 limit 10;

-- Revenue by country
 select country, sum(purchase_amount) as revenue
 from transaction
 group by country
 order by  revenue DESC
 limit 10;
 
 -- Monthly Revenue Trend
select month(transaction_date) as month, sum(purchase_amount) as revenue
from transaction
group by month
order by month;

-- Customer Segmentation by age
Select CASE 
when age>25 then '18-24'
when age between 25 and 35 then '25-35'
when age between 36 and 55 then '36-55'
else 'above 55'
end as age_group, sum(purchase_amount) as revenue
from transaction
group by age_group
order by revenue ASC;
 
 
