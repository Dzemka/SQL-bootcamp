DROP FUNCTION fnc_person_visits_and_eats_on_date;
CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(pperson varchar DEFAULT 'Dmitry',
												   pprice bigint DEFAULT 500,
												   pdate date DEFAULT '2022-01-08') RETURNS TABLE (name varchar) AS
$$
BEGIN
	RETURN QUERY
	SELECT DISTINCT pizzeria.name
	FROM person
	JOIN person_visits AS pv ON person.id = pv.person_id
		AND visit_date = pdate
		AND person.name = pperson
	JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
	JOIN menu ON pv.pizzeria_id = menu.pizzeria_id
		AND price < pprice;
END;
$$ LANGUAGE plpgsql;
