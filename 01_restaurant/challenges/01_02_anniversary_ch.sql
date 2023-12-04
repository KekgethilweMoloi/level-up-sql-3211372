/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 04/12/2023
DESCRIPTION: Create a table in the database to store customer responses to our anniversary invitation.
*/
-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes

CREATE TABLE PartyAttendees(
 CustomerID INTEGER,
 PartySize INTEGER
);