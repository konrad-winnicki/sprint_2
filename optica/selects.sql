use optica;

-- Llista el total de compres d’un client/a.

SELECT 
    c.name, c.surname, p.brand, p.price
FROM
    clients c
        JOIN
    product_sales ps USING (client_id)
        JOIN
    products p USING (product_id)
WHERE
    (c.name = 'Emily'
        AND c.surname = 'Williams');

-- Llista les diferents ulleres que ha venut un empleat durant un any.

SELECT 
    s.name, s.surname, p.brand, p.price
FROM
    sellers s
        JOIN
    product_sales ps USING (seller_id)
        JOIN
    products p USING (product_id)
WHERE
    (ps.date BETWEEN '2022-06-15' AND '2023-06-15');

-- Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.

SELECT 
    gs.nif, gs.name, COUNT(nif) AS 'sold pairs'
FROM
    glasses_supliers gs
        JOIN
    products p ON (suplier_id = nif)
        JOIN
    product_sales ps USING (product_id)
GROUP BY (nif);


