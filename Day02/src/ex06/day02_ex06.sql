SELECT pizza_name, pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON menu_id = menu.id
JOIN person ON person_id = person.id
JOIN pizzeria ON pizzeria_id = pizzeria.id
WHERE person.name IN ('Denis', 'Anna')
ORDER BY pizza_name, pizzeria.name