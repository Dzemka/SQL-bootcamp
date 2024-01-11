SELECT COALESCE(person.name, '-') AS person_name,
	visit_date,
	COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM generate_series('2022-01-01', '2022-01-03', INTERVAL '1 day') AS dates
JOIN person_visits ON person_visits.visit_date = dates::date
FULL JOIN person ON person_visits.person_id = person.id
FULL JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
ORDER BY person_name,
	visit_date,
	pizzeria_name