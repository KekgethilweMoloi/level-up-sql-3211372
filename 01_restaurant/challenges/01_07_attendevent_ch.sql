/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 04/12/2023
DESCRIPTION: Register a customer for our Anniversary event.
*/
-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
INSERT INTO PartyAttendees(
CustomerID, 
PartySize)
VALUES(
(SELECT
 CustomerID
FROM
 Customers
WHERE
 Email='atapley2j@kinetecoinc.com'),
4);

SELECT 
 * 
FROM
 PartyAttendees


