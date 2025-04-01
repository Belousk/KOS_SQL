select avg(order_required - order_date) as avg_days
from orders;

select * 
from customer_company
where company_name like 'Ма%';

select *
from customer_company;


select contact_name, 'no orders' as order_made
from customers;

drop view customer_and_companies;
CREATE VIEW customer_and_companies AS select contact_name, order_id 
from customers
JOIN orders using(customer_id);

select 

select * from customer_and_companies;
select contact_name 
from customers
