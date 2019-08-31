SELECT
  CONCAT(
  SUBSTRING(author_fname, 1, 1)
  , '. '
  , author_lname
  ) AS 'author'
  , SUM(pages)
FROM books
GROUP BY author_lname, author_fname
ORDER BY SUM(pages);
