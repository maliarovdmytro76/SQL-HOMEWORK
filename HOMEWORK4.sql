use hr;
alter table employees
add salarywithcomm numeric(10, 3);

select *
from employees;

set sql_safe_updates = 0;

ALTER TABLE employees ADD salarywithcomm NUMERIC(10, 3);

UPDATE employees
SET salarywithcomm = salary + salary * 15 / 100;

SELECT 
CONCAT(trim(first_name), ' ',trim(last_name)) AS fullname
from employees;

select *, ceiling(salary), ceiling(salarywithcomm)
from employees;

ALTER TABLE employees ADD chk_email VARCHAR(128);

update employees

set sql_safe_updates = 0;

update employees
set chk_email = CASE 
    WHEN LENGTH(email) < 25 THEN 'Введите больше символов'
    WHEN LENGTH(email) >= 25 AND LENGTH(email) < 30 THEN 'Кол/во символов совпадает'
    ELSE 'Введите меньше символов'
end;

SELECT country_name, LENGTH(country_name) AS number_of_characters 
from countries;

SELECT country_name, SUBSTRING(country_name, 1, 3) AS first_three_characters 
FROM countries;

SELECT first_name, last_name, 
REPLACE(email, 'sqltutorial', 'Confidential') AS modified_email 
FROM employees;

SELECT first_name, last_name, 
       RIGHT(phone_NUMERIC, 4) AS last_four_digits 
FROM employees;












select *
from employees;
 


