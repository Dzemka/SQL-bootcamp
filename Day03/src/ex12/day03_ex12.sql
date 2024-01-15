INSERT INTO person_order
SELECT 
(
	SELECT max(id) + person.id
	FROM person_order
), person.id,
(
	SELECT id
	FROM menu
	WHERE pizza_name = 'greek pizza'
), '2022-02-25'
FROM person