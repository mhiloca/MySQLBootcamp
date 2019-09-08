SELECT city
FROM   station
WHERE  city REGEXP '^[^AEIOU]|[^aeiou]$';


SELECT DISTINCT city
FROM   station
WHERE  Left(city, 1) REGEXP '[^AEIOU]'
       AND Right(city, 1) REGEXP '[^aeiou]';