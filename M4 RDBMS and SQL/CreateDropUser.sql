SELECT 
    user
FROM
    mysql.user;
    

CREATE USER 'sayan'@'localhost' IDENTIFIED BY 'root';

GRANT ALL PRIVILEGES ON wiprodb.* TO 'sayan'@'localhost';

SHOW GRANTS FOR 'sayan'@'localhost';

REVOKE ALL PRIVILEGES ON wiprodb.* FROM 'sayan'@'localhost';

SHOW GRANTS FOR 'sayan'@'localhost';

DROP USER 'sayan'@'localhost';

SELECT 
    user
FROM
    mysql.user;