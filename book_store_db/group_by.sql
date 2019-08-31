SELECT title, author_lname
FROM books
GROUP BY author_lname;

SELECT author_lname,
  COUNT(*)
FROM books
GROUP BY author_lname
ORDER BY COUNT(*);

SELECT
  CONCAT(
  COUNT(*),
  ' book(s) in ',
  released_year
  ) AS 'year'
FROM books
GROUP BY released_year
ORDER BY released_year;

