CREATE SEQUENCE seq_person_discounts AS bigint
START 1
INCREMENT BY 1;

ALTER SEQUENCE seq_person_discounts OWNED BY person_discounts.id;

ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');

SELECT setval('seq_person_discounts', max(id))
FROM person_discounts;
INSERT INTO person_discounts(person_id, pizzeria_id, discount)
VALUES (4, 1, 10.5)
