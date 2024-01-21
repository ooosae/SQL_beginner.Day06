SELECT
    pe.name AS person_name,
    m.pizza_name,
    m.price AS original_price,
    ROUND(m.price - m.price * COALESCE(pd.discount / 100, 0))::integer AS discounted_price,
    p.name AS pizzeria_name
FROM
    person_order po

JOIN
    menu m ON
        po.menu_id = m.id
JOIN
    person pe ON
        po.person_id = pe.id
JOIN
    person_discounts pd ON
        po.person_id = pd.person_id AND
        m.pizzeria_id = pd.pizzeria_id
JOIN
    pizzeria p ON
        m.pizzeria_id = p.id

ORDER BY
    pe.name,
    m.pizza_name;
