WITH pizzeria_address_order AS (
	SELECT address, pizzeria.name
	FROM person_order
	JOIN menu ON menu_id = menu.id
	JOIN pizzeria ON pizzeria_id = pizzeria.id
	JOIN person ON person_id = person.id
)

SELECT address, name, count(*)
FROM pizzeria_address_order
GROUP BY address, name
ORDER BY address, name