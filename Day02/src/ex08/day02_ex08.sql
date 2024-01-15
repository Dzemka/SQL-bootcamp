SELECT name
FROM person
JOIN person_order AS po ON person.id = po.person_id
JOIN menu ON menu_id = menu.id
WHERE gender = 'male'
	AND address IN ('Moscow', 'Samara')
	AND pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY name DESC