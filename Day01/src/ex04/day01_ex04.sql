SELECT person_id, date
FROM (
	SELECT person_id, order_date AS date
	FROM person_order

	EXCEPT ALL

	SELECT person_id, visit_date AS date
	FROM person_visits
) WHERE date = '2022-01-07'