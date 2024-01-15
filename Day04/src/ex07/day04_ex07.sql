INSERT INTO person_visits VALUES
(
	(
		SELECT max(id) + 1
		FROM person_visits
	),
	(
		SELECT id
		FROM person
		WHERE person.name = 'Dmitriy'
	), 
	(
		SELECT pizzeria.id
		FROM menu
		JOIN pizzeria ON pizzeria_id = pizzeria.id
		WHERE price < 800
			AND pizzeria.name != 'Papa Johns'
		LIMIT 1
	),
	'2022-01-08'
);
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;