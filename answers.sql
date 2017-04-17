 CREATE TABLE Person (
  'Id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'Name' varchar(50),
  'Age' Integer(3),
  'Height' Integer(3),
  'City' varchar(50),
  'FavoriteColor' varchar(20)
  );

 INSERT INTO Person VALUES
(1, 'Nephi', 48, 68, 'Jerusalem', 'Blue'),
(2, 'Jacob', 47, 69, 'Nephi', 'Yellow'),
(3, 'Enos', 49, 67, 'Bountiful', 'Blue'),
(4, 'Jarom', 46, 70, 'Zarahemla', 'Orange'),
(5, 'Omni', 50, 66, 'Manti', 'Red');
Select * FROM Person;

 SELECT Name, Height FROM Person
	ORDER BY HEIGHT;
 SELECT Name, Height FROM Person
	ORDER BY HEIGHT DESC;
 SELECT Name, age FROM Person
	ORDER BY age DESC;
 SELECT Name, age FROM Person
	WHERE age>20;
 SELECT Name, age FROM Person
	WHERE age=18;
 SELECT Name, age FROM Person
	WHERE age>20 OR age>30;
 SELECT Name, age FROM Person
	WHERE age!=27;

SELECT Name, favoriteCOLOR FROM Person
	WHERE favoriteCOLOR != 'Red';
SELECT Name, favoriteCOLOR FROM Person
	WHERE favoriteCOLOR != 'Red' AND favoriteCOLOR != 'Blue';
SELECT Name, favoriteCOLOR FROM Person
	WHERE favoriteCOLOr = 'Orange' OR favoriteCOLOr = 'Green';
SELECT Name, favoriteCOLOR FROM Person
	WHERE favoriteCOLOr IN ('Orange', 'Green', 'Blue');
SELECT Name, favoriteCOLOR FROM Person
	WHERE favoriteCOLOr IN ('Yellow', 'Purple');


  CREATE TABLE Orders (
    productName varchar(255),
    productPrice numeric(7,2),
    quantity integer,
    personID integer
  );

  INSERT INTO Orders VALUES
  	('ham', 1.11, 3, 1),
      ('potatoes', 2.12, 2, 1),
      ('rolls', 3.41, 9, 1),
      ('asparagus', 4.32, 5, 1),
      ('ham', 1.11, 6, 2),
      ('potatoes', 2.12, 4, 2);

  Select * FROM orders;


 Select * FROM orders;

 SELECT sum(quantity) from orders;
 SELECT SUM(productPrice*quantity)  FROM Orders;
 SELECT SUM(productPrice*quantity) FROM Orders GROUP BY personId;


 INSERT INTO artist VALUES
	  (276, 'A'),
    (277, 'B'),
    (278, 'C'),
    (279, 'D');

 SELECT * FROM artist ORDER BY Name DESC LIMIT 10;
 SELECT * FROM artist ORDER BY Name LIMIT 5;
 SELECT * FROM artist WHERE Name LIKE 'black%';
 SELECT * FROM artist WHERE Name LIKE '%black%';

 INSERT INTO Employee (LastName, FirstName, Title) VALUES
	('Anderson', 'Abe', 'Noob'),
    ('Zikes', 'Zeb', 'Noob');

 SELECT FirstName, LastName FROM Employee WHERE city = 'Calgary';
 SELECT FirstName, LastName, birthdate FROM Employee ORDER BY birthdate LIMIT 1;
 SELECT FirstName, LastName, birthdate FROM Employee ORDER BY birthdate DESC LIMIT 1;
 SELECT FirstName, LastName, ReportsTo FROM Employee WHERE reportsto=2;
 SELECT Count(*) FROM Employee WHERE city='Lethbridge';


 SELECT * FROM Invoice WHERE BillingCountry = 'USA';
 SELECT * FROM Invoice ORDER BY Total DESC LIMIT 1;
 SELECT * FROM Invoice ORDER BY Total LIMIT 1;
 SELECT * FROM Invoice WHERE Total > 5;
 SELECT COUNT(*) FROM Invoice WHERE Total < 5;
 SELECT COUNT(*) FROM Invoice WHERE BillingState IN ('CA', 'TX', 'AZ');
 SELECT avg(Total) FROM Invoice;
 SELECT sum(Total) FROM Invoice;
