create database company;
use company;
create table departments(
id int primary key,
department_name varchar(50));

create table employeevs(
id int auto_increment primary key,
name varchar(50),
department_id int,
salary decimal(10,2),
foreign key (department_id) references departments(id)
);

rename table employeevs to employees;

insert into departments (id, department_name) values
(1,'HR'),
(2,'IT'),
(3,'Finance');

insert into employees (name, department_id,salary) values
('Alice',1,50000),
('bob',2,60000),
('Carol',3,55000),
('David',2,65000),
('Eva',1,52000);

select * from employees;

select* from employees
where salary>50000;

select* from employees
where department_id =2 and salary>60000;

select* from employees
order by salary desc;

select* from employees
order by salary desc
limit 3;

select distinct department_id from employees;

select count(*) from employees;
select avg(salary) from employees;
select min(salary), max(salary) from employees;

select e.name, d.department_name,e.salary
from employees e
join departments d
on e.department_id=d.id;

select e.name,d.department_name,e.salary
from employees e
left join departments d
on e.department_id=d.id;

update employees
set salary=70000
where name='bob';

update employees
set salary=salary+500
where department_id=2;

update employees
set department_id=1, salary=65000
where name='david';

delete from employees where name='eva';

select department_id , count(*) as total_employees
from employees
group by department_id;

select department_id , avg(salary) as average_salary
from employees
group by department_id
having avg(salary)>50000;











