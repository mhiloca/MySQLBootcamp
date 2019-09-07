SELECT title,
  Char_length(title)
FROM   books
WHERE  Char_length(title) = (SELECT Min(Char_length(title))
                       FROM   books
                       ORDER  BY title
                       LIMIT  1)
   OR Char_length(title) = (SELECT Max(Char_length(title))
                           FROM   books
                           ORDER  BY title DESC
                           LIMIT  1)
ORDER  BY ( Char_length(title) );

SELECT city,
       Char_length(city)
FROM   station
ORDER BY Char_length(city), city LIMIT 1;


SELECT city,
       Char_length(city)
FROM   station
ORDER  BY Char_length(city) DESC LIMIT 1;