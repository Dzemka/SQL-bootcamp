WITH form AS (SELECT address, round((max(age::numeric) - (min(age::numeric) / max(age::numeric))), 2)::float AS formula,
	round(avg(age::numeric), 2)::float AS average
FROM person
GROUP BY address
)

SELECT address, formula, average,
	CASE
		WHEN formula > average THEN true
		ELSE false
	END
FROM form
ORDER BY address