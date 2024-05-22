use wiprodb;

-- Write a SELECT query to retrieve all columns from a 'customers' table, and modify it to return only the customer name and email address for customers in a specific city.

SELECT 
    customer.name, customer.email
FROM
    customer
WHERE
    city = 'New York';