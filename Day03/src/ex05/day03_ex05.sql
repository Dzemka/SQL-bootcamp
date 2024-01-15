SELECT pizzeria.name
FROM person_visits
JOIN person ON person_id = person.id
	AND person.name = 'Andrey'
JOIN pizzeria ON pizzeria_id = pizzeria.id

EXCEPT

SELECT pizzeria.name
FROM person_order
JOIN person ON person_id = person.id
	AND person.name = 'Andrey'
JOIN menu ON menu_id = menu.id
JOIN pizzeria ON pizzeria_id = pizzeria.id
