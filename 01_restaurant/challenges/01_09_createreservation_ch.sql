/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 05/12/2023
DESCRIPTION: Create a reservation for a customer who may or may not already be listed in our Customers table.
*/
-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT * 
FROM Customers 
WHERE Email='smac@kinetecoinc.com';

INSERT INTO Customers(
FirstName,LastName,Email,Phone)
VALUES(
'Sam','McAdams','smac@kinetecoinc.com','555-555-1232');

SELECT * 
FROM Customers 
WHERE Email='smac@kinetecoinc.com';

INSERT INTO Reservations(
CustomerID,Date,PartySize)
VALUES(
102,'2022-08-12 18:00:00',5);

SELECT Customers.FirstName, Customers.LastName, 
Customers.Email, Reservations.Date, Reservations.PartySize
FROM Customers
JOIN Reservations
ON Reservations.CustomerID=Customers.CustomerID
WHERE Email='smac@kinetecoinc.com';

/* 
--Delete from reservations - duplicate reservation added
SELECT * 
FROM Reservations
WHERE CustomerID=102 AND Date>'2022-08-10';

DELETE FROM Reservations
WHERE ReservationID=2001;

SELECT * 
FROM Reservations
WHERE CustomerID=102 
ORDER BY Date DESC;
*/