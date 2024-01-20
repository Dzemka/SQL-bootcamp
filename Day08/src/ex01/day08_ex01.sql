-- Session 1
-- BEGIN;
-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      5
-- (1 row)


-- UPDATE pizzeria
-- SET rating = 4
-- WHERE name = 'Pizza Hut';
-- END;

-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |    3.6
-- (1 row)

-- Session 2
-- BEGIN;
-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      5
-- (1 row)


-- UPDATE pizzeria
-- SET rating = 3.6
-- WHERE name = 'Pizza Hut';
-- END;
-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |    3.6
-- (1 row)