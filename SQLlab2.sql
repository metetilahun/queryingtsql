--1.1 Retrieve a list of cities 
SELECT DISTINCT City, StateProvince
FROM SalesLT.Address;
--1.2 Retrieve the heaviest products
SELECT TOP 10 PERCENT Name, ProductID, Weight
FROM SalesLT.Product ORDER BY Weight DESC;
--1.3 Retrieve the heaviest 100 products not including the heaviest ten
SELECT Name, ProductID, Weight
FROM SalesLT.Product ORDER BY Weight DESC OFFSET 10 ROWS FETCH NEXT 100 ROWS ONLY;
--2.1 Retrieve product details for product model 1 
SELECT Name, Color, Size, ProductModelID 
FROM SalesLT.Product WHERE ProductModelID=1; 
--2.2Filter products by color and size
SELECT *
FROM SalesLT.Product
SELECT ProductNumber, Name, Size, Color
FROM SalesLT.Product WHERE Color IN('black','red','white') AND Size IN('S','M');
--2.3 filter products by product number 
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product WHERE ProductNumber LIKE 'BK%';
--2.4 Retrieve specific products by product number 
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product WHERE ProductNumber LIKE 'BK%';
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product WHERE ProductNumber LIKE 'BK-%-[0-9][0-9]' AND ProductNumber NOT LIKE 'BK-R%';
