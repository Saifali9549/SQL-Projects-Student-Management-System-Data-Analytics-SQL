create database dml;
use dml;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2));
 
-- Insert sample data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, Department, Salary) VALUES
(1, 'John', 'Doe', 30, 'HR', 50000.00),
(2, 'Jane', 'Smith', 25, 'Finance', 60000.00),
(3, 'Emily', 'Jones', 35, 'IT', 70000.00),
(4, 'Michael', 'Brown', 40, 'IT', 80000.00),
(5, 'Sarah', 'Davis', 28, 'Finance', 55000.00);

select * from employees;

-- tcl command \s apply control over dml
start transaction;
savepoint a1;
update employees set department = "human resource";
savepoint a2;
insert into employees value(7,"abc", "def", 56, "hr", 768534);
savepoint a3;
delete from employees;

select * from employees;
rollback to a1;


start transaction;
savepoint a1;
update employees set salary = 65000 where employees= 5;
commit;
rollback to a1;

--- diff btw truncte and delete
start transaction;
savepoint a1;
truncate table	 employees;
rollback to a1;

-- grant revoke 
create user "onetick"@"powerbi"






