USE Northwind;

drop table student
create table student(
id int not null identity primary key,
name varchar(max),
course varchar(max)
);

insert into student
values ('Lee',1),('Barry',1),('David',2),('Tim',5),('Nicole',NULL)

drop table course
create table course(
id int not null identity primary key,
name varchar(max)
);

insert into course
values ('Business'),('Test'),('Agile'),('Web'),('Dev')

select student.name,course.name
from student inner join course on student.course = course.id;

