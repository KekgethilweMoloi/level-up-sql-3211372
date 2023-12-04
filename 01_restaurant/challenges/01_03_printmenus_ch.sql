/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 04/12/2023
DESCRIPTION: Create reports that will be used to make three menus.
*/
-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

-- First menu
SELECT
 Type,
 Name,
 Price,
 Description
FROM
 Dishes
ORDER BY
 Price;

--Second menu
SELECT 
 Type,
 Name,
 Price,
 Description
FROM
 Dishes
WHERE 
 Type = 'Appetizer' OR Type = 'Beverage'
ORDER BY
 Type;
 
--Third menu
SELECT
 Type,
 Name,
 Price,
 Description
FROM
 Dishes
WHERE 
 Type NOT IN ('Beverage')
ORDER BY
 Type;

 /*for third menu could have done
SELECT
  Type,
  Name,
  Price,
  Description
FROM
 Dishes
WHERE 
 Type != 'Beverage'
ORDER BY
 Type;
 */
