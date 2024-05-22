-- Compose SQL statements to BEGIN a transaction, 
-- INSERT a new record into the 'orders' table, COMMIT the transaction, 
-- then UPDATE the 'products' table, and ROLLBACK the transaction.

START TRANSACTION;

INSERT INTO Orders (order_id, customer_id, order_date, total_amount, product_id)
VALUES (51, 21, '2024-05-23', 120.00, 6);

COMMIT;

SELECT *
FROM Orders
WHERE order_id = 51;

START TRANSACTION;

UPDATE Product
SET price = 125.00
WHERE product_id = 6;

SELECT *
FROM Product
WHERE product_id = 6;

ROLLBACK;

SELECT *
FROM Product
WHERE product_id = 6;