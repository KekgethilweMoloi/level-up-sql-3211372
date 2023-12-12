/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 12/12/2023
DESCRIPTION: Prepare a report of books due to be returned to the library on July 13, 2022.
*/
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

--find all records of books due on 2022-07-13
SELECT * 
FROM Loans
WHERE DueDate='2022-07-13';

--find joined records of books due on 2022-07-13 and haven't been returned
SELECT Loans.DueDate, Books.Title, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Books
ON Loans.BookID = Books.BookID
JOIN Patrons
ON Loans.PatronID = Patrons.PatronID
WHERE DueDate='2022-07-13' AND loans.ReturnedDate ISNULL;