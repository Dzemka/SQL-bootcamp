SELECT pizzeria.name, count(*) AS total_count
FROM
(
	SELECT pizzeria_id
	FROM person_visits
	JOIN pizzeria ON pizzeria_id = pizzeria.id

	UNION ALL

	SELECT pizzeria_id
	FROM person_order
	JOIN menu ON menu_id = menu.id
)
JOIN pizzeria ON pizzeria_id = pizzeria.id
GROUP BY pizzeria.id
ORDER BY total_count DESC, name