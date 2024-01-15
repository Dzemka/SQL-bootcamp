SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM person_visits AS pv
JOIN person ON pv.person_id = person.id
JOIN pizzeria ON pv.pizzeria_id = pizzeria.id 
JOIN menu ON pv.pizzeria_id = menu.pizzeria_id
WHERE person.name = 'Kate'
	AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name