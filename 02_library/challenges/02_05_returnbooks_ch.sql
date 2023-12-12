/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 12/12/2023
DESCRIPTION: Return three books to the library using their bar codes.
*/
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

--find details related to the books returned by barcode 
SELECT Loans.ReturnedDate, Books.Title, Books.Barcode
FROM Loans
JOIN Books
ON Loans.BookID = Books.BookID
WHERE (Barcode=6435968624 OR Barcode=5677520613 OR Barcode=8730298424) AND Loans.ReturnedDate ISNULL;

--Update loans data
UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = 
(SELECT BookID
 FROM Books
 WHERE Barcode=5677520613) 
 AND ReturnedDate ISNULL;

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = 
(SELECT BookID
 FROM Books
 WHERE Barcode=6435968624) 
 AND ReturnedDate ISNULL;  
 
UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = 
(SELECT BookID
 FROM Books
 WHERE Barcode=8730298424) 
 AND ReturnedDate ISNULL;

--check that the update worked
SELECT Loans.ReturnedDate, Books.Title, Books.Barcode
FROM Loans
JOIN Books
ON Loans.BookID = Books.BookID
WHERE (Barcode=6435968624 OR Barcode=5677520613 OR Barcode=8730298424) AND Loans.ReturnedDate = '2022-07-05';