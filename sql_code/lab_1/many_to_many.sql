drop table if exists author cascade;
drop table if exists books cascade;
drop table if exists author_book cascade;

CREATE TABLE author (
  idd integer PRIMARY KEY,
  full_name TEXT
);

CREATE TABLE books
(
idd integer PRIMARY KEY,
book_name varchar(128) NOT NULL,
publish_date DATE NOT NULL
);

CREATE TABLE author_book (
author_id integer NOT NULL,
book_id integer NOT NULL,
CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES books(idd),
CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(idd)
);

select * from books;
select * from author;
select * from author_book;

insert into author values (1,'Пушкин'),(2,'Смирняга'),(3,'Яганов');
insert into books values (1,'Станционный смотритель','1876-01-02'),
(2,'Как правильно шутить','2001-04-12'),
(3,'Почему использовать Винду это нормально?','2022-08-07'),
(4,'Колобок наносит ответный удар','2000-12-12');
insert into author_book values (1,1),(1,4),(2,2),(3,3);