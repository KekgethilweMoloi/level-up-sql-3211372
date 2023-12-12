/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 12/12/2023
DESCRIPTION: Create a list of books to feature in an exhibit.
*/
-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

--get book titles of books published from 1890 - 1899
SELECT Title, Published
FROM Books
WHERE Published >= 1890 AND Published < 1900 --45 records

--get records of availble books from the same period 
SELECT DISTINCT Title, Barcode
FROM Books
WHERE Published BETWEEN 1890 AND 1899
AND (BookID NOT IN
(SELECT BookID 
 FROM Loans
 WHERE ReturnedDate IS NULL))
ORDER BY Title;