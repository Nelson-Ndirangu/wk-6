-- Question 1 Inner Join
USE salesdb;
SELECT e.firstName, 
	   e.lastName, 
       e.email, 
       e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode= o.officeCode;

-- Question 2 Left Join
USE salesdb;
SELECT p.productName, 
	   p.productVendor,
       p.productLine		
FROM products p
LEFT JOIN productlines pl ON p.productLine=pl.productLine; 

-- Question 3 Right Join
USE salesdb;
SELECT o.orderDate, 
	   o.shippedDate, 
       o.status, 
       o.customerNumber
FROM orders o
RIGHT JOIN customers c ON o.customerNumber=c.customerNumber