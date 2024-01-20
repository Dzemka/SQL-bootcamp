-- Session 1
-- BEGIN;
-- UPDATE pizzeria
-- SET rating = 5
-- WHERE name = 'Pizza Hut';

-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      5

-- END;
-- -- Session 2
-- BEGIN;
-- s21=# SELECT *
-- s21-# FROM pizzeria
-- s21-# WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |    4.6
-- (1 row)

-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      5
-- (1 row)

-- END;