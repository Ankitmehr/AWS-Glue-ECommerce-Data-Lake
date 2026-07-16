SELECT
    o.order_id,
    c.name AS customer_name,
    c.email AS customer_email,
    p.product_name,
    p.category,
    o.quantity,
    p.price,
    (o.quantity * p.price) AS total_sales
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
INNER JOIN products p
    ON o.product_id = p.product_id
ORDER BY total_sales DESC;
