##Ecommerce website, customers sees various pages and likes it.so some info is getting captured 
## query to return the ids of product wthat have zero like

create database ecommerce;
use ecommerce;

create table product_info(
prod_id int primary key,
p_name varchar(20)

);

insert into product_info values(501,'Blog'),(502,'Youtube'),(503,'Education');

select * from product_info;



create table prod_info_like(
user_id int,
prod_id int,
like_date date,
foreign key(prod_id) references product_info(prod_id)
);

insert into prod_info_like values(1,502,'2023-09-03'),(2,502,'2023-08-06'),(3,501,'2023-06-11');
select * from prod_info_like;





select product_info.prod_id from product_info
left join prod_info_like on product_info.prod_id = prod_info_like.prod_id
group by product_info.prod_id
having count(prod_info_like.prod_id) =0;




