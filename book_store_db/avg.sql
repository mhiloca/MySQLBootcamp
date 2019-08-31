SELECT released_year,
       COUNT(*)
       , AVG(stock_quantity)
FROM books
GROUP BY released_year
ORDER BY released_year;