COMMENT ON TABLE person_discounts IS
    'Table to store personal discounts for individuals in pizzeria restaurants.';
    -- Таблица для хранения персональных скидок для физических лиц в ресторанах-пиццериях.
COMMENT ON COLUMN person_discounts.id IS
    'Primary key identifier for the person_discounts table.';
    -- Идентификатор первичного ключа для таблицы person_discounts.
COMMENT ON COLUMN person_discounts.person_id IS
    'Foreign key referencing the person table. Identifies the individual for whom the discount is applicable.';
    -- Внешний ключ, ссылающийся на таблицу person. Идентифицирует физическое лицо, для которого применяется скидка.
COMMENT ON COLUMN person_discounts.pizzeria_id IS
    'Foreign key referencing the pizzeria table. Identifies the pizzeria where the discount is applicable.';
    -- Внешний ключ, ссылающийся на таблицу pizzeria. Идентифицирует пиццерию, в которой действует скидка.
COMMENT ON COLUMN person_discounts.discount IS
    'Percentage discount applicable to the person at the specified pizzeria. Ranges from 0 to 100.';
    -- Процентная скидка, применяемая к человеку в указанной пиццерии. Диапазон от 0 до 100.