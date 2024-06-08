-- 1 уровень сложности: 1. Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка не null,
-- phone строка не null
-- Ой, забыли про зарплату)) Добавить поле salary numeric(9, 2),
-- Ойййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer 
-- Переименовать поле fname на first_name
-- Удалить поле phone
-- Добавить поле department строка не null 
-- Заполнить таблицу (7 строк)
use gt200224
create table employees2(
 	employee_id int primary key auto_increment,
 	fname varchar(30) not null,
 	lastname varchar(30) not null,
 	email varchar(30) not null,
    phone varchar(20) not null,
 	salary numeric(9, 2)
 );
 
 select *
 from employees2;
 
 ALTER TABLE employees2 MODIFY COLUMN salary int;
 
 ALTER TABLE employees2 RENAME COLUMN fname TO first_name;
 
 ALTER TABLE employees2 DROP COLUMN phone;
 
 ALTER TABLE employees2 ADD COLUMN department varchar(50) not null;
 
 INSERT INTO employees2 (first_name, lastname, email, salary, department)
VALUES 
    ('John', 'Doe', 'john.doe@example.ge', 2300, 1),
    ('Jane', 'Smith', 'jane.smith@example.com', 2500, 2),
    ('Michael', 'Johnson', 'michael.johnson@example.am', 2400, 2),
    ('Emily', 'Brown', 'emily.brown@example.com', 2400, 1),
    ('Sara', 'Conor', 'sara.conor@example.com', 2800, 3),
    ('Jon', 'Salivan', 'Jon.salivan@example.am', 2700, 1),
    ('Roy', 'Djonson', 'roy.djonson@example.com', 2600, 3);


