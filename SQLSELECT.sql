
SELECT Title + FirstName + ISNULL(MiddleName, ' ') + LastName + ISNULL(Suffix, ' ') 
AS CustomerContactName
FROM SalesLT.Customer;

SELECT SalesPerson, Title + FirstName AS CustomerName, Phone
FROM SalesLT.Customer;

SELECT CAST(CustomerID AS varchar) + ':' + CompanyName AS Companies
FROM SalesLT.Customer; 

SELECT SalesOrderNumber +'('+ CAST(RevisionNumber AS varchar) + ')' AS OrderRevision, 
CONVERT(varchar(10),OrderDate, 126) AS ANSIdate
FROM SalesLT.SalesOrderHeader;

SELECT FirstName +' '+ ISNULL(MiddleName, '') + LastName AS customername
FROM SalesLT.Customer;

UPDATE SalesLT.Customer
SET EmailAddress = NULL
WHERE CustomerID % 7 = 1;

SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

UPDATE SalesLT.SalesOrderHeader
SET ShipDate = NULL
WHERE SalesOrderID > 71899;

SELECT SalesOrderID, "ShippingStatus"=
CASE WHEN ShipDate Is NULL THEN 'Awaiting Shipment' ELSE 'Shipped' END
FROM SalesLT.SalesOrderHeader
ORDER BY SalesOrderID

SELECT SalesOrderID, "ShippingStatus"=
CASE
WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
ELSE 'Shipped' END
FROM SalesLT.SalesOrderHeader; 




