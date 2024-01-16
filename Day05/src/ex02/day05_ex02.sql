CREATE INDEX IF NOT EXISTS idx_person_name ON person(upper(name));
SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT person.name
FROM person
WHERE upper(name) = 'DMITRIY' 