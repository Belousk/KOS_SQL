DROP TABLE IF EXISTS exam;


CREATE TABLE exam (
	exam_id serial PRIMARY KEY,
	exam_name varchar,
	exam_date date
);

ALTER TABLE exam
DROP CONSTRAINT exam_pkey;

ALTER TABLE exam
ADD PRIMARY KEY (exam_id);

CREATE TABLE person(
	person_id integer,
	person_name varchar(50),
	person_surname varchar(50),

	CONSTRAINT pk_person_person_id PRIMARY KEY(person_id)
);

CREATE TABLE passport(
	passport_id integer,
	serial_number integer NOT NULL,
	registration varchar(256),
	person_id integer,

	CONSTRAINT pk_passport_passport_id PRIMARY KEY(passport_id),
	CONSTRAINT fk_passport_person FOREIGN KEY (person_id) REFERENCES person(person_id)
);


drop table if exists book;
CREATE TABLE book(
	book_id integer,
	nm int
);

ALTER TABLE book
ADD COLUMN weight integer CONSTRAINT chk_book_weight CHECK (weight > 0 AND weight < 100);

INSERT INTO book
VALUES (1, 2, 300);

INSERT INTO book
VALUES (1, 2, 90);

SELECT * FROM book;


CREATE TABLE student(
	student_id serial,
	full_name varchar(64),
	grade integer DEFAULT 1
);


INSERT INTO student
VALUES (1, 'Белоус К.В');

SELECT * FROM student;

ALTER TABLE student
ALTER COLUMN grade DROP DEFAULT;

INSERT INTO student
VALUES (1, 'Кутузов Д.С');

SELECT * FROM student;

SELECT MAX(product_id) FROM products;
CREATE SEQUENCE IF NOT EXISTS products_product_id_seq
START WITH 79 OWNED BY products.product_id;
ALTER TABLE products ALTER COLUMN product_id SET DEFAULT nextval('products_product_id_seq');