-- Session 1
-- BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |    3.6
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
--   1 | Pizza Hut |      4
-- (1 row)

-- s21=# BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- BEGIN
-- s21=# SELECT *
-- s21-# FROM pizzeria
-- s21-# WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |    3.6
-- (1 row)


-- UPDATE pizzeria
-- SET rating = 3.6
-- WHERE name = 'Pizza Hut';
-- ОШИБКА:  не удалось сериализовать доступ из-за параллельного изменения
-- END;

-- SELECT *
-- FROM pizzeria
-- WHERE name = 'Pizza Hut';
--  id |   name    | rating
-- ----+-----------+--------
--   1 | Pizza Hut |      4
-- (1 row)