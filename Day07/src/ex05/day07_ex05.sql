SELECT DISTINCT name
FROM person_visits
LEFT JOIN person ON person_id = person.id
WHERE name IS NOT NULL
ORDER BY name