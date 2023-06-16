-- Llista quants productes de tipus “Begudes”. s'han venut en una determinada localitat.
use pizzeria;

SELECT 
    r.restaurant_id,
    r.address,
    SUM(op.quantity) AS 'sold out drinks'
FROM
    restaurants r
        JOIN
    workers w USING (restaurant_id)
        JOIN
    orders o ON (o.caterer = w.worker_id)
        JOIN
    order_positions op USING (order_id)
        JOIN
    products p USING (product_id)
WHERE
    product_type = 'drink'
GROUP BY r.restaurant_id;


-- Llista quantes comandes ha efectuat un determinat empleat/da.

SELECT 
    w.name, w.surname, COUNT(o.order_id) AS 'realized orders'
FROM
    workers w
        JOIN
    orders o ON (o.caterer = w.worker_id)
WHERE
    o.delivery_time IS NOT NULL
GROUP BY w.worker_id