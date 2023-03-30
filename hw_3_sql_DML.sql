
/* 1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
2. Наполнить таблицу employee 70 строками.
*/


create table employees(
	id serial primary key,
	employee_name varchar (50) unique not null);

insert into employees(employee_name) values 
		('García'),
		('Rodríguez'),
		('Fernández'),
		('López'),
		('Martínez'),
		('Pérez'),
		('Gómez'),
		('Martin'),
		('Jiménez'),
		('Hernández'),
		('Diaz'),
		('Moreno'),
		('Muñoz'),
		('Álvarez'),
		('Romero'),
		('Alonso'),
		('Gutiérrez'),
		('Navarro'),
		('Torres'),
		('Domínguez'),
		('Vázquez'),
		('Ramos'),
		('Ortega'),
		('Gil'),
		('Ramírez'),
		('Serrano'),
		('Blanco'),
		('Molina'),
		('Morales'),
		('Suarez'),
		('Delgado'),
		('Castro'),
		('Ortiz'),
		('Rubio'),
		('Marín'),
		('Sanz'),
		('Núñez'),
		('Iglesias'),
		('Medina'),
		('Garrido'),
		('Cortes'),
		('Castillo'),
		('Santos'),
		('Lozano'),
		('Guerrero'),
		('Cano'),
		('Prieto'),
		('Méndez'),
		('Cruz'),
		('Calvo'),
		('Gallego'),
		('Vidal'),
		('León'),
		('Márquez'),
		('Herrera'),
		('Peña'),
		('Flores'),
		('Cabrera'),
		('Campos'),
		('Vega'),
		('Fuentes'),
		('Carrasco'),
		('Diez'),
		('Caballero'),
		('Reyes'),
		('Nieto'),
		('Aguilar'),
		('Pascual'),
		('Ferrer'),
		('Santiago');
	
select * from  employees;
	
	
	
	
	
	
	
/*3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
4. Наполнить таблицу salary 16 строками
*/

create table salary(
	id serial primary key,
	monthly_salary int not null);

insert into salary(monthly_salary) values 
	(1000),
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
	
	




	

/*5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/


create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);
	
insert into employee_salary(employee_id,salary_id) values 
	(71,8),
	(72,7),
	(73,6),
	(74,5),
	(75,4),
	(76,3),
	(77,2),
	(78,1),
	(79,16),
	(80,15),
	(1,14),
	(2,13),
	(3,12),
	(4,11),
	(5,10),
	(6,9),
	(7,8),
	(8,7),
	(9,6),
	(10,5),
	(11,4),
	(12,3),
	(13,2),
	(14,1),
	(15,16),
	(16,15),
	(17,14),
	(18,13),
	(19,12),
	(20,11),
	(21,10),
	(22,9),
	(23,8),
	(24,7),
	(25,6),
	(26,5),
	(27,4),
	(28,3),
	(29,2),
	(30,1);


select * from employee_salary;










/*7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
8. Поменять тип столба role_name с int на varchar(30)
9. Наполнить таблицу roles 20 строками:
*/


create table roles(
	id serial primary key,
	role_name int not null unique);

alter table roles alter column role_name type varchar(30);

insert into roles(role_name) values 
	('Junior Python developer'),
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
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

select * from roles;
		


/*10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11. Наполнить таблицу roles_employee 40 строками:
*/

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id) references employees(id),
	foreign key(role_id) references roles(id));

insert into roles_employee(employee_id, role_id) values
	(1,11),
	(2,1),
	(3,2),
	(4,3),
	(5,4),
	(6,5),
	(7,6),
	(8,7),
	(9,8),
	(10,9),
	(21,10),
	(22,9),
	(23,8),
	(24,7),
	(25,6),
	(26,5),
	(27,4),
	(28,3),
	(29,2),
	(30,1),
	(41,1),
	(42,2),
	(43,3),
	(44,4),
	(45,5),
	(46,6),
	(47,7),
	(48,8),
	(49,9),
	(50,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,15),
	(66,16),
	(67,17),
	(68,18),
	(69,19),
	(70,20);

select * from roles_employee; 




--12. Удалить все таблицы

drop table employee_salary;
drop table roles_employee;
drop table employees;
drop table salary;
drop table roles;

		
		

 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
 


select 
  employee_name, 
  monthly_salary 
from 
employees join employee_salary on employees.id = employee_salary.employee_id 
  		  join salary on employee_salary.salary_id = salary.id;
	 

-- 2. Вывести всех работников у которых ЗП меньше 2000.
 
 select 
  employee_name, 
  monthly_salary 
from 
employees join employee_salary on employees.id = employee_salary.employee_id 
  		  join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;
 
 
 
 
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 
 
select * from 
employee_salary join salary on employee_salary.salary_id = salary.id
	where employee_name is null;
 
 
 
 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 --5. Найти всех работников кому не начислена ЗП.
 -- 6. Вывести всех работников с названиями их должности.
 --7. Вывести имена и должность только Java разработчиков.
 --8. Вывести имена и должность только Python разработчиков.
 --9. Вывести имена и должность всех QA инженеров.
 --10. Вывести имена и должность ручных QA инженеров.
 --11. Вывести имена и должность автоматизаторов QA
 --12. Вывести имена и зарплаты Junior специалистов
 --13. Вывести имена и зарплаты Middle специалистов
 --14. Вывести имена и зарплаты Senior специалистов
 --15. Вывести зарплаты Java разработчиков
 --16. Вывести зарплаты Python разработчиков
 --17. Вывести имена и зарплаты Junior Python разработчиков
 --18. Вывести имена и зарплаты Middle JS разработчиков
 --19. Вывести имена и зарплаты Senior Java разработчиков
 --20. Вывести зарплаты Junior QA инженеров
 --21. Вывести среднюю зарплату всех Junior специалистов
 --22. Вывести сумму зарплат JS разработчиков
 --23. Вывести минимальную ЗП QA инженеров
 --24. Вывести максимальную ЗП QA инженеров
 --25. Вывести количество QA инженеров
 --26. Вывести количество Middle специалистов.
 --27. Вывести количество разработчиков
 --28. Вывести фонд (сумму) зарплаты разработчиков.
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000








