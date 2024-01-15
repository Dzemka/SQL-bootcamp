SELECT pizzeria.name
FROM person_visits AS pv
JOIN person ON person_id = person.id
JOIN menu ON pv.pizzeria_id = menu.pizzeria_id
JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
WHERE person.name = 'Dmitriy' 
	AND visit_date = '2022-01-08' 
	AND price < 800