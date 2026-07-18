create database coalesce;
use coalesce;
drop database colaece;

CREATE TABLE Users (
    UserID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50));
 
INSERT INTO Users (UserID, FirstName, LastName)
VALUES
(1, 'Alice', NULL),
(2, NULL, 'Smith'),
(3, NULL, NULL);


-- Table 1: CustomerData_A
CREATE TABLE CustomerData_A (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Country VARCHAR(50)
);
 
-- Table 2: CustomerData_B
CREATE TABLE CustomerData_B (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Country VARCHAR(50)
);
 -- Step 2: Insert Sample Data (20+ rows total)
-- Insert data into CustomerData_A
INSERT INTO CustomerData_A VALUES
(1, 'John', 'Doe', 'john@example.com', 'USA'),
(2, 'Jane', 'Smith', 'jane@example.com', 'UK'),
(3, 'Arjun', 'Patel', 'arjunp@example.com', 'India'),
(4, 'Maria', 'Gomez', 'maria@example.com', 'Mexico'),
(5, 'Tom', 'Hardy', 'tom@example.com', 'Canada'),
(6, 'Anya', 'Taylor', 'anya@example.com', 'USA'),
(7, 'Ravi', 'Kumar', 'ravi@example.com', 'India'),
(8, 'Emily', 'Clark', 'emily@example.com', 'Australia'),
(9, 'Daniel', 'Lee', 'daniel@example.com', 'UK'),
(10, 'Sara', 'Ali', 'sara@example.com', 'UAE');
 
-- Insert data into CustomerData_B
INSERT INTO CustomerData_B VALUES
(3, 'Arjun', 'Patel', 'arjunp@example.com', 'India'),
(4, 'Maria', 'Gomez', 'maria@example.com', 'Mexico'),
(5, 'Tom', 'Hardy', 'tom@example.com', 'Canada'),
(11, 'James', 'Miller', 'james@example.com', 'USA'),
(12, 'Linda', 'Taylor', 'linda@example.com', 'UK'),
(13, 'Rahul', 'Verma', 'rahul@example.com', 'India'),
(14, 'Lara', 'Croft', 'lara@example.com', 'Australia'),
(15, 'Kabir', 'Singh', 'kabir@example.com', 'India'),
(16, 'Amy', 'Adams', 'amy@example.com', 'USA'),
(17, 'Nina', 'Brown', 'nina@example.com', 'Germany');


select * from CustomerData_B;
select coalesce(A.customerid,b.customerid),





