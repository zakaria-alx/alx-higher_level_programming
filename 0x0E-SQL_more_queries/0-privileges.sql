-- Lists all privileges of the MySQL users user_0d_1 and user_0d_2
# SHOW GRANTS FOR 'user_0d_1'@'localhost';
# SHOW GRANTS FOR 'user_0d_2'@'localhost';
SELECT
    user,
    host,
    MAX_GRANTS as privileges
FROM
    mysql.user
WHERE
    user IN ('user_0d_1', 'user_0d_2')
    AND host = 'localhost';
