DROP TABLE IF EXISTS person_audit;
CREATE TABLE person_audit (
	created timestamp with time zone DEFAULT current_timestamp NOT NULL,
	type_event char(1) DEFAULT 'I' NOT NULL,
	row_id bigint NOT NULL,
	name varchar,
	age integer,
	gender varchar,
	address varchar
	CONSTRAINT ch_type_event CHECK (type_event IN ('I', 'D', 'U')) 
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit() RETURNS TRIGGER AS $$
	BEGIN
		INSERT INTO person_audit
		VALUES (current_timestamp,
			   'I',
			   NEW.id,
			   NEW.name,
			   NEW.age,
			   NEW.gender,
			   NEW.address);
		RETURN NULL;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_person_insert_audit
AFTER INSERT ON person
FOR EACH ROW
EXECUTE FUNCTION fnc_trg_person_insert_audit();
DELETE FROM person
WHERE id = 10;
INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');
SELECT * FROM person_audit;