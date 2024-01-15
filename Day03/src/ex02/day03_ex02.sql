WITH missing_menu_id AS (
	SELECT id
	FROM menu
	
	EXCEPT
	
	SELECT menu_id
	FROM person_order
)
SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria_id = pizzeria.id
JOIN missing_menu_id mmi ON menu.id = mmi.id
ORDER BY pizza_name, price