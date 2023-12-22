-- To create an database
create database sql_833;

-- To get into the database
use sql_833;

-- To craete the table into the database
create table students(
	student_id int,
    student_name nvarchar(50),
    student_rank int,
    address nvarchar(50)
    );
    
-- To view how many table are there in database    
show tables;

-- To view the information about the table
describe students;

-- To insert the information in the craeted table
insert into students values
(001,'Aryan',1,'xxx');

insert into students values
(002,'Aniket',3,'yyy');

insert into students values
(003,'Mukul',2,'zzz');

insert into students values
(004,'Neel',4,'mmm');

-- To view all the rows of the table
select * from students;

-- View only specific data from the column
select student_id,student_name, address from students;

-- sorting the column in ascending order
select * from students order by student_rank;

-- sorting the column in descending order
select * from students order by student_rank desc;


-- To delete the created table
drop table stdents;
