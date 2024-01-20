WITH pizzeria_prices AS (
	SELECT name, price
	FROM person_order
	JOIN menu ON menu_id = menu.id
	JOIN pizzeria ON pizzeria_id = pizzeria.id
)

SELECT name, count(*), round(avg(price), 2), max(price), min(price)
FROM pizzeria_prices
GROUP BY name
ORDER BY name
