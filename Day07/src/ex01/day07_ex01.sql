SELECT name, count(*)
FROM person_visits
JOIN person ON person_id = person.id
GROUP BY name
ORDER BY count DESC, name
LIMIT 4