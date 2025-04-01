drop table if exists passport cascade;
drop table if exists person;


CREATE TABLE passport
(
idd SERIAL PRIMARY KEY,
serial_number varchar(12) NOT NULL
);

CREATE TABLE person
(
idd SERIAL PRIMARY KEY,
fullname varchar(128) NOT NULL,
age integer NOT NULL,
sex varchar(1) NOT NULL,
passport_id integer NOT NULL UNIQUE,
constraint fk_passport foreign key(passport_id) references passport(idd)
);

select * from person;
insert into passport values (DEFAULT, '880055-5353'),
(DEFAULT, '556687-1337'),
(DEFAULT, '023455-5343');

insert into person values (DEFAULT, 'Кутузов Дмитрий Сергеевич', 18, 'м', 2),
(DEFAULT, 'Белоус Кирилл Владимирович', 18, 'м', 1),
(DEFAULT, 'Соня Мармеладова Панелева', 21, 'ж', 3);

