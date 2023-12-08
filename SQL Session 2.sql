-- View all databases Shortcut to run query ctrl+enter
show databases;

-- Use the database required
use ravet;

-- View the tables in database
show tables;

-- Creating a table Dept
create table dept(
	DeptId int primary key,
    DeptName varchar(50) not null unique);
    
-- View the table details
describe dept;

-- View the dept table
select * from dept;

-- Insert into values
insert into dept
values (1, 'Sales'),
	   (2, 'Purchase'),
       (3, 'Engineering'),
       (4, 'HR');
       
-- View dept table
select * from dept;

-- Trying to add null value in dept
insert into dept
values (5, null);

-- View the table
select * from dept;

-- Trying to add duplicate value in dept
insert into dept
values(5, 'HR');

-- Viewing the table
select * from dept;

-- create employee table
create table emp(
	EmpId int primary key,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    email varchar(100) unique,
    DeptId int not null,
    Salary decimal(10,2) check(Salary>0),
    HireDate date default '2023-01-01',
    foreign key (DeptId) references Dept(DeptId));
    
-- describe emp table
describe emp;

-- view the emp table
select * from emp;

-- Inserting values in emp table
insert into emp
values (1, 'Utkarsh', 'Gaikwad', 'utkarsh@gmail.com', 3, 15000, '2023-02-01');

-- View the employee table
select * from emp;

-- Trying to add null values to firstname
insert into emp
values (2, null, 'More', 'test@test.com', 1, 10000, '2023-01-03');

-- view the employee table
select * from emp;

-- Adding the employee 2
insert into emp
values (2, 'Sayali', 'More', 'test@test.com', 1, 10000, default);

-- view the employee table
select * from emp;

-- Trying to add duplicate email
insert into emp
values (3, 'Raman', 'Verma', 'test@test.com', 2, 25000, default);

-- View the table again
select * from emp;

-- Emp3 proper entry
insert into emp
values (3, 'Raman', 'Verma', 'test2@test.com', 2, 25000, default);

-- View the emp table
select * from emp;

-- Adding DeptId which does not exists
insert into emp
values(4, 'Rakesh', 'More', 'example@gmail.com', 10, 30000, default);

-- View the table
select * from emp;

-- Correct entry for 4 
insert into emp
values(4, 'Rakesh', 'More', 'example@gmail.com', 4, 30000, default);

-- view the emp table again
select * from emp;

-- Trying to add negative or 0 salary
insert into emp
values (5, 'Suresh', 'Jadhav', 'test@gmail.com', 3, -10000, '2023-03-05');

-- Correct entry for emp 5
insert into emp
values (5, 'Suresh', 'Jadhav', 'test@gmail.com', 3, 10000, '2023-03-05');

-- View the emp table
select * from emp;

-- Altert table constraints
alter table emp
modify column email varchar(100) not null unique;

-- describe 
describe emp;