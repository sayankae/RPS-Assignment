-- Demonstrate the creation of an index on a table and discuss how it improves query performance. 
-- Use a DROP INDEX statement to remove the index and analyze the impact on query execution.

CREATE INDEX index_fid ON film_actor(film_id);

SELECT 
    *
FROM
    film_actor
WHERE
    film_id = 144;
    
DROP INDEX index_fid ON film_actor;

SELECT 
    *
FROM
    film_actor
WHERE
    film_id = 144;