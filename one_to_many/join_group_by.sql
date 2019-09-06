--  SELECT
--    CONCAT(SUBSTRING(first_name, 1, 1), '. ', last_name) AS 'customer',
--    DATE_FORMAT(order_date, '%d/%m/%Y') AS 'ordered on',
--    CONCAT('$ ', amount) AS 'total'
--  FROM customers JOIN orders
--    ON customers.id = orders.customer_id
--  ORDER BY orders.customer_id;

SELECT first_name, last_name, COUNT(*) AS 'orders', SUM(amount) AS 'total'
FROM customers
JOIN orders
  ON customers.id = orders.customer_id
GROUP BY orders.customer_id ORDER BY SUM(amount);

SELECT
  CONCAT(SUBSTRING(first_name, 1, 1), '. ', last_name) AS 'customer',
  COUNT(*) AS orders,
  SUM(amount) AS total,
  CASE
    WHEN SUM(amount) > 200.00 THEN 'VIP customer'
    ELSE 'Regular customer'
  END AS status
FROM customers JOIN orders
  ON customers.id = orders.customer_id
GROUP BY orders.customer_id ORDER BY total;
