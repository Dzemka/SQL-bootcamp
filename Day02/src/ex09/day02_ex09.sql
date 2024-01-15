WITH persons AS (
	SELECT *
	FROM person
	JOIN person_order AS po ON person.id = po.person_id
	JOIN menu AS m1 ON menu_id = m1.id
	WHERE gender = 'female'
)

SELECT name
FROM persons
WHERE pizza_name = 'pepperoni pizza'

INTERSECT

SELECT name
FROM persons
WHERE pizza_name = 'cheese pizza'