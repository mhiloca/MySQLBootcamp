SELECT title, released_year
FROM books
WHERE released_year > 2000
AND author_lname='Lahiri' ORDER BY released_year;

SELECT title, author_lname FROM books
WHERE pages BETWEEN 100 AND 200 ORDER BY pages;

SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%'
ORDER BY author_lname;

SELECT title, author_lname FROM books
WHERE SUBSTRING(author_lname, 1, 1)
IN('S', 'C') ORDER BY author_lname;


SELECT title,
    CONCAT(
    SUBSTRING(author_lname, 1, 1),
    '. ',
    author_lname
    ) AS 'author',
  CASE
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
    ELSE 'Novel'
  END AS 'genre'
FROM books ORDER BY title;

SELECT CONCAT(SUBSTRING(author_fname, 1, 1), '. ', author_lname) AS 'author',
  CASE
    WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), ' books')
    ELSE CONCAT(COUNT(*), ' book')
  END AS 'count'
FROM books GROUP BY author_lname ORDER BY count(*);