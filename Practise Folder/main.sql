show databases;
use customer;
show tables;
describe table customers;
drop table Students;
select * from customers;
use sample;

#creating of table
create table Students(
	studentid int  auto_increment primary key,
    firstname varchar(50),
    lastname varchar(50),
    age int,
    grade varchar(10),
    registrationdate date 
    );
    
    CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Instructor VARCHAR(100),
    Credits INT
);
  
 drop table courses; 
#inserting of data
INSERT INTO Students (firstname, lastname, age, grade, registrationdate)
VALUES 
    ('John', 'Doe', 20, 'A', '2024-01-10'),
    ('Jane', 'Smith', 22, 'B', '2024-01-12'),
    ('Jim', 'Brown', 19, 'A', '2024-01-15'),
    ('Jake', 'White', 21, 'C', '2024-01-18'),
    ('Rahul','Goraksha',null,'D','2024-06-05');


select * from Students;
select * from Courses;

INSERT INTO Courses (CourseName, Instructor, Credits)
VALUES
    ('Mathematics', 'Dr. Smith', 4),
    ('Biology', 'Dr. Jones', 3),
    ('History', 'Dr. Adams', 5);


#basic select Querry
select * from Students;
select firstname, age from Students;
select * from Courses where Credits > 3;
select * from Students where grade = 'A';

#filtering data with where clause
select * from students where age >= 18;
select * from courses where Instructor = 'Dr. Smith';
Select * from students where registrationdate > '2024-01-15';
select * from students where firstname like 'J%';


#update data
update students set grade = 'B+' where studentid = 1;
update courses set credits = 9.5 where courseid = 1;
update students set age = 20 where age = 19;


#Delete data
delete from students where studentid = 3;
delete from courses where credits < 4;
delete  from students where year(registrationdate) < 2024;

select * from students;


#aggregate function
select count(*) as totalstudents from students;
select avg(age) as average_age from  students;
select min(credits) as mincredit, max(credits) as maxcredit from courses;
SELECT Grade, COUNT(*) AS NumberOfStudents FROM Students GROUP BY Grade;


#grouping data with group by
SELECT Grade, COUNT(*) AS StudentCount FROM Students GROUP BY Grade;
select * from courses;
SELECT Instructor, SUM(Credits) AS TotalCredits FROM Courses GROUP BY Instructor;
SELECT Grade, AVG(Age) AS AverageAge FROM Students GROUP BY Grade;


#ordering
select * from students order by age desc;
select * from students order by grade, lastname;


#joining table
-- Create Student1 Table
CREATE TABLE Student1 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);

-- Create Courses1 Table
CREATE TABLE Courses1 (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100)
);

-- Create Enrollments1 Table (Foreign Keys pointing to correct tables)
CREATE TABLE Enrollments1 (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student1(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses1(CourseID)
);

-- Insert Data into Student1
INSERT INTO Student1 (FirstName, LastName, Age)
VALUES 
    ('John', 'Doe', 20),
    ('Jane', 'Smith', 22),
    ('Jim', 'Brown', 19);

-- Insert Data into Courses1
INSERT INTO Courses1 (CourseName, Instructor)
VALUES 
    ('Mathematics', 'Dr. Smith'),
    ('Biology', 'Dr. Jones'),
    ('History', 'Dr. Adams');

-- Insert Data into Enrollments1
INSERT INTO Enrollments1 (StudentID, CourseID, EnrollmentDate)
VALUES
    (1, 1, '2024-01-10'),  -- John Doe enrolled in Mathematics
    (2, 2, '2024-01-12'),  -- Jane Smith enrolled in Biology
    (3, 3, '2024-01-15');  -- Jim Brown enrolled in History

-- Perform JOIN to see the results
SELECT Student1.FirstName, Student1.LastName, Courses1.CourseName, Enrollments1.EnrollmentDate
FROM Student1
JOIN Enrollments1 ON Student1.StudentID = Enrollments1.StudentID
JOIN Courses1 ON Enrollments1.CourseID = Courses1.CourseID;


create database sample;
use sample;

-- Create the Student1 Table
CREATE TABLE Student1 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);

-- Create the Courses1 Table
CREATE TABLE Courses1 (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100)
);

-- Create the Enrollments1 Table with foreign keys referencing Student1 and Courses1
CREATE TABLE Enrollments1 (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student1(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses1(CourseID)
);

-- Insert Data into Student1
INSERT INTO Student1 (FirstName, LastName, Age)
VALUES 
    ('John', 'Doe', 20),
    ('Jane', 'Smith', 22),
    ('Jim', 'Brown', 19);

-- Insert Data into Courses1
INSERT INTO Courses1 (CourseName, Instructor)
VALUES 
    ('Mathematics', 'Dr. Smith'),
    ('Biology', 'Dr. Jones'),
    ('History', 'Dr. Adams');

-- Insert Data into Enrollments1
INSERT INTO Enrollments1 (StudentID, CourseID, EnrollmentDate)
VALUES
    (1, 1, '2024-01-10'),  -- John Doe enrolled in Mathematics
    (2, 2, '2024-01-12'),  -- Jane Smith enrolled in Biology
    (3, 3, '2024-01-15');  -- Jim Brown enrolled in History

-- Perform a JOIN to get a list of students, their enrolled courses, and enrollment dates
SELECT 
    Student1.FirstName, 
    Student1.LastName, 
    Courses1.CourseName, 
    Enrollments1.EnrollmentDate
FROM 
    Student1
JOIN 
    Enrollments1 ON Student1.StudentID = Enrollments1.StudentID
JOIN 
    Courses1 ON Enrollments1.CourseID = Courses1.CourseID;
    
    
    
    
    
    
    
    
    
    
show databases;
use sample;
show tables;
drop table courses1;
drop table enrollments1;
drop table student1;
drop table customers;
drop table products;
drop table orders;


#join the table:
create table customers(
	customerid int primary key auto_increment,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(100)
    );
    
create table products(
	productid int primary key auto_increment,
    productname varchar(50),
    price decimal(10,2)
    );
    
create table orders(
	orderid int primary key auto_increment,
    customerid int,
    productid int,
    orderdate date,
    foreign key (customerid) references customers(customerid),
    foreign key (productid) references products(productid));

INSERT INTO Customers (FirstName, LastName, Email)
VALUES 
    ('Alice', 'Johnson', 'alice@example.com'),
    ('Bob', 'Williams', 'bob@example.com'),
    ('Charlie', 'Brown', 'charlie@example.com');
    
INSERT INTO Products (ProductName, Price)
VALUES 
    ('Laptop', 1200.00),
    ('Headphones', 150.00),
    ('Smartphone', 800.00);
    
INSERT INTO Orders (CustomerID, ProductID, OrderDate)
VALUES 
    (1, 1, '2024-10-10'),  -- Alice bought Laptop
    (2, 2, '2024-10-12'),  -- Bob bought Headphones
    (3, 3, '2024-10-14');  -- Charlie bought Smartphone
    
    
select * from customers;
select * from products;
select * from orders;

select customers.firstname, customers.lastname, products.productname, orders.orderdate 
from 
customers 
join
orders on orders.customerid = customers.customerid
join
products on products.productid = customers.customerid; 