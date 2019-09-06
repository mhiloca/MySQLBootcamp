
-- IMPLICIT INNER JOIN - not recommended
SELECT first_name, last_name, order_date, amount
FROM customers, orders
WHERE customers.id = customer_id;

-- EXPLICIT INNER JOIN - best practice
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
  ON customers.id = orders.customer_id;

SELECT
  CONCAT(
  SUBSTRING(first_name, 1, 1), '. ', last_name) AS 'customer',
  DATE_FORMAT(order_date, '%M, %d %Y') AS 'ordered on',
  CONCAT('$', amount) AS 'total'
FROM customers JOIN orders
  ON customers.id = orders.customer_id;
