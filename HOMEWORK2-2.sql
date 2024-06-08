-- Отсортировать сотрудников по фамилии в алфавитном порядке.

-- Отсортировать сотрудников по зарплате - от самой большой зарплаты до самой маленькой.

-- Вывести сотрудников, работающих в департаментах с id 60, 90 и 110, отсортированными в алфавитном порядке по фамилии 

-- Вывести трех сотрудников, чьи имена начинаются на букву D и отсортировать их в алфавитном порядке по фамилии

-- Вывести сотрудника с самой низкой зарплатой.

use hr;
select *
from employees;

select *
from employees
order by last_name;

select *
from employees
order by salary desc;

select *
from employees
where department_id = 60 or department_id = 90 or department_id = 100
order by last_name;

select *
from employees
where first_name like 'D%'
order by last_name
limit 3;

select *
from employees
order by salary asc
limit 1;



