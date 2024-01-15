WITH dominos_id AS (
	SELECT id
	FROM pizzeria
	WHERE name = 'Dominos'
)

INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES (19, (SELECT * FROM dominos_id), 'greek pizza', 800)
