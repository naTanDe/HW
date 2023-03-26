--SQL HomeWork 2. Joins

--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте

select * from roles;

select * from roles_salary;

select * from salary;


 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select roles.role_title, salary.monthly_salary from roles_salary
inner join roles on roles.id = roles_salary.id_role
inner join salary on salary.id = roles_salary.id_salary;

 --2. Вывести всех работников у которых ЗП меньше 2000.

select roles.role_title from roles_salary
inner join roles on roles.id = roles_salary.id_role
inner join salary on salary.id  = roles_salary.id_salary
where salary.monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary from roles_salary
right join salary on roles_salary.id_salary = salary.id
where roles_salary.id_salary is null;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary from roles_salary
right join salary on roles_salary.id_salary = salary.id
where roles_salary.id_salary is null and salary.monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.

select roles.role_title from roles_salary
right join roles on roles.id = roles_salary.id_role
where roles_salary.id_role is null;

--6. Вывести всех работников с названиями их должности.

create table employees_hw3 (
	id serial primary key,
	name varchar(100) not null,
	id_role int,
	foreign key (id_role)
		references roles(id)
);

select * from employees_hw3;

--select * from employees_hw3, roles
-- where id_role = roles.id;

insert into employees_hw3 (name, id_role)
values ('name_1', 1),
	   ('name_2', 2),
	   ('name_3', 1),
	   ('name_4', 3),
	   ('name_5', 4),
	   ('name_6', 5),
	   ('name_7', 2),
	   ('name_8', 6),
	   ('name_9', 7),
	   ('name_10', null);
	  
-- Вывод работников из новой таблицы employees_hw3 где работникам присваивается роль из таблицы roles. Есть работники без должности.

select employees_hw3.name, roles.role_title from roles
full join employees_hw3 on employees_hw3.id_role = roles.id;

 --7. Вывести имена и должность только Java разработчиков.

select employees_hw3.name, roles.role_title from roles
join employees_hw3 on employees_hw3.id_role = roles.id
where role_title like 'Java%';

 --8. Вывести имена и должность только Python разработчиков.

insert into roles (role_title) values ('Python_Developer_Junior'), ('Python_Developer_Middle'), ('Python_Developer_Senior');

insert into employees_hw3 (name, id_role) values ('name_11', 8), ('name_12', 9), ('name_13', 10);

select employees_hw3.name, roles.role_title from roles
join employees_hw3 on employees_hw3.id_role = roles.id
where role_title like 'Pyt%';

 --9. Вывести имена и должность всех QA инженеров.

 --Разнообразим должности и сотрудников QA

insert into roles (role_title) values ('QA_Automation_Junior'), ('QA_Automation_Middle'), ('QA_Automation_Senior');

insert into employees_hw3 (name, id_role) values ('name_14', 11), ('name_15', 13);

select employees_hw3.name, roles.role_title from employees_hw3
join roles on roles.id = employees_hw3.id_role
where role_title like '%QA%'

 --10. Вывести имена и должность ручных QA инженеров.

select employees_hw3.name, roles.role_title from employees_hw3
join roles on roles.id = employees_hw3.id_role
where role_title like '%QA_Manual%';

 --11. Вывести имена и должность автоматизаторов QA
 
select employees_hw3.name, roles.role_title from employees_hw3
join roles on roles.id = employees_hw3.id_role
where role_title like '%QA_Autom%';
 
 --12. Вывести имена и зарплаты Junior специалистов

insert into roles_salary (id_role, id_salary) values (8, 6), (9, 7), (10, 8), (11, 5), (12, 6), (13, 7);

select employees_hw3.name, salary.monthly_salary from employees_hw3
join roles_salary on employees_hw3.id_role = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
join roles on employees_hw3.id_role = roles.id
where role_title like '%Junior%';

--Присутсвуют должности с двумя разными зарплатами, правим это в таблице roles_salary

update roles_salary set id_role = 6 where id = 7;

update roles_salary set id_role = 7 where id = 9;
 
 --13. Вывести имена и зарплаты Middle специалистов
 
select employees_hw3.name, salary.monthly_salary from employees_hw3
join roles_salary on employees_hw3.id_role = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
join roles on employees_hw3.id_role = roles.id
where role_title like '%Middle%';
 
 --14. Вывести имена и зарплаты Senior специалистов
 
select employees_hw3.name, salary.monthly_salary from employees_hw3
join roles_salary on employees_hw3.id_role = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
join roles on employees_hw3.id_role = roles.id
where role_title like '%Senior%';
 
 --15. Вывести зарплаты Java разработчиков

