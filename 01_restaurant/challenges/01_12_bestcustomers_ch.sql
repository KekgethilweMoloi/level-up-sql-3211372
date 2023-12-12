/*
CREATED BY: Kekgethilwe Moloi
CREATE DATE: 11/12/2023
DESCRIPTION: - Identify a few customers who have ordered delivery
*/
-- from the restaurant the most often, so we can send
-- them a promotional coupon.


--Join Customers and Orders 
SELECT Customers.FirstName, Customers.LastName, Customers.Email, COUNT(OrderID) AS NumOfOrders
FROM Customers
JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
--Group the number of orders by customer ID
GROUP BY Orders.CustomerID
ORDER BY COUNT(OrderID) DESC
LIMIT 10;
