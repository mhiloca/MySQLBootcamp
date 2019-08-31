SELECT title,
       CONCAT(author_fname , ' ' , author_lname) AS 'author',
       released_year
FROM books
WHERE author_fname LIKE '%Da%'
ORDER BY released_year DESC
LIMIT 5;

SELECT title
FROM books
WHERE title LIKE '%stories%'
ORDER BY title;

SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

