CREATE TABLE cats(
  cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  age INT
);

INSERT INTO cats(name, age)
VALUES
('Frida', 1),
('Isis', 10),
('Monet', 11),
('Holly', 7),
('Ana Julia', 3);

SELECT * FROM cats;
