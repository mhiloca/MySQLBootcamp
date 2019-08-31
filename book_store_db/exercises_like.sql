SELECT
    CONCAT(
    title, ' - ', released_year
    ) AS 'summary'
FROM books
ORDER BY released_year DESC
LIMIT 3;

SELECT author_fname,
      author_lname
FROM books
WHERE author_lname LIKE '% %';

SELECT title,
       released_year AS 'year',
       stock_quantity AS 'in stock'
FROM books
ORDER BY stock_quantity, title
LIMIT 3;

SELECT title,
        author_lname
FROM books
ORDER BY author_lname, title;

SELECT DISTINCT
  CONCAT(
  UPPER(CONCAT_WS(' ',
  'my favorite author is',
  author_fname, author_lname))
  , '!'
  ) AS 'yell'
FROM books
ORDER BY author_fname, author_lname;

