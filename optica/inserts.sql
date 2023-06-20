INSERT INTO `optica`.`clients`
(`name`,
`surname`,
`zip_code`,
`phone`,
`email`,
`registration_date`,
`recommender_id`
)
VALUES
('John', 'Doe', '12345', '555-123-4567', 'john.doe@example.com', '2021-03-01', null),
    ('Jane', 'Smith', '54321', '555-987-6543', 'jane.smith@example.com', '2021-03-02', null),
    ('Emily', 'Williams', '23456', '555-789-0123', 'emily.williams@example.com', '2021-03-04', null),
    ('William', 'Miller', '34567', '555-678-9012', 'william.miller@example.com', '2021-03-07', null),
    ('Olivia', 'Wilson', '76543', '555-890-1234', 'olivia.wilson@example.com', '2021-03-08', null);
  
INSERT INTO `optica`.`clients`
(`name`,
`surname`,
`zip_code`,
`phone`,
`email`,
`registration_date`,
`recommender_id`
)
VALUES
('Michael', 'Johnson', '98765', '555-456-7890', 'michael.johnson@example.com', '2021-03-03', 1),
('David', 'Brown', '67890', '555-234-5678', 'david.brown@example.com', '2021-03-05', 2),
('Sophia', 'Davis', '87654', '555-345-6789', 'sophia.davis@example.com', '2021-03-06', 2),
('James', 'Moore', '45678', '555-012-3456', 'james.moore@example.com', '2021-03-09', 3),
('Ava', 'Taylor', '98765', '555-321-6549', 'ava.taylor@example.com', '2021-03-10', 5);

INSERT INTO `optica`.`sellers`
(`name`,
`surname`)
VALUES
(
'Miki', 'Roberts'),
(
'Julia', 'Avangarde'),
(
'Olgierd', 'Valas');


INSERT INTO `optica`.`supliers`
(`nif`,
`name`,
`address`,
`phone`,
`fax`)
VALUES
('A12345678',
'Happy Glasses',
'Address1',
'670-567-999',
'670-567-999'),
('B98765432',
'Best Glasses',
'Address2',
'445-567-999',
'123-567-999'),
('G11223344',
'Funny Glasses',
'Address3',
'555-567-999',
'444-567-999');

INSERT INTO `optica`.`brands` (`brand`, `suplier_id`) 
VALUES 
('Afax', 'A12345678'),
('Befax', 'A12345678'),
('Cefax', 'A12345678'),
('Rana', 'B98765432'),
('Fuxy', 'G11223344'),
('Difex', 'A12345678'),
('Egofax', 'B98765432'),
('Grex', 'A12345678'),
('Hexon', 'B98765432'),
('Inofex', 'G11223344');


INSERT INTO `optica`.`products`
(`brand`,
`dioptre_left`,
`dioptre_right`,
`frame_type`,
`frame_colour`,
`glass_colour`,
`price`)
VALUES
(1, 2.75, 3.75, 'pasta', 'black', 'light', 150.00),
(2, 1.75, 1.00, 'pasta', 'grey', 'light', 124.00),
(3, 1.00, 1.00, 'pasta', 'red', 'dark', 100.70),
(4, 1.00, 1.00, 'flotant', 'black', 'light', 199.99),
(5, 1.00, 1.00, 'flotant', 'black', 'light', 199.99),
(6, 1.50, 2.00, 'pasta', 'brown', 'light', 89.99),
(7, 3.25, 2.75, 'pasta', 'blue', 'dark', 120.50),
(8, 1.75, 2.50, 'flotant', 'silver', 'light', 179.99),
(9, 2.25, 2.25, 'flotant', 'gold', 'dark', 199.00),
(10, 1.25, 1.50, 'pasta', 'green', 'light', 99.50);


INSERT INTO `optica`.`product_sales`
(
`date`,
`seller_id`,
`client_id`,
`product_id`)
VALUES
('2023-03-15', 1, 1, 2),
('2023-02-15', 1, 2, 1),
('2023-01-15', 1, 8, 5),
('2023-03-01', 2, 3, 3),
('2023-03-20', 3, 4, 2),
('2023-04-05', 2, 3, 4),
('2023-02-28', 3, 5, 3),
('2023-01-10', 1, 6, 5),
('2021-03-25', 2, 7, 6),
('2023-02-15', 3, 8, 2),
('2023-03-10', 2, 9, 3),
('2023-02-18', 3, 3, 4),
('2022-01-20', 1, 2, 8),
('2022-02-05', 2, 1, 8),
('2023-04-02', 3, 10, 1);

