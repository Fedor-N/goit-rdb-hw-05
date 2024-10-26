DROP FUNCTION IF EXISTS divide;

DELIMITER //

CREATE FUNCTION divide(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    IF b = 0 THEN
        RETURN NULL;
    ELSE
        RETURN a / b;
    END IF;
END //

DELIMITER ;

SELECT order_id, quantity, divide(quantity, 10.0) AS divided_quantity
FROM order_details;