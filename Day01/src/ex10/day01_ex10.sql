SELECT per.name AS person_name, menu.pizza_name, piz.name AS pizzeria_name
FROM person_order
JOIN person per ON person_id = per.id
JOIN menu ON menu_id = menu.id
JOIN pizzeria piz ON pizzeria_id = piz.id
ORDER BY person_name, pizza_name, pizzeria_name