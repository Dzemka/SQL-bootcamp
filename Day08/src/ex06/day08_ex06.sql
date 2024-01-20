-- Session 1
-- BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- BEGIN
-- SELECT sum(rating)
-- FROM pizzeria;
--  sum
-- ------
--  19.9
-- (1 row)


-- SELECT sum(rating)
-- FROM pizzeria;
--  sum
-- ------
--  19.9
-- (1 row)


-- END;
-- SELECT sum(rating)
-- FROM pizzeria;
--  sum
-- ------
--  23.9
-- (1 row)

-- Session 2
-- BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- BEGIN
-- UPDATE pizzeria
-- SET rating = 5
-- WHERE name = 'Pizza Hut';
-- END;
-- SELECT sum(rating)
-- FROM pizzeria;
--  sum
-- ------
--  23.9
-- (1 row)