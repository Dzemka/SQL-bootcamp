WITH orders_count AS(
	SELECT pizzeria.name, count(*), ('visit') AS action_type
	FROM person_visits AS pv
	JOIN pizzeria ON pizzeria_id = pizzeria.id
	GROUP BY pizzeria.name
	ORDER BY count DESC	
	LIMIT 3
), visits_count AS (
	SELECT pizzeria.name, count(*), ('order') AS action_type
	FROM person_order
	JOIN menu ON menu_id = menu.id
	JOIN pizzeria ON pizzeria_id = pizzeria.id
	GROUP BY pizzeria.name
	ORDER BY count DESC	
	LIMIT 3
)

SELECT *
FROM orders_count

UNION

SELECT *
FROM visits_count
ORDER BY action_type, count DESC
