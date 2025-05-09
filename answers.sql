CREATE DATABASE OrdersDB;
USE OrdersDB;

CREATE TABLE ProductDetail (
    OrderID INT PRIMARY KEY AUTO_INCREMENT, 
    CustomerName VARCHAR(100),
    Products VARCHAR(255)
);

CREATE TABLE OrdersDetails ( 
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES ProductDetail(OrderID),
    QUANTITY INT
);

INSERT INTO ProductDetail (OrderID, CustomerName, Products)
VALUES
(101, 'John Doe', 'Laptop', 'Mouse'),
(102, 'Jane Smith', 'Tablet', 'Keyboard', 'Mouse'),
(103, 'Emily Clark', 'Phone');


INSERT INTO OrdersDetails (CustomerName, OrderID, QUANTITY)
VALUES
('John Doe', 2, 1),
('Jane Smith', 3, 1),  
('Emily Clark', 1, 1);