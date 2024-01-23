CREATE TABLE IF NOT EXISTS nodes (
	point1 char(1) NOT NULL CHECK (point1 IN ('a', 'b', 'c', 'd')),
	point2 char(1) NOT NULL CHECK (point2 IN ('a', 'b', 'c', 'd')),
	cost integer NOT NULL
);
INSERT INTO nodes
VALUES 
('a', 'b', 10),
('a', 'c', 15),
('a', 'd', 20),

('b', 'a', 10),
('b', 'c', 35),
('b', 'd', 25),

('c', 'a', 15),
('c', 'b', 35),
('c', 'd', 30),

('d', 'a', 20),
('d', 'b', 25),
('d', 'c', 30);

WITH RECURSIVE routes(num_way, point1, point2, tour, total_cost) AS (
	SELECT 1 AS num_way, point1, point2, '{' || point1 || ',' || point2, cost
	FROM nodes
	WHERE point1 = 'a'
	
	UNION
	
	SELECT (num_way + 1) AS num_way, nodes.point1, nodes.point2, 
	CASE
		WHEN num_way < 3 THEN tour || ',' || nodes.point2
		ELSE tour || ',' || nodes.point2 || '}'
	END, nodes.cost + routes.total_cost
	FROM nodes
		JOIN routes ON nodes.point1 = routes.point2
	WHERE num_way < 4 AND (nodes.point2 = 'a' OR num_way < 3)
		AND nodes.point2 != routes.point1
)

SELECT tour, total_cost
FROM routes
WHERE num_way = 4
	AND total_cost = (
		SELECT min(total_cost)
		FROM routes
		WHERE num_way = 4
	)
ORDER BY total_cost, tour;