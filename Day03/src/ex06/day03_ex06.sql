SELECT m1.pizza_name, p1.name AS pizzeia_name1, p2.name AS pizzeia_name2, m1.price
FROM menu AS m1
JOIN pizzeria AS p1 ON m1.pizzeria_id = p1.id
JOIN menu AS m2 ON m1.pizza_name = m2.pizza_name
	AND m1.id > m2.id
	AND m1.price = m2.price
JOIN pizzeria AS p2 ON m2.pizzeria_id = p2.id
ORDER BY m1.pizza_name