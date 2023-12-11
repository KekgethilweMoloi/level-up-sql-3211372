/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 11/12/2023
DESCRIPTION: Check out two books for Jack Vaan (jvaan@wisdompets.com)
*/
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

--first find if the person has checked out the book already
SELECT Books.BookID, Books.Title, Patrons.Email, Loans.LoanDate, Loans.DueDate
FROM Books
JOIN Loans
ON Books.BookID=Loans.BookID
JOIN Patrons
ON Loans.PatronID=Patrons.PatronID
WHERE Email='jvaan@wisdompets.com' AND (Books.Barcode=2855934983 OR Books.Barcode=4043822646);

--Add loan record
INSERT INTO Loans( BookID, PatronID,LoanDate, DueDate)
VALUES(
(SELECT BookID
 FROM Books
 WHERE Barcode=2855934983),
(SELECT PatronID
 FROM Patrons
 WHERE Email='jvaan@wisdompets.com'),
 '2022-08-25',
 '2022-09-08');

INSERT INTO Loans( BookID, PatronID,LoanDate, DueDate)
VALUES(
(SELECT BookID
 FROM Books
 WHERE Barcode=4043822646),
(SELECT PatronID
 FROM Patrons
 WHERE Email='jvaan@wisdompets.com'),
 '2022-08-25',
 '2022-09-08');

--Test to see if its there
SELECT Books.BookID, Books.Title, Patrons.Email, Loans.LoanDate, Loans.DueDate
FROM Books
JOIN Loans
ON Books.BookID=Loans.BookID
JOIN Patrons
ON Loans.PatronID=Patrons.PatronID
WHERE Email='jvaan@wisdompets.com' AND (Books.Barcode=2855934983 OR Books.Barcode=4043822646);
