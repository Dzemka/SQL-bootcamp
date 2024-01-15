WITH male AS (
	SELECT pizzeria.name
	FROM person_visits
	JOIN person ON person_id = person.id
		AND gender = 'male'
	JOIN pizzeria ON pizzeria_id = pizzeria.id
), female AS (	
	SELECT pizzeria.name
	FROM person_visits
	JOIN person ON person_id = person.id
		AND gender = 'female'
	JOIN pizzeria ON pizzeria_id = pizzeria.id
)

( 
	SELECT *
	FROM male

	EXCEPT ALL

	SELECT *
	FROM female
)
	
	UNION ALL

(
	SELECT *
	FROM female

	EXCEPT ALL

	SELECT *
	FROM male
)
ORDER BY name