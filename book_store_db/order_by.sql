SELECT DISTINCT
CONCAT(
SUBSTRING(author_fname, 1, 1)
, '. '
, author_lname
)
AS 'author'
, title
FROM books ORDER BY author_lname, author_fname;



SELECT title,
       released_year
FROM books
ORDER BY released_year DESC
LIMIT 5;
