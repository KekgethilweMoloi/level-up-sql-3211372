/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 04/12/2023
DESCRIPTION: Update a customer's contact information.
*/
-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers
SET 
 Address = '74 Pine St.', 
 City = 'New York',
 State = 'NY'
WHERE 
 FirstName='Taylor' and LastName='Jenkins' and Phone='202-765-8011';

SELECT
 *
FROM 
 Customers
WHERE
 FirstName='Taylor' AND LastName='Jenkins';

/* Better version
SELECT CustomerID, FirstName, LastName, Address
FROM Customers
WHERE FirstName='Taylor' and LastName='Jenkins';

UPDATE Customers
SET 
 Address = '74 Pine St.', 
 City = 'New York',
 State = 'NY'
WHERE CustomerID = 26;

SELECT * 
FROM Customers
WHERE CustomerID = 26;
*/

