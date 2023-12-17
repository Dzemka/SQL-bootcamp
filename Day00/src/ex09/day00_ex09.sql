SELECT pe.name AS person_name,
		pi.name AS pizzeria_name
		FROM person_visits
		JOIN person pe ON person_id = pe.id
		JOIN pizzeria pi ON pizzeria_id = pi.id
		WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09'
		ORDER BY pe.name, pi.name DESC
