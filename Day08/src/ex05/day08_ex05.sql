-- Session 1
-- BEGIN;
-- SELECT sum(rating)
-- FROM pizzeria;
--  sum
-- ------
--  21.9
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
--  19.9
-- (1 row)

-- Session 2
-- BEGIN;
-- UPDATE pizzeria
-- SET rating = 1
-- WHERE name = 'Pizza Hut';
-- END;
-- SELECT sum(rating)
-- FROM pizzeria;
--  sum
-- ------
--  19.9
-- (1 row)