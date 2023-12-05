/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 05/12/2023
DESCRIPTION: Update information in the database.
*/
-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

--find Cleo's customerID
SELECT CustomerID, FirstName,LastName, Phone, FavoriteDish
FROM Customers
WHERE LastName='Goldwater'; --42, 14

-- Find current fav Dishes - do this so you can be sure new dish isn't already a fav
SELECT * 
FROM Dishes
WHERE DishID=14;

--update dish preferance
UPDATE Customers
SET
FavoriteDish=
(SELECT DishID
FROM Dishes
WHERE Name='Quinoa Salmon Salad')
WHERE CustomerID=42;

--see result
SELECT customers.CustomerID, customers.FirstName,Customers.LastName,Customers.FavoriteDish, Dishes.Name
FROM Customers
JOIN Dishes
ON Customers.FavoriteDish=Dishes.DishID
WHERE LastName='Goldwater';

