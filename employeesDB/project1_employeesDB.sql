create table Employees (
	Employee_id bigserial ,
	first_name varchar(30),
	last_name varchar(30),
	Date_of_birth varchar(20),
	id_number varchar(20),
	Age varchar(3),
	nationality varchar(100)
);

create table Department (
	Department_id bigserial,
    Department_name varchar(50),
    CONSTRAINT Department_key PRIMARY KEY(Department_id)
);

    create table Salaries (
    Salaries_id bigserial,
    salary numeric,
    CONSTRAINT Salaries_key PRIMARY KEY(Salaries_id)
);


    create table Title (
    Title_id bigserial,
    Title varchar(30),
    CONSTRAINT Title_key PRIMARY KEY(Title_id)
);

    create table Salary_increase (
    Salary_increase_id bigserial,
	increase numeric,
    CONSTRAINT Salary_key PRIMARY KEY(Salary_increase_id)
);

    create table Overtime_Hours(
    Overtime_Hours_id bigserial,
    Overtime_Hours integer,
    CONSTRAINT  Overtime_Houers PRIMARY KEY(Overtime_Hours_id)
);


insert into Employees(first_name,last_name,Date_of_birth,id_number,Age,nationality,department,overtime_hours,salaries,salary_increase,title)
values
('piet','visagie','2001/06/12','200106125022053','20','South African',1,1,1,1,1),
('sarel','johnson','1995/09/13','199509135031523','26','South African',2,2,2,2,2),
('jack','louwer','1994/07/13','199407130253014','27','South African',3,3,3,3,3),
('juwls','pieterse','1999/02/28','199902285014532','22','South African',4,4,4,4,4),
('piere','pienaars','2001/05/13','200105135022053','20','South African',5,5,5,5,5),
('louwrens','joe','2004/05/13','200405135022053','17','South African',6,6,6,6,6),
('gert','pj','2002/05/13','200205135022053','19','South African',7,7,7,7,7),
('jp','hop','2003/05/13','200305135022053','18','South African',8,8,8,8,8);

insert into Department (Department_name)
values
('Department'),
('Human_Resourses'),
('Accounting'),
('Logistics'),
('Finances'),
('Marketing'),
('Opperations'),
('Research_and_technology');

insert into Title(Title)
values
('Manager'),
('Junior'),
('Manager'),
('junior'),
('intern'),
('senior'),
('junior'),
('intern');


insert into Salaries (salary)
values
('85000'),
('86042'),
('43200'),
('47855'),
('78500'),
('85000'),
('25000'),
('12500');


insert into Salary_increase(increase)
values
('1000'),
('5000'),
('2000'),
('500'),
('6000'),
('3000'),
('1500'),
('1250');



insert into Overtime_Hours (Overtime_Hours)
values
('16'),
('25'),
('03'),
('12'),
('16'),
('16'),
('09'),
('05');

alter table Employees
add column department integer references Department(Department_id);

alter table Employees
add column overtime_Hours integer references Overtime_Hours(Overtime_Hours_id);

alter table Employees
add column Salaries integer references Salaries (Salaries_id);

alter table Employees
add column Salary_increase integer references Salary_increase(Salary_increase_id);

alter table Employees
add column Title integer references Title(Title_id);

ALTER TABLE Employees DROP COLUMN Department_id;
ALTER TABLE Employees DROP COLUMN Overtime_Hours_id;
ALTER TABLE Employees DROP COLUMN Title_id;

select Employees.first_name, Employees.last_name, Department.Department_name, Title.Title, Salaries.salary, Overtime_hours.Overtime_Hours 
from Employees left join Department
on Employees.Department = Department.Department_id
left join Title
on Employees.title = Title.Title_id
left join Salaries
on Employees.salaries = Salaries.salaries_id
left join Overtime_hours
on Employees.overtime_Hours = Overtime_hours.Overtime_Hours_id;