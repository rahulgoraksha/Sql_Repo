-- 1
create table employees(
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    age int
);

desc employees;

-- 2
insert into employees values
(101, 'Alice Johnson', 'HR', 50000.00,35),
(102, 'Bob Smith', 'IT', 60000.00,45),
(103, 'Charlie Williams', 'Finance', 55000.00,56),
(104, 'David Brown', 'Marketing', 52000.00,36),
(105, 'Eve Davis', 'IT', 62000.00,38),
(106, 'Frank Jones', 'HR', 48000.00,40),
(107, 'Grace Taylor', 'Finance', 53000.00,45),
(108, 'Henry Clark', 'Marketing', 57000.00,59),
(109, 'Ivy Thomas', 'IT', 58000.00,52),
(110, 'Jack Wilson', 'HR', 51000.00,51),
(111, 'Kate Anderson', 'IT', 54000.00,41),
(112, 'Leo Martin', 'Finance', 49000.00,30),
(113, 'Mia Miller', 'Marketing', 60000.00,20),
(114, 'Noah Garcia', 'IT', 56000.00,48),
(115, 'Olivia Lopez', 'Finance', 55000.00,26),
(116, 'Paul Harris', 'Marketing', 53000.00,32),
(117, 'Quinn Lewis', 'IT', 61000.00,35),
(118, 'Ryan Jackson', 'Finance', 52000.00,39),
(119, 'Sophia White', 'Marketing', 58000.00,40),
(120, 'Thomas Allen', 'IT', 59000.00,45);

-- 3 Delete an employee with emp_id 103:
delete from employees 
where emp_id = 103;

-- 4 Delete employees in the 'HR' department:
delete from employees
where department = 'HR';

-- 5 Delete employees with a salary less than $55000:
delete from employees
where salary < 55000;

-- 6 Delete employees with 'Smith' in their emp_name:
delete from employees
where emp_name like '%Smith%';

-- 7 Delete an employee with emp_id 110 and salary less than $52000:
delete from employees
where emp_id = 110 and salary < 52000;

-- 8 Delete employees in the 'Marketing' department with a salary greater than $56000:
delete from employees
where department = 'Marketing' and salary > 56000;

-- 9 Delete employees with 'o' in their emp_name:
delete from employees
where emp_name like '%o%';

-- 10 Delete employees with a salary of $60000 or higher:
delete from employees
where salary >= 60000;

-- 11 Delete an employee with emp_id 120 and in the 'IT' department
delete from employees
where emp_id = 120 and department = 'IT';

-- 12 Delete all employees:
delete from employees;

-- 13 Delete employees in the 'IT' department with a salary less than $60000:
delete from employees
where department = 'IT' and salary < 60000;

-- 14 Delete employees in the 'Finance' department who are not named 'Olivia Lopez'
delete from employees
where department = 'Finance' and emp_name != 'Olivia Lopez';

-- 15 Delete employees with a salary greater than $55000 and not in the 'Marketing' department
delete from employees
where department != 'Marketing' and salary > 55000;

-- 16 Delete employees with 'e' in their first name and a salary greater than $55000:
delete from employees
where emp_name = 'e%' and salary > 55000;

-- 17 Delete employees in the 'Marketing' department with a salary between $50000 and $60000:
delete from employees
where department = 'Marketing' and 50000< salary < 60000;

-- 18 Delete employees with 'a' in their last name and not in the 'HR' department:
delete from employees
where emp_name = '%a%' and department != 'HR';

-- 19 Delete employees with a salary less than $53000 and not in the 'Finance' department:
delete from employees
where salary < 53000 and department != 'Finance';

-- 20 Delete employees with an even emp_id and a salary greater than $55000:
delete from employees
where emp_id % 2 = 0  and salary > 55000;

-- 21 Delete employees in the 'HR' department with a salary less than $50000 and not named 'Alice Johnson':
delete from employees
where department = 'HR'  and salary < 50000 and not emp_name ='Alice Johnson';

-- 22 Delete employees aged 35 or above with a salary less than $58000:
delete from employees
where age >= 35  and salary < 58000;

-- 23 Delete employees in the 'Finance' department or with a salary less than $52000:
delete from employees
where department = 'Finance' or salary < 52000;

-- 24 Delete employees aged 30 or above who are not in the 'IT' department:
delete from employees
where age >= 30 and department = 'IT';

-- 25 Delete employees with a salary less than $53000 or with 'e' in their last name:
delete from employees
where emp_name = '%e%' and salary < 53000;

-- 26 Delete employees in the 'HR' department or with a salary greater than $55000:
delete from employees
where department = 'HR' or salary > 55000;

-- 27 Delete employees aged 25 or younger or with a salary over $60000:
delete from  employees
where age <= 25 or salary > 60000;

-- 28 Delete employees with a salary less than $50000 or in the 'Marketing' department
delete from employees
where salary < 50000 or department = 'Marketing';

-- 29 Delete employees with an emp_id ending in 2 or 4, or with a salary less than $54000:
delete from employees
where emp_id = 2 or emp_id = 4 or salary < 54000;

-- 30 Delete employees aged 40 or above or with 'a' in their first name:
delete from employees
where age >= 40 or emp_name = '%a%';

-- 31 Delete employees with a salary less than $56000 or not in the 'IT' department:
delete from employees
where salary > 56000 or department != 'IT';

-- 32 Delete employees with a salary over $60000 or not named 'Olivia Lopez'
delete from employees
where salary > 60000 or emp_name != 'Olivia Lopez';

-- 33 Delete employees aged 30 or above and not in the 'IT' department, or with a salary less than $50000:
delete from employees
where age >= 30 or department = 'IT' or salary < 50000;

-- 34 Delete employees in the 'HR' department and with a salary less than $48000, or aged 40 or above:
delete from employees
where (department = 'HR' and salary < 48000) or age >= 40;

-- 35 Delete employees with a salary over $60000 and in the 'Finance' department, or aged 45 or above:
delete from employees
where salary > 60000 and department = 'Finance' or age >= 45;

-- 36 Delete employees aged 25 or younger and in the 'IT' department, or with a salary over $58000:
delete from employees
where age <= 25 and department = 'IT' or salary > 58000;

-- 37 Delete employees with a salary less than $55000 and not in the 'Marketing' department, or named 'Alice Johnson':
delete from employees
where salary < 55000 and department != 'Marketing' or emp_name = 'Alice Johnson';

-- 38 Delete employees in the 'Marketing' department and with a salary less than $54000, or named 'Kate Anderson':
delete from employees
where department = 'Marketing' and (salary < 54000 or emp_name = 'Kate Anderson');

-- 39 Delete employees with a salary over $62000 and not in the 'Finance' department, or with 'o' in their last name:
delete from employees
where salary > 62000 and (department = 'Fiannce' or emp_name = '%o%');

-- 40 Delete employees aged 30 or above and with a salary less than $52000, or not in the 'IT' department:
delete from employees
where age >= 30 and ( salary < 52000 or department != 'IT');

-- 41 Delete employees in the 'IT' department and with a salary less than $60000, or named 'Leo Martin':
delete from employees
where department = 'IT' and ( salary < 60000 or emp_name = 'Leo Martin');

-- 42 Delete employees with a salary over $58000 and in the 'HR' department, or not aged 35 or above:
delete from employees
where (salary  > 58000 and  department = 'HR' ) or (age < 35);

select * from employees;
