-- 1. Создать таблицу employees

create table employees (	
	id serial primary key,
	employee_name varchar (50) not null
);

--2. Наполнить таблицу employee 70 строками

insert into employees(employee_name) 
values          ('Dawn Jones'),
		('Gordon Mills'),
		('Maria Washington'),
		('David Cox'),
		('Karen Jenkins'),
		('Sharon Hayes'),
		('Gail Allison'),
		('Edward Rice'),
		('Frances Scott'),
		('Beatrice Lewis'),
		('Marilyn Huff'),
		('Thomas Johnson'),
		('Ryan May'),
		('Jean Jones'),
		('Joann Ford'),
		('Michael Ward'),
		('Kyle Harmon'),
		('Wanda Newton'),		
		('Robert Rodriguez'),
		('Lauren Guerrero'),
		('Paula King'),
		('Ricardo Gross'),
		('Heather Mitchell'),
		('Amy Burton'),
		('Joyce Adams'),
		('James Obrien'),
		('Wendy McKinney'),
		('Gina Kelley'),
		('Ana Hale'),
		('Betty Howard'),
		('George Singleton'),
		('Danny McDonald'),
		('Denise Larson'),
		('Shawn Garcia'),
		('Charles Buchanan'),
		('Dan Saunders'),
		('Stacey Alexander'),
		('Andrew Miller'),
		('Victoria Johnson'),
		('Charles Ryan'),
		('Robert Hunt'),
		('Annie Simmons'),
		('Laura Graham'),
		('Jennifer Jones'),
		('Jean Carpenter'),
		('Leslie Torres'),
		('Diane French'),
		('Gary Montgomery'),
		('Floyd Watson'),
		('Jacqueline Cook'),
		('Robert Murphy'),
		('Ronald Scott'),
		('Lauren Garcia'),
		('Frederick Carter'),
		('Joseph Black'),
		('Craig Smith'),
		('Caroline Allen'),
		('Thomas Adams'),
		('Carlos Vargas'),
		('Sarah Norton'),
		('George Schneider'),
		('Laura Green'),
		('Lance Riley'),
		('Robert Wolfe'),
		('Scott Cooper'),
		('Angela Burns'),
		('Betty Smith')
	        ('Arnold Brown'),
		('Betty Steele'),
		('Jorge Carpenter');

select * from employees;
	
--3. Создать таблицу salary
	
create table salary (
	id serial primary key,
	monthly_salary int not null
);

--4. Наполнить таблицу salary 16-ю строками

insert into salary(monthly_salary) 
values	        (1000),
	        (1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
select * from salary;	

--5. Создать таблицу employee_salary

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id) 
values          (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 1),
		(18, 2),
		(19, 3),
		(20, 4),
		(21, 5),
		(22, 6),
		(23, 7),
		(24, 8),
		(25, 9),
		(26, 10),
		(27, 11),
		(28, 12),
		(29, 13),
		(30, 14),
		(71, 15),
		(72, 16),
		(73, 1),
		(74, 2),
		(75, 3),
		(76, 4),
		(77, 5),
		(78, 6),
		(79, 7),
		(80, 8);
	
select * from employee_salary;	

--7. Создать таблицу roles: id. Serial  primary key, role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);

--8. Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar(30);

--9. Наполнить таблицу roles 20-ю строками

insert into roles(role_name) 
values          ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager')
                ('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
select * from roles;

--10. Создать таблицу roles_employee
--         - id. Serial  primary key,
--         - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--         - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values          (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 1),
		(18, 2),
		(19, 3),
		(20, 4),
		(21, 5),
		(22, 6),
		(23, 7),
		(24, 8),
		(25, 9),
		(26, 10),
		(27, 11),
		(28, 12),
		(29, 13),
		(30, 14),
		(31, 15),
		(32, 16),
		(33, 1),
		(34, 2),
		(35, 3),
		(36, 4),
		(37, 5),
		(38, 6),
		(39, 7),
		(40, 8);

select * from roles_employee;



