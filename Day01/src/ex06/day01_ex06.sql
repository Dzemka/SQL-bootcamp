SELECT date, name FROM (
	SELECT order_date AS date, person_id
	FROM person_order
	
	INTERSECT

	SELECT visit_date AS date, person_id
	FROM person_visits
), person
WHERE person.id = person_id
ORDER BY date, name DESC;