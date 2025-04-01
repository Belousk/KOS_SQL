drop table if exists warehouses;
drop table if exists products;
drop table if exists shippers;
drop table if exists categories;

create table warehouses(
warehouse_id serial primary key,
warehouse_name varchar,
location varchar
);

create table categories(
category_id serial primary key,
category_name varchar,
description varchar
);

create table shippers(
shipper_id serial primary key,
company_name varchar,
phone varchar,
freight integer
);


create table products(
product_id serial primary key,
product_name varchar,
category_id integer,
quantity_per_unit integer,
unit_price integer,
CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

create table warehouse_product(
warehouse_id integer,
product_id integer,
stock_quantity varchar,
constraint fk_product foreign key (product_id) references products(product_id),
constraint fk_warehouse foreign key (warehouse_id) references warehouses(warehouse_id)
);


create table supplier_companies(
company_id serial primary key,
company_name varchar,
addres varchar, 
city varchar,
country varchar,
phone varchar
);

create table order_details(
order_id serial primary key,
product_id integer,
quantity integer,
constraint fk_product foreign key (product_id) references products(product_id)
);

create table customer_company(
company_id serial primary key,
company_name varchar,
address varchar, 
city varchar,
country varchar,
phone varchar
);

create table customers(
customer_id serial primary key,
contact_name varchar,
company_id integer,
constraint fk_company foreign key (company_id) references customer_company(company_id)
);


create table orders(
order_id integer,
customer_id integer, 
warehouse_id integer,
warehouse_product_id integer,
shipper_id integer,
order_date date,
order_required date,
constraint fk_customer foreign key (customer_id) references customers(customer_id),
constraint fk_warehouses foreign key (warehouse_id) references warehouses(warehouse_id),
constraint fk_shipper foreign key (shipper_id) references shippers(shipper_id)
);
