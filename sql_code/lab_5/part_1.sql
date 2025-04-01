CREATE TABLE teacher (
	teacher_id serial,
	eacher_id serial,
	first_name varchar, 
	last_name varchar,
	birthday date,
	phone varchar, 
	title varchar
);

ALTER TABLE teacher
ADD COLUMN middle_name varchar;

ALTER TABLE teacher
DROP COLUMN middle_name;

ALTER TABLE teacher
RENAME birthday TO birth_date;

ALTER TABLE teacher
ALTER COLUMN phone SET DATA TYPE varchar(32);


DROP TABLE IF EXISTS exam;
CREATE TABLE exam (
	exam_id serial,
	exam_name varchar(256),
	exam_date date
);

INSERT INTO exam (exam_name, exam_date) 
VALUES('Дифференциальные уравнения', '2025-1-21'),
('Физика', '2025-1-25'),
('Алгоритмы и обработка данных', '2025-1-13');

SELECT * FROM exam;


TRUNCATE TABLE exam RESTART IDENTITY;

SELECT * FROM exam;

