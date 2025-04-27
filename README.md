# KOS_SQL

Это сборник лабораторных работ и курсового проекта по базам данных, выполненный на PostgreSQL.

## Содержимое

- `sql_code/lab_1/` — задачи на связи между таблицами (One-to-One, One-to-Many, Many-to-Many)
- `sql_code/lab_5/` — сложные запросы и индексы
- `sql_code/lab_7/` — функции и триггеры
- `sql_code/lab_8/` — администрирование базой и аудит
- `sql_code/Kursach/` — курсовая работа:
  - `creat_db.sql` — создание структуры базы
  - `creating_tables` — схемы таблиц
  - `fill_db.sql` — заполнение данными
  - `some_query.sql` — запросы к базе
  - `tree.png` — диаграмма структуры базы
- `sql_code/00-fill_in_northwind.sql` — заполнение базы Northwind

## Требования

- PostgreSQL 14+
- Любая среда для запуска SQL скриптов (например, DBeaver, pgAdmin4)

## 💻 Установка

1. Скачать проект:

```bash
https://github.com/Belousk/KOS_SQL.git
```
2. Создать базу данных в PostgreSQL
```bash
CREATE DATABASE kos_sql;
```
  Выполнить нужные SQL-скрипты из папок lab_* и Kursach/.
# Автор

Кирилл
Лабораторные и курсовой по PostgreSQL
