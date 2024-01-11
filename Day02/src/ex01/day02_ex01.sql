SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day') AS missing_date

EXCEPT

SELECT visit_date
FROM person_visits
WHERE person_id IN (1, 2)
ORDER BY missing_date::date