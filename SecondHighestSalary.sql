drop TABLE if EXISTS Person;
create table Person(
    id INT  PRIMARY KEY,
    salary INT
);
insert into person (id , salary)
values(1, 100), (2, 200), (3, 300);

-- Write your MySQL query statement below
select(select distinct salary from person
order by salary desc limit 1 offset 1)as SecondHighestSalary;