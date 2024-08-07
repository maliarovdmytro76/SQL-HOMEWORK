SELECT * FROM oe.customers;
use oe;

-- 1. Вывести максимальный и минимальный credit_limit.
select MAX(credit_limit) AS max_credit_limit,
       MIN(credit_limit) AS min_credit_limit
from customers;
    
-- 2. Вывести покупателей у которых creditlimit выше среднего creditlimit.
select avg(credit_limit)
from customers;

select cust_first_name, 
       cust_last_name
from customers
where credit_limit > (select avg(credit_limit) from customers);

-- 3. Найти кол/во покупателей имя которых начинается на букву 'D' и credit_limit больше 500.
select COUNT(*) AS count_of_customers
from customers
where cust_first_name like 'D%' and 
	  credit_limit > 500;
      
 -- 4. Найти среднее значение unit_price
select avg(unit_price) AS average_unit_price
from order_items;



-- 5. Вывести имена продуктов(PRODUCT_NAME), кол/во(QUANTITY) которых меньше среднего.
select * from order_items;
select * from product_information;

SELECT AVG(quantity)FROM order_items;

SELECT t2.product_name,
       t1.quantity
FROM order_items t1
JOIN product_information t2 
ON t1.product_id = t2.product_id
WHERE t1.quantity < (SELECT AVG(quantity)FROM order_items);

-- 6. Вывести имя и фамилию покупателя с максимальной общей суммой покупки(ORDER_TOTAL).
SELECT  t1.cust_first_name,
        t1.cust_last_name
FROM customers t1
JOIN orders t2
ON t1.customer_id = t2.customer_id
GROUP BY t1.customer_id, t1.cust_first_name, t1.cust_last_name
ORDER BY SUM(t2.order_total) DESC
LIMIT 1;


 
    
