/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 11/12/2023
DESCRIPTION: Determine how many copies of the book 'Dracula' 
are available for library patrons to borrow.
*/

SELECT
--Count how many copies the library has
(
SELECT COUNT(Title)
FROM Books
WHERE Books.Title='Dracula')-
--Find how many books are still on loan
(
SELECT COUNT(Books.Title)
FROM Books
JOIN Loans
ON Books.BookID=Loans.BookID
WHERE Title='Dracula' AND Loans.ReturnedDate ISNULL) AS NumOfAvailableBooks