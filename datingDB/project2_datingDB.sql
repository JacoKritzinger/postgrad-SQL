create table My_contacts (
	contact_id bigserial,
	last_name varchar(25),
	first_name varchar(25),
	phone integer,
	email varchar(30),
	gender char(1),
	birthday varchar(25),
	CONSTRAINT contact_key PRIMARY KEY(contact_id)
); 

create table Profession (
	prof_id bigserial,
	profession varchar(25),
	CONSTRAINT Profession_key PRIMARY KEY(prof_id)
);

create table Zip_code (
	zip_code bigserial,
	city varchar(25),
	states varchar(25),
	CONSTRAINT Zip_code_key PRIMARY KEY(zip_code)
);

create table Status (
	status_id bigserial,
	status varchar(25),
	CONSTRAINT Status_key PRIMARY KEY(status_id)
);

create table Interests (
	interest_id bigserial,
	interest varchar(25),
	CONSTRAINT Interests_key PRIMARY KEY(interest_id)
);

create table Seeking (
	seeking_id bigserial,
	seeking varchar(25),
	CONSTRAINT Seeking_key PRIMARY KEY(seeking_id)
);

CREATE TABLE Contact_interest(
	contact_id integer REFERENCES my_contacts (contact_id),
	interest_id integer REFERENCES interests (interest_id)
);

CREATE TABLE Contact_seeking(
	contact_id integer REFERENCES my_contacts (contact_id),
	seeking_id integer REFERENCES seeking (seeking_id)
);



insert into My_contacts(first_name, last_name, phone, email, gender, birthday, profession, zip_code, status )
values
	('piet','visagie','0826578943','pietvisagie@gmail.com','M','12 Mar',1,1,1),
	('sarel','johnson','0734562853','sareljohnson@gmail.com','M','16 Feb',2,2,2),
	('jacky','louwer','0785896352','jackylouwer@gmail.com','F','2 Jan',3,3,3),
	('juwls','pieterse','0125896874','juwlspieterse@gmail.com','F','28 Dec',4,4,4),
	('piere','pienaars','0135669874','pierpienaars@gmail.com','M','19 Jun',5,5,5),
	('louwrens','joe','0832569874','louwrensjoe@gmail.com','M','11 Oct',6,6,6),
	('gert','pj','0832145698','gertpj@gmail.com','M','8 Aug',7,7,7),
	('jp','hop','0835647891','jphop@gmail.com','M','25 Sep',8,8,8);
	
insert into profession(profession)
values
('Barber'),
('Accountant'),
('Programmer'),
('Driver'),
('Studying'),
('Project_manager'),
('Consaltant'),
('Lawyer');

insert into zip_code(city, states)
values
('Pretoria','Gauteng'),
('Johannesburg','Gauteng'),
('Centurion','Gauteng'),
('Stilbaai','Western Cape'),
('Hartenbos','Western Cape'),
('Wosselbaai','Western Cape'),
('Amanzimtoti','KwaZulu-Natal'),
('Durban','KwaZulu-Natal');

insert into Status(status)
values
('divorced'),
('single'),
('single'),
('divorced'),
('divorced'),
('single'),
('single'),
('single');

insert into interests(interest)
values
('fishing'),
('motocrss'),
('gaming'),
('partying'),
('swimming'),
('dancing'),
('singing'),
('surfing');
					  
insert into seeking(seeking)
values
('F'),
('F'),
('M'),
('M'),
('F'),
('F'),
('M'),
('F');

insert into contact_interest
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

insert into contact_seeking
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

alter table my_contacts
add column profession integer references profession(prof_id);

alter table my_contacts
add column zip_code integer references zip_code(zip_code);

alter table my_contacts
add column status integer references status (status_id);


alter table Contact_seeking
add column contact_id integer references My_contacts(contacts_id);

alter table Contact_seeking
add column intrest_id integer references Intrest(intrest_id);

alter table Contact_interest
add column contact_id integer references My_contacts(contacts_id);

alter table Contact_interest
add column seeking_id integer references seeking(seeking_id);


SELECT first_name, last_name, phone, email, gender, birthday, profession.profession, zip_code.city, zip_code.states, status.status, interests.interest, seeking.seeking
FROM my_contacts 
LEFT JOIN profession 
ON my_contacts.profession = profession.prof_id
LEFT JOIN zip_code 
ON my_contacts.zip_code = zip_code.zip_code
LEFT JOIN status
ON  my_contacts.status = status.status_id
LEFT JOIN contact_seeking 
ON my_contacts.contact_id = contact_seeking.contact_id
LEFT JOIN seeking
ON contact_seeking.seeking_id = contact_seeking.seeking_id
LEFT JOIN contact_interest 
ON my_contacts.contact_id = contact_interest.contact_id
LEFT JOIN interests
ON contact_interest.interest_id = interests.interest_id



