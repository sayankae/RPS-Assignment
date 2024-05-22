-- Begin a transaction, perform a series of INSERTs into 'orders', setting a SAVEPOINT after each, rollback to the second SAVEPOINT, and COMMIT the overall transaction

START TRANSACTION;

INSERT INTO Orders (order_id, customer_id, order_date, total_amount, product_id)
VALUES (101, 1, '2024-05-23', 50.00, 1);

SAVEPOINT SP1;

INSERT INTO Orders (order_id, customer_id, order_date, total_amount, product_id)
VALUES (102, 2, '2024-05-24', 75.00, 2);

SAVEPOINT SP2;

INSERT INTO Orders (order_id, customer_id, order_date, total_amount, product_id)
VALUES (103, 3, '2024-05-25', 100.00, 3);

SAVEPOINT SP3;

SELECT * FROM Orders
ORDER BY order_id DESC
LIMIT 3; 

ROLLBACK TO SAVEPOINT SP2;

COMMIT;

SELECT * FROM Orders
ORDER BY order_id DESC
LIMIT 2;