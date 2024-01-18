COMMENT ON TABLE person_discounts 
IS 'Table with the discount percentages of the relevant persoon in the relevant pizzeria';
COMMENT ON COLUMN person_discounts.id IS 'Identifier';
COMMENT ON COLUMN person_discounts.person_id IS 'Person id visiting the pizzeriar';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Id of the pizzeria that person visits';
COMMENT ON COLUMN person_discounts.discount IS 'Personalized discount for the person visiting the pizzeria';

SELECT description
FROM pg_class
JOIN pg_description ON oid = objoid
WHERE relname = 'person_discounts'
