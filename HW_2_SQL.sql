--1. Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

--2. Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Richard Phillips'),
	   ('Judith Brown'),
	   ('Mark Murphy'),
	   ('Roberto Watson'),
	   ('Heather Castro'),
	   ('Bertha Wilkins'),
	   ('Arthur Fleming'),
	   ('Travis Young'),
	   ('Michael Ngan'),
	   ('Alan Jensen'),
	   ('Toni Murphy'),
	   ('Aaron Rivera'),
	   ('Nelson Carr'),
	   ('Brenda Chambers'),
	   ('Jeffrey Watson'),
	   ('Joanne Marks'),
	   ('Gregory Richardson'),
	   ('James Underwood'),
	   ('Roy Scott'),
	   ('Andrea Clarke'),
	   ('Joe Holmes'),
	   ('Wayne Moore'),
	   ('Jean Wrong'),
	   ('John May'),
	   ('Anthony Fowler'),
	   ('Margaret Jackson'),
	   ('Nancy Beck'),
	   ('David Watson'),
	   ('Mark Anderson'),
	   ('Carrie Love'),
	   ('Janet Jones'),
	   ('Rita Thompson'),
	   ('Ernest Davis'),
	   ('Elizabeth Pearson'),
	   ('Albert Curtis'),
	   ('Rose Carr'),
	   ('Denise Myers'),
	   ('Mary Cruz'),
	   ('Clara Hernandez'),
	   ('Sandra Reyes'),
	   ('Juan Gomez'),
	   ('Bannet Brewer'),
	   ('Rich Bailey'),
	   ('Ronald Little'),
	   ('Derek Dean'),
	   ('Nina Hall'),
	   ('Allen Schneider'),
	   ('Tommy Peterson'),
	   ('Hans Harris'),
	   ('Terry Mitchell'),
	   ('Peter Johnson'),
	   ('Sherri Lopez'),
	   ('Jonathan Garcia'),
	   ('Charles Davis'),
	   ('Gloria Gregory'),
	   ('Wanda Mendez'),
	   ('Christopher Long'),
	   ('Ann Wallace'),
	   ('Barbara Wise'),
	   ('Samantha Silva'),
	   ('Ron Morris'),
	   ('Kevin Cortez'),
	   ('Rob Wright'),
	   ('Eric Dixon'),
	   ('Barry Nguyen'),
	   ('Deanna Garcia'),
	   ('Sharon Glover'),
	   ('Michael Porter'),
	   ('Stella Brown'),
	   ('Joseph Boyd');
	
--3. Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
	  
 create table salary (
	  id serial primary key,
	  monthly_salary int not null
	  );

select * from salary;
	
--4. Наполнить таблицу salary 15 строками.
insert into salary (id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
       (default, 1700),
 	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400);

--5. Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
	  
create table employee_salary(
id serial primary key,
employee_id int not null unique ,
salary_id int not null
);

select * from employee_salary;

--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (1, 40),
	   (77, 24),
	   (2, 35),
	   (3, 11),
	   (4, 5),
	   (96, 12),
	   (5, 39),
	   (6, 1),
	   (7, 28),
	   (54, 13),
	   (8, 31),
	   (9, 14),
	   (10, 32),
	   (11, 26),
	   (12, 2),
	   (46, 33),
	   (13, 3),
	   (14, 38),
	   (15, 4),
	   (99, 6),
	   (80, 7),
	   (16, 18),
	   (17, 8),
	   (18, 34),
	   (19, 9),
	   (20, 23),
	   (21, 10),
	   (22, 21),
	   (66, 37),
	   (42, 25),
	   (23, 15),
	   (24, 17),
	   (76, 22),
	   (25, 11),
	   (26, 16),
	   (27, 19),
	   (28, 20),
	   (59, 27),
	   (29, 30),
	   (85, 36);

--7. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique
);

select * from roles;

--8. Поменять тип столба role_name с int на varchar(30).

alter table roles
alter column role_name type varchar(30);

--9.Наполнить таблицу roles 20 строками.
insert into roles (role_name)
values ('Junior Python developer'),
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


--10. Создать таблицу roles_employee
--id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	  
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id  int not null,
foreign key (employee_id) references employees (id),
foreign key (role_id) references roles (id)
);

select * from roles_employee;


--11. Наполнить таблицу roles_employee 40 строками.

insert into roles_employee (id, employee_id, role_id)
values (default, 1, 20),
	   (default, 5, 18),
	   (default, 22, 10),
	   (default, 38, 6),
	   (default, 3, 9),
	   (default, 9, 15),
	   (default, 2, 11),
	   (default, 35, 3),
	   (default, 33, 17),
	   (default, 4, 5),
	   (default, 6, 15),
	   (default, 23, 12),
	   (default, 36, 14),
	   (default, 24, 3),
	   (default, 39, 13),
	   (default, 7, 2),
	   (default, 10, 11),
	   (default, 8, 16),
	   (default, 25, 3),
	   (default, 11, 1),
	   (default, 12, 4),
	   (default, 13, 7),
	   (default, 14, 2),
	   (default, 26, 8),
	   (default, 21, 18),
	   (default, 15, 9),
	   (default, 16, 18),
	   (default, 17, 19),
	   (default, 18, 20),
	   (default, 19, 5),
	   (default, 20, 8),
	   (default, 27, 1),
	   (default, 28, 16),
	   (default, 29, 10),
	   (default, 30, 7),
	   (default, 31, 19),
	   (default, 40, 6),
	   (default, 32, 17),
	   (default, 34, 5),
	   (default, 37, 12);
	
