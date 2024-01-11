SELECT pizza_name AS object_name, 1 AS table_order
FROM menu

UNION ALL

SELECT name, 2 AS table_order
FROM person

ORDER BY table_order