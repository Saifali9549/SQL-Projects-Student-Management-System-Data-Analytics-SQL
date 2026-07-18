create database mathfunctions;
use mathfunctions;

select * from data__;
select sum(salary) as total_salary from data__;
select phone no. from data__;

select department, grade, 
       sum(salary) as total_salary,
       avg(salary) as average_salary,
       min(salary) as minimum_salary,
       max(salary) as max_salary,
       count(salary) as total_rows, 
       department
from data__ 
where department="hr"
group by department, grade;
