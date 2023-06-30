create table employees(
id serial primary key,
employee_name varchar(50) not null);

drop table employee_salary 

insert into employees (employee_name) values ('Karol');
insert into employees (employee_name) values ('Lorelle');
insert into employees (employee_name) values ('Findley');
insert into employees (employee_name) values ('Vito');
insert into employees (employee_name) values ('Silvan');
insert into employees (employee_name) values ('Ashley');
insert into employees (employee_name) values ('Lorenzo');
insert into employees (employee_name) values ('Hew');
insert into employees (employee_name) values ('Verene');
insert into employees (employee_name) values ('Rhiamon');
insert into employees (employee_name) values ('Bren');
insert into employees (employee_name) values ('Walther');
insert into employees (employee_name) values ('Luciana');
insert into employees (employee_name) values ('Deeyn');
insert into employees (employee_name) values ('Talbot');
insert into employees (employee_name) values ('Madison');
insert into employees (employee_name) values ('Ky');
insert into employees (employee_name) values ('Burr');
insert into employees (employee_name) values ('Cullan');
insert into employees (employee_name) values ('Vernon');
insert into employees (employee_name) values ('Concettina');
insert into employees (employee_name) values ('Niki');
insert into employees (employee_name) values ('Freda');
insert into employees (employee_name) values ('Stevie');
insert into employees (employee_name) values ('Charmain');
insert into employees (employee_name) values ('Gibbie');
insert into employees (employee_name) values ('Torey');
insert into employees (employee_name) values ('Clerc');
insert into employees (employee_name) values ('Carley');
insert into employees (employee_name) values ('Jameson');
insert into employees (employee_name) values ('Willie');
insert into employees (employee_name) values ('Jinny');
insert into employees (employee_name) values ('Jameson');
insert into employees (employee_name) values ('Serena');
insert into employees (employee_name) values ('Sibella');
insert into employees (employee_name) values ('Prissie');
insert into employees (employee_name) values ('Esther');
insert into employees (employee_name) values ('Feliks');
insert into employees (employee_name) values ('Matthaeus');
insert into employees (employee_name) values ('Moses');
insert into employees (employee_name) values ('Theodora');
insert into employees (employee_name) values ('Elle');
insert into employees (employee_name) values ('Ericka');
insert into employees (employee_name) values ('Felice');
insert into employees (employee_name) values ('Jeromy');
insert into employees (employee_name) values ('Hedvige');
insert into employees (employee_name) values ('Daren');
insert into employees (employee_name) values ('Bernita');
insert into employees (employee_name) values ('Lesli');
insert into employees (employee_name) values ('Nester');
insert into employees (employee_name) values ('Jacqueline');
insert into employees (employee_name) values ('Noemi');
insert into employees (employee_name) values ('Oswell');
insert into employees (employee_name) values ('Jess');
insert into employees (employee_name) values ('Boyd');
insert into employees (employee_name) values ('Lula');
insert into employees (employee_name) values ('Carmella');
insert into employees (employee_name) values ('Granville');
insert into employees (employee_name) values ('Anallise');
insert into employees (employee_name) values ('Fields');
insert into employees (employee_name) values ('Ingram');
insert into employees (employee_name) values ('Fayette');
insert into employees (employee_name) values ('Peterus');
insert into employees (employee_name) values ('Jamal');
insert into employees (employee_name) values ('Donelle');
insert into employees (employee_name) values ('Audie');
insert into employees (employee_name) values ('Vlad');
insert into employees (employee_name) values ('Archie');
insert into employees (employee_name) values ('Stillman');
insert into employees (employee_name) values ('Justin');
	  



create table salary(
id serial primary key,
monthly_salary int not null
);

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

drop table employee_salary

create table employee_salary (
id serial primary key,
employee_id int not null,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values(1,1),
	  (2,2),
	  (3,3),
	  (4,4),
	  (5,5),
	  (6,15),
	  (7,14),
	  (8,13),
	  (93,12),
	  (9,11),
	  (71,10),
	  (89,6),
	  (10,7),
	  (11,8),
	  (12,9),
	  (13,5),
	  (14,4),
	  (79,3),
	  (15,2),
	  (16,1),
	  (100,15),
	  (17,14),
	  (81,13),
	  (18,12),
	  (19,11),
	  (20,10),
	  (21,6),
	  (76,7),
	  (22,8),
	  (23,9),
	  (24,15),
	  (25,14),
	  (98,13),
	  (26,12),
	  (27,11),
	  (28,10),
	  (29,6),
	  (90,7),
	  (30,8),
	  (77,15);
	  
	 create table roles(
	 id serial primary key,
	 role_name int not null
	 );
	 
	alter table roles
	alter column role_name
	type varchar(30)
	
	insert into roles(role_name)
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
	
create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key(employee_id) references employees(id),
foreign key(role_id)references roles(id)
);

insert into roles_employee(employee_id, role_id)
values(1,1),
	  (2,2),
	  (3,3),
	  (4,4),
	  (5,5),
	  (6,6),
	  (7,7),
	  (8,8),
	  (9,9),
	  (10,10),
	  (11,20),
	  (12,19),
	  (13,18),
	  (14,17),
	  (15,16),
	  (16,15),
	  (17,14),
	  (18,13),
	  (19,12),
	  (20,11),
	  (21,9),
	  (22,8),
	  (23,7),
	  (24,6),
	  (25,5),
	  (26,4),
	  (27,3),
	  (28,2),
	  (29,1),
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
	  (40,20);
	 
	 create table e_r_s(
	 id serial primary key,
	 employee_id int not null,
	 role_id int not null,
	 salary_id int,
	 foreign key (employee_id)references employees(id),
	 foreign key(role_id)references roles(id)
	);
 
	 insert into e_r_s(employee_id, role_id, salary_id)
	 values(1,1,1),
	 	   (2,2,2),
	 	   (3,3,3),
	 	   (4,4,4),
	 	   (5,5,5),
	 	   (6,6,15),
	 	   (7,7,14),
	 	   (8,8,13),
	 	   (9,9,11),
	 	   (10,10,7),
	 	   (11,20,8),
	 	   (12,19,9),
	 	   (13,18,5),
	 	   (14,17,4),
	 	   (15,16,2),
	 	   (16,15,1),
	 	   (17,14,14),
	       (18,13,12),
	       (19,12,11),
	       (20,11,10),
	       (21,9,6),
	       (22,8,7),
	       (23,7,8),
	       (24,6,9),
	       (25,5,15),
	       (26,4,14),
	       (27,3,13),
	       (28,2,12),
	       (29,1,11),
	       (30,10,10),
	       (31,11,null),
	       (32,12,null),
	       (33,13,null),
	       (34,14,null),
	       (35,15,null),
	       (36,16,null),
	       (37,17,null),
	       (38,18,null),
	       (39,19,null),
	       (40,20,null);
	    