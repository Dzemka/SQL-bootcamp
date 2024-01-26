WITH last_rates AS (
	SELECT id, name, rate_to_usd AS last_rate_to_usd, updated
	FROM currency AS c1 WHERE updated = (
		SELECT updated
		FROM currency AS c2
		WHERE c1.id = c2.id
		ORDER BY c1.updated
		LIMIT 1
	)
), volumes AS (
	SELECT user_id, currency_id, sum(money) AS volume, type
	FROM balance
	GROUP BY user_id, currency_id, type
)
SELECT COALESCE(u.name, 'not defined') AS name,
	COALESCE(u.lastname, 'not defined') AS lastname,
	type,
	volume,
	COALESCE(lr.name, 'not defined') AS last_rate_to_usd,
	COALESCE(last_rate_to_usd, 1) AS last_rate_to_usd,
	CASE
		WHEN last_rate_to_usd ISNULL THEN volume
		ELSE (volume * last_rate_to_usd)::float
	END AS last_rate_to_usd
FROM volumes
FULL JOIN last_rates AS lr ON currency_id = lr.id
FULL JOIN "user" AS u ON user_id = u.id
ORDER BY name DESC, lastname, type