INSERT INTO person_order
VALUES (
		(
			SELECT max(id) + 1
			FROM person_order
		),
	   (
			SELECT id
			FROM person
   			WHERE name = 'Denis'
	   ),
	   (
			SELECT menu.id
			FROM menu
   			WHERE pizza_name = 'sicilian pizza'
	   ),
			'2022-02-24'
		);
	   
INSERT INTO person_order
VALUES (
		(
			SELECT max(id) + 1
			FROM person_order),
	   (
			SELECT id
			FROM person
   			WHERE name = 'Irina'),
	   (
			SELECT menu.id
	   		FROM menu
	   		WHERE pizza_name = 'sicilian pizza'
	   ),
		'2022-02-24');
