WITH male AS (
	SELECT pizzeria.name
	FROM person_order
	JOIN person ON person_id = person.id
	JOIN menu ON menu_id = menu.id
	JOIN pizzeria ON pizzeria_id = pizzeria.id
	WHERE gender = 'male'
), female AS (
	SELECT pizzeria.name
	FROM person_order
	JOIN person ON person_id = person.id
	JOIN menu ON menu_id = menu.id
	JOIN pizzeria ON pizzeria_id = pizzeria.id
	WHERE gender = 'female'
)

(
	SELECT *
	FROM male

	EXCEPT

	SELECT *
	FROM female
)

UNION

(
	SELECT *
	FROM female
	
	EXCEPT
	
	SELECT *
	FROM male
)