select roles.role_title, salary.monthly_salary from roles
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
where role_title like '%Java_Dev%';

  --16. Вывести зарплаты Python разработчиков
 
select roles.role_title, salary.monthly_salary from roles
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
where role_title like '%Python_Dev%' 

  --17. Вывести имена и зарплаты Junior Python разработчиков

select employees_hw3.name, salary.monthly_salary from employees_hw3
join roles_salary on employees_hw3.id_role = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id 
join roles on roles_salary.id_role = roles.id
where role_title like '%Pyt%Jun%';

  --18. Вывести имена и зарплаты Middle JS разработчиков

-- Добавим JS_Developer разных грейдов в roles

insert into roles (role_title) values ('JS_Developer_Junior'), ('JS_Developer_Middle'), ('JS_Developer_Senior');

-- Укажем этим должностям зарплаты в roles_salary

insert into roles_salary (id_role, id_salary) values (14, 6), (15, 8), (16, 10);

-- Назначим людей на эти должности
 
insert into employees_hw3 (name, id_role) values ('name_16', 14), ('name_17', 15), ('name_18', 16);

select employees_hw3.name, salary.monthly_salary from employees_hw3
join roles_salary on employees_hw3.id_role = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id 
join roles on roles_salary.id_role = roles.id
where role_title like '%JS%Mid%';
 
 --19. Вывести имена и зарплаты Senior Java разработчиков
 
select employees_hw3.name, salary.monthly_salary from employees_hw3
join roles_salary on employees_hw3.id_role = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id 
join roles on roles_salary.id_role = roles.id
where role_title like '%Ja%Sen%';

  --20. Вывести зарплаты Junior QA инженеров
 
 select salary.monthly_salary, roles.role_title from salary
 join roles_salary on salary.id = roles_salary.id_salary 
 join roles on roles_salary.id_role = roles.id
 where role_title like '%QA%Jun%';
 
  --21. Вывести среднюю зарплату всех Junior специалистов

select avg(salary.monthly_salary) from salary
join roles_salary on salary.id = roles_salary.id_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%Jun%';

  --22. Вывести сумму зарплат JS разработчиков
 
select sum(salary.monthly_salary) from salary
join roles_salary on salary.id = roles_salary.id_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%JS%';
  
  --23. Вывести минимальную ЗП QA инженеров
 
select min(salary.monthly_salary) from salary
join roles_salary on salary.id = roles_salary.id_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%QA%';
 
  --24. Вывести максимальную ЗП QA инженеров

select max(salary.monthly_salary) from salary
join roles_salary on salary.id = roles_salary.id_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%QA%';

  --25. Вывести количество QA инженеров

select count(roles.role_title) from roles_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%QA%'

  --26. Вывести количество Middle специалистов.

select count(roles.role_title) from roles_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%Mid%'

  --27. Вывести количество разработчиков

select count(roles.role_title) from roles_salary
join roles on roles_salary.id_role = roles.id
where role_title like '%Devel%'

  --28. Вывести фонд (сумму) зарплаты разработчиков.
 
select sum(salary.monthly_salary) from salary
join roles_salary on salary.id = roles_salary.id_salary
join roles on roles_salary.id_role = roles.id 
where role_title like '%Devel%';


  --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employees_hw3.name, roles.role_title, salary.monthly_salary from salary
join roles_salary on salary.id = roles_salary.id_salary
join employees_hw3 on roles_salary.id_role = employees_hw3.id_role
join roles on roles_salary.id_role = roles.id
order by monthly_salary asc;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employees_hw3.name, roles.role_title, salary.monthly_salary from salary
join roles_salary on salary.id = roles_salary.id_salary
join employees_hw3 on roles_salary.id_role = employees_hw3.id_role
join roles on roles_salary.id_role = roles.id
where salary.monthly_salary between 1700 and 2300
order by monthly_salary asc;

   --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees_hw3.name, roles.role_title, salary.monthly_salary from salary
join roles_salary on salary.id = roles_salary.id_salary
join employees_hw3 on roles_salary.id_role = employees_hw3.id_role
join roles on roles_salary.id_role = roles.id
where salary.monthly_salary < 2300
order by monthly_salary asc;
 
  --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employees_hw3.name, roles.role_title, salary.monthly_salary from salary
join roles_salary on salary.id = roles_salary.id_salary
join employees_hw3 on roles_salary.id_role = employees_hw3.id_role
join roles on roles_salary.id_role = roles.id
where salary.monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;
