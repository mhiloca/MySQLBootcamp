SELECT title,
       CONCAT(
       SUBSTRING(author_fname, 1, 1)
       , '. '
       , author_lname
       ) AS 'author',
        released_year
FROM books WHERE author_lname='Eggers' AND released_year > 2010;
