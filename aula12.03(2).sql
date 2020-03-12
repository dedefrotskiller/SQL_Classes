CREATE TABLE customers (
customerNumber INT PRIMARY KEY ,
customerName VARCHAR (30),
contactLastName VARCHAR (15) ,
contactFirstName VARCHAR (15) ,
phone VARCHAR (20) ,
addressLine1 VARCHAR (50) ,
addressLine2 VARCHAR (50) ,
city VARCHAR (50) ,
state VARCHAR (50) ,
postalCode VARCHAR (50) ,
country VARCHAR (50) ,
salesRepEmployeeNumber INT,
credirLimit FLOAT(10,2)
);

CREATE TABLE orders(
orderNumber INT PRIMARY KEY,
orderDate DATE,
requiredDate DATE,
shippedDate DATE,
orderStatus VARCHAR (50) ,
comments VARCHAR (50) ,
customerNumber INT,

CONSTRAINT FK_customers FOREIGN KEY (customerNumber)
REFERENCES customers (customerNumber)
);
DROP TABLE customers
