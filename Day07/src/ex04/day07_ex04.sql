SELECT name, count(*) AS count_of_visits
FROM person_visits
JOIN person ON person_id = person.id
GROUP BY person.name
HAVING count(*) > 3