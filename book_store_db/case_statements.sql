--  SELECT title, released_year AS year,
--    CASE
--      WHEN released_year >= 2000 THEN 'Modern Lit'
--      ELSE '20th Century Lit'
--    END AS 'Lit Era'
--  FROM books;

--  SELECT title, stock_quantity AS 'quantity',
--  CASE
--    WHEN stock_quantity >= 100 THEN '***'
--    WHEN stock_quantity BETWEEN 50 AND 99 THEN '**'
--    ELSE '*'
--  END AS 'stock'
--  FROM books ORDER BY stock_quantity;

SELECT title,
      CONCAT(
      SUBSTRING(author_fname, 1, 1),
      '. ',
      UPPER(author_lname)
      ) AS 'author',
      released_year AS 'year',
      stock_quantity AS 'quantity',
  CASE
    WHEN stock_quantity <= 50 THEN '*'
    WHEN stock_quantity <= 100 THEN '**'
    ELSE '***'
  END AS 'stock'
FROM books ORDER BY released_year;


