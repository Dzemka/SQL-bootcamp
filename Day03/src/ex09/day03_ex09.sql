INSERT INTO person_visits
VALUES ((SELECT max(id) + 1 FROM person_visits),
		(SELECT id
		FROM person
		WHERE person.name = 'Denis'),
		(SELECT id
		FROM pizzeria
		WHERE name = 'Dominos'),
		'2022-02-24');

INSERT INTO person_visits 
VALUES ((SELECT max(id) + 1 FROM person_visits),
		(SELECT id
		FROM person
		WHERE person.name = 'Irina'),
		(SELECT id
		FROM pizzeria
		WHERE name = 'Dominos'),
		'2022-02-24');