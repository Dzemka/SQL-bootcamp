SELECT order_date, CONCAT(p.name, ' (age:', p.age, ')') AS person_information
FROM person_order
NATURAL JOIN person p
ORDER BY order_date, p.name