SELECT first_name,
        last_name,
        IFNULL(SUM(amount), 0) AS total
FROM customers LEFT JOIN orders
  ON customers.id = customer_id
GROUP BY customers.id ORDER BY total DESC;

SELECT CONCAT(IFNULL(first_name, 'MISSING'), ' ', IFNULL(last_name, 'USER')) AS fullname,
        IFNULL(SUM(amount), 0) AS total
FROM customers RIGHT JOIN orders
  ON customers.id = orders.customer_id
GROUP BY fullname ORDER BY total;
