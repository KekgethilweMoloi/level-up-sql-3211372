/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 12/12/2023
DESCRIPTION: Prepare a report of the library patrons who have checked out the fewest books.
*/
SELECT COUNT(LoanID) AS NumOfBooks, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons
ON Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY NumOfBooks
LIMIT 5
