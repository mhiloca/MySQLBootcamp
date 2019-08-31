SELECT released_year,
        COUNT(*)
FROM books
GROUP BY released_year
ORDER BY released_year;

SELECT
  CONCAT(
  SUBSTRING(author_fname, 1, 1)
  , '. '
  , author_lname
  ) AS 'author'
  , AVG(released_year)
FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname, author_fname;

SELECT
  CONCAT(author_fname, ' ', author_lname) AS 'fullname'
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT released_year AS 'year',
        COUNT(*) AS '# books',
        AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;

