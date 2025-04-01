CREATE TABLE publishers (
  idd SERIAL PRIMARY KEY,
  company_name TEXT
);
drop table books;
CREATE TABLE books
(
idd SERIAL PRIMARY KEY,
book_name varchar(128) NOT NULL,
author_name varchar(128) NOT NULL,
publish_date DATE NOT NULL,
publisher_id integer NOT NULL,
CONSTRAINT fk_publisher FOREIGN KEY(publisher_id) REFERENCES publishers(idd)
);

select * from books;

insert into publishers values (DEFAULT, 'chaihana'), 
(DEFAULT, 'made in china'), (DEFAULT, 'pushkin dom');
insert into books values (DEFAULT, 'Пожуй говна', 'Смирнов', '2019-05-02', 1), 
(DEFAULT, 'Пожуй говна', 'Смирнов', '2020-02-03', 2),
(DEFAULT, 'Капитанская дочка', 'Пушкин', '1930-12-07', 1),
(DEFAULT, 'Станционный смотритель', 'Пушкин', '1910-05-02', 1),
(DEFAULT, 'Станционный смотритель', 'Пушкин', '1910-09-12', 2);