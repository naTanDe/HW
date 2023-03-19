--Таблица employees
--1)Создать таблицу employees
--      - id. serial,  primary key,
--      - employee_name. Varchar(50), not null
--2)Наполнить таблицу employee 70 строками.

CREATE TABLE employees (
	id serial PRIMARY key,
	employee_name varchar(50) unique NOT null
	);
	
select * from employees 

insert into employees (employee_name)
	values ('name_1'),
		('name_2'),
		('name_3'),
		('name_4'),
		('name_5'),
		('name_6'),
		('name_7'),
		('name_8'),
		('name_9'),
		('name_10'),
		('name_11'),
		('name_12'),
		('name_13'),
		('name_14'),
		('name_15'),
		('name_16'),
		('name_17'),
		('name_18'),
		('name_19'),
		('name_20'),
		('name_21'),
		('name_22'),
		('name_23'),
		('name_24'),
		('name_25'),
		('name_26'),
		('name_27'),
		('name_28'),
		('name_29'),
		('name_30'),
		('name_31'),
		('name_32'),
		('name_33'),
		('name_34'),
		('name_35'),
		('name_36'),
		('name_37'),
		('name_38'),
		('name_39'),
		('name_40'),
		('name_41'),
		('name_42'),
		('name_43'),
		('name_44'),
		('name_45'),
		('name_46'),
		('name_47'),
		('name_48'),
		('name_49'),
		('name_50'),
		('name_51'),
		('name_52'),
		('name_53'),
		('name_54'),
		('name_55'),
		('name_56'),
		('name_57'),
		('name_58'),
		('name_59'),
		('name_60'),
		('name_61'),
		('name_62'),
		('name_63'),
		('name_64'),
		('name_65'),
		('name_66'),
		('name_67'),
		('name_68'),
		('name_69'),
		('name_70');


--Таблица salary
--3)Создать таблицу salary
--		- id. Serial  primary key,
--		- monthly_salary. Int, not null
--4)Наполнить таблицу salary 15 строками:
--- 1000 - 2500

	
create table salary_hw (
id serial primary key,
monthly_salary int not null
);

select * from salary_hw

insert into salary_hw (monthly_salary)
	values (1000),
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
		   
--Таблица employee_salary
--5)Создать таблицу employee_salary
--		- id. Serial  primary key,
--		- employee_id. Int, not null, unique
--		- salary_id. Int, not null
--6)Наполнить таблицу employee_salary 40 строками:
--		- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
id serial primary key,
employee_id int unique not null,
salary_id int not null
);

select * from employee_salary

insert into employee_salary (employee_id, salary_id)
	values (1, 1),
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
		   (16, 1),
		   (17, 2),
		   (18, 3),
		   (19, 4),
		   (20, 5),
		   (21, 6),
		   (22, 7),
		   (23, 8),
		   (24, 9),
		   (25, 10),
		   (26, 11),
		   (27, 12),
		   (28, 13),
		   (29, 14),
		   (30, 15),
		   (71, 1),
		   (72, 2),
		   (73, 3),
		   (74, 4),
		   (75, 5),
		   (76, 6),
		   (77, 7),
		   (78, 8),
		   (79, 9),
		   (80, 10);

--Таблица roles
--7)Создать таблицу roles
--		- id. Serial  primary key,
--		- role_name. int, not null, unique
--8)Поменять тип столба role_name с int на varchar(30)
--9)Наполнить таблицу roles 20 строками:

create table roles_hw (
id serial primary key,
role_name int unique not null
);

select * from roles_hw

alter table roles_hw 
alter column role_name type varchar(30);

insert into roles_hw (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaSkript developer'),
	   ('Middle JavaSkript developer'),
	   ('Senior JavaSkript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	   

--Таблица roles_employee
--10)Создать таблицу roles_employee
--	- id. Serial  primary key,
--	- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--	- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11)Наполнить таблицу roles_employee 40 строками:

create table roles_employee_hw (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles_hw(id)
);

select * from roles_employee_hw

insert into roles_employee_hw (employee_id, role_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,4),
	   (25,5),
	   (26,6),
	   (27,7),
	   (28,8),
	   (29,9),
	   (30,10),
	   (31,11),
	   (32,12),
	   (33,13),
	   (34,14),
	   (35,15),
	   (36,16),
	   (37,17),
	   (38,18),
	   (39,19),
	   (40,20)





)