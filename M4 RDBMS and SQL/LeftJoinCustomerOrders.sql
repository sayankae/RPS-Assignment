-- Craft a query using an INNER JOIN to combine 'orders' and 'customers' tables for customers in a specified region, 
-- and a LEFT JOIN to display all customers including those without orders.

SELECT customer.customer_id, customer.name, customer.email, customer.city, orders.order_id, orders.order_date, orders.total_amount
FROM Customer
LEFT JOIN Orders ON customer.customer_id = orders.customer_id
WHERE customer.city = 'New York';