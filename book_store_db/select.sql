SELECT DISTINCT
CONCAT(
SUBSTRING(author_fname, 1, 1)
, '. '
, author_lname
) AS 'author'
FROM books;

SELECT DISTINCT
CONCAT(
SUBSTRING(author_fname, 1, 1)
, '. '
, author_lname
)
AS 'author'
FROM books
ORDER BY author_lname;


SELECT DISTINCT
  CONCAT(
  title
  , ' by '
  , SUBSTRING(author_fname, 1, 1)
  , '. '
  , author_lname
  )
  AS 'book'
FROM books ORDER BY 3;

