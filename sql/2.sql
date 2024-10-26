SELECT *
FROM order_details
WHERE order_id IN (
    SELECT orders.id
    FROM orders
    WHERE orders.shipper_id = 3
);