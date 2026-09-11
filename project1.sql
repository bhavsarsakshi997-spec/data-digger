CREATE DATABASE IF NOT EXISTS data_digger;
USE data_digger;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Alice', 'alice@gmail.com', 'Ahmedabad'),
(2, 'Bob', 'bob@gmail.com', 'Surat'),
(3, 'Charlie', 'charlie@gmail.com', 'Vadodara'),
(4, 'David', 'david@gmail.com', 'Rajkot'),
(5, 'Emma', 'emma@gmail.com', 'Gandhinagar');

SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Mumbai'
WHERE CustomerID = 2;

DELETE FROM Customers
WHERE CustomerID = 5;

SELECT *
FROM Customers
WHERE Name = 'Alice';

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, CURDATE(), 2500.00),
(102, 2, DATE_SUB(CURDATE(), INTERVAL 5 DAY), 1500.00),
(103, 3, DATE_SUB(CURDATE(), INTERVAL 10 DAY), 3200.00),
(104, 1, DATE_SUB(CURDATE(), INTERVAL 20 DAY), 800.00),
(105, 4, DATE_SUB(CURDATE(), INTERVAL 40 DAY), 4500.00);

SELECT *
FROM Orders
WHERE CustomerID = 1;

UPDATE Orders
SET TotalAmount = 2800.00
WHERE OrderID = 101;

DELETE FROM Orders
WHERE OrderID = 105;

SELECT *
FROM Orders
WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

SELECT
    MAX(TotalAmount) AS Highest_Order,
    MIN(TotalAmount) AS Lowest_Order,
    AVG(TotalAmount) AS Average_Order
FROM Orders;

INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(1, 'Laptop', 55000.00, 10),
(2, 'Smartphone', 15000.00, 20),
(3, 'Headphones', 2000.00, 15),
(4, 'Keyboard', 1200.00, 25),
(5, 'Mouse', 500.00, 0);

SELECT *
FROM Products
ORDER BY Price DESC;

UPDATE Products
SET Price = 16000.00
WHERE ProductID = 2;

DELETE FROM Products
WHERE Stock = 0;

SELECT *
FROM Products
WHERE Price BETWEEN 500 AND 2000;

SELECT
    MAX(Price) AS Most_Expensive,
    MIN(Price) AS Cheapest
FROM Products;

INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
VALUES
(1, 101, 1, 1, 55000.00),
(2, 101, 3, 2, 4000.00),
(3, 102, 2, 1, 15000.00),
(4, 103, 4, 2, 2400.00),
(5, 104, 3, 1, 2000.00);

SELECT *
FROM OrderDetails
WHERE OrderID = 101;

SELECT SUM(SubTotal) AS Total_Revenue
FROM OrderDetails;

SELECT
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS Total_Quantity
FROM OrderDetails od
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY Total_Quantity DESC
LIMIT 3;

SELECT
    ProductID,
    COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 3
GROUP BY ProductID;