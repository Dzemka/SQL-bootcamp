WITH dominos_id AS (
	SELECT id
	FROM pizzeria
	WHERE name = 'Dominos'
), next_id AS (
	SELECT max(id) + 1
	FROM menu
)

INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES ((SELECT * FROM next_id), (SELECT * FROM dominos_id), 'sicilian pizza', 900)
