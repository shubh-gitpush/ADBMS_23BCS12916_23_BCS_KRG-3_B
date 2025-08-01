-- Write an SQL query using a self join to:

-- Select the employee's name, aliased as employee_name

-- Select the manager's name, aliased as manager_name

-- Select the employee's department, aliased as employee_department

-- Select the manager's department, aliased as manager_department

-- Include all employees, even if they do not have a manager

-- Use a LEFT OUTER JOIN between the employee table and itself, with the correct join condition.

create table employee(
e_id int primary key,
name varchar(10),
department varchar(20),
manager_id int,
foreign key (manager_id) references employee (e_id),
);

insert into employee(e_id, name, department, manager_id)
values
(1,'alice','HR', NULL ),
(2, 'BOB', 'finance', 1),
(3,'charlie','IT', 1),
(4, 'david', 'finance', 2),
(5, 'eve', 'IT', 3),
(6, 'Frank', 'HR', 1);

select  e1.name as [employee_ Name] ,e2.name as[manager_name] ,
e1.department as[employee_depart] , e2.department as[manager_departemnt]
from employee as e1
left outer join
employee e2
on
e1.e_id= e2.manager_id;