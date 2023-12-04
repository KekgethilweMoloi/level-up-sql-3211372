/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 04/12/2023
DESCRIPTION: Remove incorrect information from the database.
*/
-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

-- get customer detail
SELECT
 CustomerID, FirstName, LastName
FROM
 Customers
WHERE
 FirstName='Norby';

-- Use detail to find reservation
SELECT
 * 
FROM
 Reservations
WHERE
 CustomerID=64;

--Delete reservation
DELETE FROM Reservations
WHERE ReservationID=2000 AND CustomerID=64;

SELECT
 * 
FROM
 Reservations
WHERE
 CustomerID=64;

 /* Better
SELECT
  * 
FROM 
 Reservations 
JOIN
 Customers
ON 
 Reservations.CustomerID=Customers.CustomerID
WHERE 
 Customers.FirstName='Norby' AND Reservations.Date > '2022-07-24';

DELETE FROM Reservations
WHERE ReservationID=2000;

or instead of delete

UPDATE Reservations 
SET Date=NULL
WHERE ReservationID=2000

 */