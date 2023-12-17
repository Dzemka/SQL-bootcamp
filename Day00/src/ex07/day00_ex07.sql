-- ALTER TABLE person
-- ADD COLUMN interval_info VARCHAR GENERATED ALWAYS AS (
-- 	CASE
-- 		WHEN age >= 10 AND AGE <= 20 THEN 'interval #1'
-- 		WHEN age >= 20 AND age <= 24 THEN 'interval #2'
-- 		ELSE 'interval #3'
-- 	END
-- ) STORED;
SELECT name, id, interval_info FROM person ORDER BY interval_info;