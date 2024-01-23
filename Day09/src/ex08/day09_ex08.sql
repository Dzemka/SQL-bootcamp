DROP FUNCTION fnc_fibonacci;
CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10) RETURNS SETOF integer AS
$$
	WITH RECURSIVE fibonacci(num1, num2) AS
	(
		SELECT 0 AS num1, 1 AS num2
		
		UNION
		
		SELECT num2 AS num1, (num1 + num2) AS num2
		FROM fibonacci
		WHERE num2 < pstop
	)
	SELECT num1
	FROM fibonacci;
$$ LANGUAGE SQL;


SELECT *
FROM fnc_fibonacci(100);

SELECT *
FROM fnc_fibonacci();