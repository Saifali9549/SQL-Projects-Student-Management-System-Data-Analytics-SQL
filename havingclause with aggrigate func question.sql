create database having_;
use having_;

-- Create the employees table
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age INT
);
 
-- Insert multiple rows into the employees table
INSERT INTO employees (first_name, last_name, department, salary, age) VALUES
('John', 'Doe', 'HR', 50000, 30),
('Jane', 'Smith', 'IT', 60000, 28),
('Emily', 'Jones', 'Finance', 55000, 35),
('Michael', 'Brown', 'IT', 62000, 40),
('Jessica', 'Davis', 'HR', 52000, 29),
('David', 'Wilson', 'Finance', 58000, 32),
('Sarah', 'Johnson', 'IT', 60000, 27),
('James', 'Miller', 'HR', 48000, 33),
('Linda', 'Taylor', 'Finance', 53000, 37),
('Robert', 'Anderson', 'IT', 62000, 38);
 
-- Questions to practice the HAVING clause
 
-- Question 1: What are the total salaries paid by each department where the total is greater than 100,000?
select department , sum(salary) as total from employees group by department having sum(salary) > 100000;
-- Question 2: List the departments that have more than 2 employees.
select department , count(*) from employees group by department having count(*)>3;
-- Question 3: Find departments with an average salary greater than 55,000.
select department , avg(salary) from employees group by department having avg(salary)>5000;
-- Question 4: Show departments where the minimum salary is greater than 50,000.
select department , min(salary) from employees group by department having min(salary)>50000;
-- Question 5: Get departments with a maximum salary less than 65,000.
select department , max(salary) from employees group by department having max(salary)<65000;

-- Question 6: Display departments with the total number of employees aged over 30 being greater than 1.
select department , count(*) as total from employees where age>30  group by department having count(salary) > 1;
-- Question 7: Show departments where the average age of employees is less than 35.
select department, avg(age) as total from employees group by department having avg(age)<35;

-- Question 8: Find departments with the total number of employees earning more than 55,000 being greater than 2.
select department , count(*) from employees  group by department having count(*) >2;

 
-- Question 9: List departments where the average salary of employees aged under 30 is greater than 50,000.
select department, avg(salary) as avg_aged from employees where age<30 group by department having avg(salary)>50000;    


-- Question 10: Get departments with the total age of employees greater than 100.
select department, sum(age) as total_age from employees group by department having sum(age) > 100;

-- doubt
-- Question 11: Show departments where the number of employees named 'John' is greater than 0.

-- doubt
-- Question 12: Find departments with the average salary greater than the overall average salary.
select department, avg(salary) from employees where greatest avg_salary group by department  having avg(salary);  

-- Question 13: Display departments where the sum of salaries for employees aged 40 or above is greater than 60,000.
select department , sum(salary) from employees where age>=40 group by department having sum(salary) > 60000;

-- Question 14: Get departments where the average age of employees is between 30 and 40.
select department, avg(age) from employees group by department having avg(age) between 30 and 40;


-- Question 15: Show departments where the minimum age of employees is less than 30.
select department, min(age) from employees group by department having min(age) <30;
