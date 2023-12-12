/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 05/12/2023
DESCRIPTION: Find the reservation information for a customer whose name we aren't quite sure how to spell.
*/
-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT
 c.FirstName,
 c.LastName,
 r.Date,
 r.PartySize
FROM
 Reservations AS r
JOIN
 Customers AS c
ON
 r.CustomerID=c.CustomerID
WHERE LastName LIKE 'St%' AND PartySize=4
ORDER BY
 Date DESC


