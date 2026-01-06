-- Active: 1750698798137@@127.0.0.1@3306@college
show DATABASES;
DROP DATABASE if exists dummy;
create DATABASE if NOT EXISTS college;
use college;
create table subject (
    id int PRIMARY KEY,
    name VARCHAR(50),
    teacher varchar(100) UNIQUE
);
create Table student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subjectId int ,
    Foreign Key (subjectId) REFERENCES subject(id)
);

insert into student
(id,name,subjectId)
VALUES(1,"alfred",2),
(2,"james",1),
(3,"nova" , 1);

insert INTO subject
(id , name , teacher)
VALUES(1,"maths", "sham"),
(2,"sociology","rio"),
(3 , "meteorscience","Mr Beddy");

-- use of CHECK
drop table if exists teacher;
create table teacher(
    id int PRIMARY KEY,
    subjectId int ,
    age int not NULL,
    city varchar(50) DEFAULT 'delhi',
    constraint age_check check (age >=20),
    Foreign Key (subjectId) REFERENCES subject(id)
);
select * from teacher;
select id from student;

SELECT teacher from subject;