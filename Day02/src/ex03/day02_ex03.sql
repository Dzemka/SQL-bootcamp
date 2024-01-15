WITH days AS (
	SELECT visit_date as dates_visit
	FROM person_visits
	WHERE person_id IN (1, 2)
)
SELECT dates::date
FROM generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day') AS dates
EXCEPT
SELECT *
FROM days
ORDER BY dates::date