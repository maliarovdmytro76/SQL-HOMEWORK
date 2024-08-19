create database airport;
use airport;
-- 1. Посчитать количество рейсов по каждой модели самолета. Вывести modelname и flightcount.

SELECT t1.model_name, COUNT(t2.id) AS flightcount
FROM airliners t1
JOIN trips t2 ON t1.id = t2.airliner_id
GROUP BY t1.model_name;

-- 2.Вычислить среднюю стоимость билета по классам обслуживания. Вывести serviceclass и averageprice.
SELECT service_class, AVG(price) AS averageprice
FROM tickets
GROUP BY service_class;

-- 3.Определить средний возраст клиентов, сгруппированных по классу обслуживания. Вывести serviceclass и averageage.
SELECT 
    t1.service_class AS serviceclass, 
    AVG(t2.age) AS averageage
FROM 
    tickets t1
JOIN 
    clients t2 ON t1.client_id = t2.id
GROUP BY 
    t1.service_class;
    
   -- 4. Получить общее количество билетов, купленных каждым клиентом. Вывести name и ticket_count.
 SELECT 
    t1.name, 
    COUNT(t2.id) AS ticket_count
FROM 
    clients t1
JOIN 
    tickets t2 ON t1.id = t2.client_id
GROUP BY 
    t1.name;
    
 -- 5.Определить количество рейсов, отправленных из каждого аэропорта. Вывести departure и departure_count.   
SELECT 
    departure, 
    COUNT(id) AS departure_count
FROM 
    trips
GROUP BY 
    departure;
    
   -- 6.Вычислить общий доход от продажи билетов для каждой страны производителя самолетов. Вывести country и total_sum. 
SELECT
    t1.country,
    SUM(t2.price) AS total_sum
FROM
    tickets t2
JOIN
    trips t3 ON t2.trip_id = t3.id
JOIN
    airliners t1 ON t3.airliner_id = t1.id
GROUP BY
    t1.country;



