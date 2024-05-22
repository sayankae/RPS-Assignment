-- Utilize a subquery to find customers who have placed orders above the average order value, 
-- and write a UNION query to combine two SELECT statements with the same number of columns.


SELECT c.customer_id, c.name, c.email, c.city, SUM(o.total_amount) AS total_order_amount
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(o.total_amount) > (
    SELECT AVG(total_amount)
    FROM Orders
) UNION
SELECT c.customer_id, c.name, c.email, c.city, SUM(o.total_amount) AS total_order_amount
FROM Customer c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING SUM(o.total_amount) <= (
    SELECT AVG(total_amount)
    FROM Orders
);
