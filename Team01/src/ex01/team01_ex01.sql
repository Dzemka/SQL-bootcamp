SELECT DISTINCT 
	COALESCE(u.name, 'not definded') AS name, 
	COALESCE (u.lastname, 'not defined') AS lastname,
	c.name AS currency_name, 
	( money *
 		(
		SELECT c_tmp.rate_to_usd
		FROM currency AS c_tmp
		WHERE c_tmp.id = c.id
			AND (
				c_tmp.updated = (
					SELECT max(c_lower.updated)
					FROM currency AS c_lower
					WHERE c_lower.id = c_tmp.id
						AND c_lower.updated <= balance.updated
					GROUP BY c_lower.id
				) OR c_tmp.updated = (
					SELECT min(c_upper.updated)
					FROM currency AS c_upper
					WHERE c_upper.id = c_tmp.id
						AND c_upper.updated > balance.updated
					GROUP BY c_upper.id

				)
			)
		ORDER BY c_tmp.updated
	 	LIMIT 1
	)
)::float
AS currency_in_usd
FROM "user" AS u
FULL JOIN balance ON u.id = balance.user_id
JOIN currency AS c ON currency_id = c.id
ORDER BY name DESC, lastname, currency_in_usd
