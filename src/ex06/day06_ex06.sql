CREATE SEQUENCE seq_person_discounts
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE;

SELECT
    setval('seq_person_discounts', COALESCE(MAX(id), 0) + 1)
    -- задайте фактическое значение последовательности базы данных по формуле
    -- "количество строк в таблице person_discounts" + 1
FROM
    person_discounts;

ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');
