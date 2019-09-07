SELECT CONCAT('...', REVERSE(SUBSTRING(title, 1, 10))) AS short_title FROM books;

SELECT
  CONCAT(
  author_lname,
  " is ",
  CHAR_LENGTH(author_lname),
  " long"
  )
  AS 'last name length'
FROM books;

SELECT
  CONCAT(
  REPLACE(
  SUBSTRING(title, 1, 10),
  'e',
  '3'
  )
  , '...'
  )
  AS 'new title'
FROM books;

SELECT
  CONCAT(
  SUBSTRING(author_fname, 1, 1)
  , '. '
  , UPPER(author_lname)
  )
  AS 'full name'
FROM books;

SELECT
  UPPER(
  CONCAT(
  author_fname
  , ' '
  , author_lname
  )
  )
  AS 'full name in caps'
FROM books;

SELECT
  CONCAT(
  title
  , ' was released in '
  , released_year
  )
  AS blurb
FROM books;

SELECT
  CONCAT(
  SUBSTRING(title, 1, 10)
  , '...'
  ) AS 'short title'
  , CONCAT(
  author_lname
  , ','
  , author_fname
  ) AS 'author'
  , CONCAT(
  stock_quantity
  , ' in stock'
  ) AS 'quantity'
FROM books;
