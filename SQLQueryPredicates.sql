
--SELECT DISTINCT <column> FROM <table>
SELECT DISTINCT ISNULL(Color, 'None') AS Color, ISNULL(Size, '-') AS Size
FROM SalesLT.Product ORDER BY Color;
--SELECT TOP <#> <column> FROM <table> ORDER BY <column>
SELECT TOP 100 Name, ListPrice
FROM SalesLT.Product ORDER BY ListPrice DESC;
--SELECT <column> FROM <table> ORDER BY <column> OFFSET <#> ROWS FETCH NEXT <#> ROWS ONLY  
SELECT Name, ListPrice 
FROM SalesLT.Product ORDER BY ProductNumber OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
--filtering using predicates 
--WHERE 
SELECT Name , Color 
FROM SalesLT.Product WHERE ProductModelID=6;
--SELECT <column> FROM <table> WHERE <column> LIKE 'value'
SELECT Name, ListPrice
FROM SalesLT.Product WHERE ProductNumber LIKE 'FR%'
SELECT ProductNumber
FROM SalesLT.Product
SELECT Name, ListPrice, ProductNumber 
FROM SalesLT.Product WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';
SELECT Name, SellEndDate
FROM SalesLT.Product WHERE SellEndDate IS NULL
--SELECT <column> FROM <table> WHERE <column> BETWEEM 'value' AND 'value'
SELECT Name, SellEndDate
FROM SalesLT.Product WHERE SellEndDate BETWEEN '2006/1/1' AND '2006/12/31'
--SELECT <column> FROM <table> WHERE <column> IN (value)
SELECT ProductCategoryID, Name, ListPrice 
FROM SalesLT.Product WHERE ProductCategoryID IN (5,6,7)
