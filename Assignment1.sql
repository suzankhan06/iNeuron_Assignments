## Question 1
create table ats(
id int, 
technology varchar(50)
);
select * from ats;

insert into ats values(1, 'DS'),
(1, 'Tableou'),
(1, 'SQL'),
(1, 'R'),
(1, 'Power BI'),
(1, 'NLP'),
(1, 'School'),
(1, 'ineuron');

select * from ats;


select id from ats where technology in ('DS', 'R', 'NLP') = TRUE;

select id from ats group by id having count(id);

##using and

select id from ats where technology='DS' and id in (
select id from ats where technology ='R' and id in (
select id from ats where technology ='NLP'));

## Question 2
# Query to return ids of the product info that have 0 likes.

drop table product_info;

create table product_info (
product_id int,
product_name varchar(50)
);

insert into product_info values
(1001, 'Blog'),
(1002, 'Youtube'),
(1003, 'Education'),
(1004, 'Facebook'),
(1005, 'Twitter');

select * from product_info;

create table product_info_likes (
user_id int,
product_id int,
liked_date date
);

insert into product_info_likes values
(1, 1001, '2022-12-19'),
(2, 1003, '2023-12-23'),
(3, 1005, '2022-12-26');

select * from product_info_likes;

select p.product_id from product_info p
left join product_info_likes pl on p.product_id = pl.product_id
group by p.product_id
having COUNT(pl.product_id) = 0;



