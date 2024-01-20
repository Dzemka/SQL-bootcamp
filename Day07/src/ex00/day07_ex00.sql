SELECT person_id, count(*) AS count_of_visits
FROM person_visits
JOIN person ON person_id = person.id
GROUP BY person_id
ORDER BY count_of_visits DESC, person_id