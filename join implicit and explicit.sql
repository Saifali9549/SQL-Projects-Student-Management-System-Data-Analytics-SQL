create database emp;
use emp;


-- Create the Employees table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    City VARCHAR(50));
-- Insert data into the Employees table
INSERT INTO Employees (ID, Name, Department, Salary, City) VALUES
(101, 'Alice', 'HR', 50000, 'New York'),
(102, 'Bob', 'IT', 60000, 'Los Angeles'),
(103, 'Charlie', 'Sales', 55000, 'Chicago'),
(104, 'Diana', 'Marketing', 52000, 'San Diego'),
(105, 'Ethan', 'Finance', 58000, 'Austin'),
(106, 'Fiona', 'IT', 62000, 'Seattle');
-- Create the Projects table
CREATE TABLE Projects (
    ID INT PRIMARY KEY,
    Project_Name VARCHAR(50),
    Start_Date DATE,
    End_Date DATE,
    Budget DECIMAL(10, 2));
-- Insert data into the Projects table
INSERT INTO Projects (ID, Project_Name, Start_Date, End_Date, Budget) VALUES
(103, 'Project X', '2025-01-01', '2025-06-30', 150000),
(104, 'Project Y', '2025-02-15', '2025-08-15', 120000),
(106, 'Project Z', '2025-03-01', '2025-09-30', 170000),
(107, 'Project Alpha', '2025-04-01', '2025-10-31', 200000),
(108, 'Project Beta', '2025-05-01', '2025-11-30', 100000);

-- implicit join
-- explit join

-- implicit join 
select project_name from projects;
select 

