SELECT
  CONCAT(
  SUBSTRING(author_fname, 1, 1)
  , '. '
  , author_lname
  ) AS 'author'
  , MIN(released_year)
FROM books
GROUP BY author_lname, author_fname;

SELECT
  CONCAT(
  SUBSTRING(author_fname, 1, 1)
  , '. '
  , author_lname
  ) AS 'author'
  , MAX(pages)
FROM books
GROUP BY author_lname, author_fname;
