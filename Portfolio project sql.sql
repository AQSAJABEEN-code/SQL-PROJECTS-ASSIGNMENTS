create database swiggy;
use swiggy;
-- Create users table
create table restaurants ( r_id int,
        r_name varchar(255),
        cuisine varchar(255));
create table users (user_id int,
 name varchar(255),
 email varchar(255),
 password varchar(255));
 
 INSERT INTO users (user_id, name, email, password) VALUES
(1, 'Nitish', 'nitish@gmail.com', 'p252h'),
(3, 'Vartika', 'vartika@gmail.com', '9hu7j'),
(4, 'Ankit', 'ankit@gmail.com', 'lkko3'),
(5, 'Neha', 'neha@gmail.com', '3i7qm'),
(6, 'Anupama', 'anupama@gmail.com', '46rdw2'),
(7, 'Rishabh', 'rishabh@gmail.com', '4sw123');

insert into restaurants values
(1,'dominos','Italian'),
(2,'kfc','American'),
(3,'box8','North Indian'),
(4,'Dosa Plaza','South Indian'),
(5,'China Town', 'Chinese');

create table food (f_id int,
       f_name varchar(255),
       type varchar(255));
       
insert into food values
(1, 'Non-veg Pizza','Non-veg'),
(2, 'Veg Pizza', 'Veg'),
(3, 'Choco Lava cake', 'Veg'),
(4, 'Chicken Wings', 'Non-veg'),
(5, 'Chicken Popcorn', 'Non-veg'),
(6, 'Rice Meal', 'Veg'),
(7, 'Roti meal', 'Veg'),
(8, 'Masala Dosa', 'Veg'),
(9, 'Rava Idli', 'Veg'),
(10,'Schezwan Noodles', 'Veg'),
(11,'Veg Manchurian','Veg');

create table menu (menu_id int,
       r_id int,
       f_id int,
       price int);
       
INSERT INTO menu (menu_id, r_id, f_id, price) VALUES
(1, 1, 1, 450),
(2, 1, 2, 400),
(3, 1, 3, 100),
(4, 2, 3, 115),
(5, 2, 4, 230),
(6, 2, 5, 300),
(7, 3, 3, 80),
(8, 3, 6, 160),
(9, 3, 7, 140),
(10, 4, 6, 230),
(11, 4, 8, 180),
(12, 4, 9, 120),
(13, 5, 6, 250),
(14, 5, 10, 220),
(15, 5, 11, 180);

create table orders (order_id int,
     user_id int,
     r_id int,
     amount int,
     date date, 
     partner_id int,
     delivery_time int,
     delivery_rating int,
     restaurant_rating int);
     
     INSERT INTO orders (order_id, user_id, r_id, amount, date, partner_id, delivery_time, delivery_rating, restaurant_rating) VALUES
(1001, 1, 1, 550, '2022-05-10', 1, 25, 5, 3),
(1002, 1, 2, 415, '2022-05-26', 1, 19, 5, 2),
(1003, 1, 3, 240, '2022-06-15', 5, 29, 4, NULL),
(1004, 1, 3, 240, '2022-06-29', 4, 42, 3, 5),
(1005, 1, 3, 220, '2022-07-10', 1, 58, 1, 4),
(1006, 2, 1, 950, '2022-06-10', 2, 16, 5, NULL),
(1007, 2, 2, 530, '2022-06-23', 3, 60, 1, 5),
(1008, 2, 3, 240, '2022-07-07', 5, 33, 4, 5),
(1009, 2, 4, 300, '2022-07-17', 4, 41, 1, NULL),
(1010, 2, 5, 650, '2022-07-31', 1, 67, 1, 4),
(1011, 3, 1, 450, '2022-05-10', 2, 25, 3, 1),
(1012, 3, 4, 180, '2022-05-20', 5, 33, 4, 1),
(1013, 3, 2, 230, '2022-05-30', 4, 45, 3, NULL),
(1014, 3, 2, 230, '2022-06-11', 2, 55, 1, 2),
(1015, 3, 2, 230, '2022-06-22', 3, 21, 5, NULL),
(1016, 4, 4, 300, '2022-05-15', 3, 31, 5, 5),
(1017, 4, 4, 300, '2022-05-30', 1, 50, 1, NULL),
(1018, 4, 4, 400, '2022-06-15', 2, 40, 3, 5),
(1019, 4, 5, 400, '2022-06-30', 1, 70, 2, 4),
(1020, 4, 5, 400, '2022-07-15', 3, 26, 5, 3),
(1021, 5, 1, 550, '2022-07-01', 5, 22, 2, NULL),
(1022, 5, 1, 550, '2022-07-08', 1, 34, 5, 1),
(1023, 5, 2, 645, '2022-07-15', 4, 38, 5, 1),
(1024, 5, 2, 645, '2022-07-21', 2, 58, 2, 1),
(1025, 5, 2, 645, '2022-07-28', 2, 44, 4, NULL);


CREATE TABLE delivery_partners (
  partner_id INT,
  partner_name VARCHAR(50)
);

INSERT INTO delivery_partners (partner_id, partner_name) VALUES
(1, 'Suresh'),
(2, 'Amit'),
(3, 'Lokesh'),
(4, 'Kartik'),
(5, 'Gyandeep');

CREATE TABLE order_details (
  id INT,
  order_id INT,
  f_id INT
);

INSERT INTO order_details (id, order_id, f_id) VALUES
(1, 1001, 1),
(2, 1001, 3),
(3, 1002, 4),
(4, 1002, 3),
(5, 1003, 6),
(6, 1003, 3),
(7, 1004, 6),
(8, 1004, 3),
(9, 1005, 7),
(10, 1005, 3),
(11, 1006, 1),
(12, 1006, 2),
(13, 1006, 3),
(14, 1007, 4),
(15, 1007, 3),
(16, 1008, 6),
(17, 1008, 3),
(18, 1009, 8),
(19, 1009, 9),
(20, 1010, 10),
(21, 1010, 11),
(22, 1010, 6),
(23, 1011, 1),
(24, 1012, 8),
(25, 1013, 4),
(26, 1014, 4),
(27, 1015, 4),
(28, 1016, 8),
(29, 1016, 9),
(30, 1017, 8),
(31, 1017, 9),
(32, 1018, 10),
(33, 1018, 11),
(34, 1019, 10),
(35, 1019, 11),
(36, 1020, 10),
(37, 1020, 11),
(38, 1021, 1),
(39, 1021, 3),
(40, 1022, 1),
(41, 1022, 3),
(42, 1023, 3),
(43, 1023, 4),
(44, 1023, 5),
(45, 1024, 3),
(46, 1024, 4),
(47, 1024, 5),
(48, 1025, 3),
(49, 1025, 4),
(50, 1025, 5);

set sql_safe_updates=0;
-- Primary key=> delivery_partners
alter table delivery_partners
add primary key(partner_id);

-- Primary key=> delivery_partners
alter table food
add primary key(f_id);

-- Primary key=> menu
alter table menu
add primary key(menu_id);

-- Primary key=> order_details
alter table order_details
add primary key(id);

-- Primary key=> orders
alter table orders
add primary key(order_id);

-- Primary key=> restaurants
alter table restaurants
add primary key(r_id);

-- Primary key=> users
alter table users
add primary key(user_id);

-- Foreign key=>menu=>r_id
alter table menu
add constraint fk_r_id
foreign key (r_id)
references restaurants(r_id);

-- Foreign key=>menu=>f_id
alter table menu
add constraint fk_f_id
foreign key (f_id)
references food(f_id);

-- Foreign key=>order_details=>order_id
alter table order_details
add constraint fk_order_id
foreign key (order_id)
references orders(order_id);

-- Foreign key=>order_details=>f_id
alter table order_details
add constraint fk_f_id2
foreign key (f_id)
references food(f_id);


-- Foreign key=>orders=>user_id
alter table orders
add constraint fk_user_id2
foreign key (user_id)
references users(user_id);

-- Foreign key=>orders=>r_id
alter table orders
add constraint fk_r_id2
foreign key (r_id)
references restaurants(r_id);

-- Foreign key=>orders=>partner_id
alter table orders
add constraint fk_partner_id
foreign key (partner_id)
references delivery_partners(partner_id);


-- Find customers who have never ordered

select u.user_id, u.name
from users u
left join orders o
on u.user_id=o.user_id
where o.order_id is null;

-- Average Price/dish
select fd.f_name, round(avg(m.price),2) as Average_price
from food fd
inner join menu m
on fd.f_id-m.f_id
group by fd.f_name;

-- Find the top restaurant in terms of the number of orders for a given month
select * from orders;
select rt.r_name,count(o.order_id)
from orders o
inner join restaurants rt
on o.r_id=rt.r_id
where month(o.date)=06
group by rt.r_name
order by rt.r_name desc
limit 1;


-- Restaurants with monthly sales greater than x for
-- let x=500
with resturant_monthly_sale as
(
select rt.r_name, sum(o.amount) as Total_sale, 
date_format(o.date,"%Y-%m") as Months
from  orders o
inner join restaurants rt
on o.r_id=rt.r_id
group by rt.r_name,Months
)
select * 
from resturant_monthly_sale
where Total_sale>500;

-- Show all orders with order details for a particular customer in a particular date range

-- let customer name ='Vartika' and date range is between "2022-05-10" and '2022-05-22'
with specific_order_detail as
(
select od.*,u.name as Customer_name,o.date as Order_date
from orders o
inner join order_details od
on o.order_id=od.order_id
join users u
on u.user_id=o.user_id
)
select * 
from specific_order_detail
where Customer_name="Vartika"
and (Order_date>"2022-05-10" and Order_date<'2022-05-22');

select * from users;

-- Find restaurants with max repeated customers

select rt.r_name, count(distinct(o.user_id)) as Repeated_customers
from orders o
join restaurants rt
on rt.r_id=o.r_id
group by rt.r_name
order by Repeated_customers desc
limit 1;


-- Customer — favourite food
select fd.f_name,count(od.order_id) as total_orders
from food fd
inner join order_details od
on fd.f_id=od.f_id
group by fd.f_name
order by total_orders desc
limit 1;

-- 
-- Month over month revenue growth of Swiggy

with total_revenue as
(
select date_format(date,"%Y-%m") as months,
sum(amount) as Total_revenue
from orders
group by months
),
 revenue_growth as(
select * ,
lag(Total_revenue) over (ORDER BY Months) AS previous_month_revenue
from total_revenue
)
select *,
case 
when previous_month_revenue is NULL then null
Else (Total_revenue-previous_month_revenue/previous_month_revenue*100)
end as MOM_revenue
from revenue_growth
order by Months;
-- Find the most loyal customers for all restaurant
select u.user_id,u.name as Customer_Name,rt.r_id,rt.r_name as resturant_name,
count(o.order_id) as Total_orders
from users u
inner join orders o
on o.user_id=u.user_id
join restaurants rt
on rt.r_id=o.r_id
group by u.user_id,Customer_Name,rt.r_id,resturant_name
order by Total_orders desc;


-- Month-over-month revenue growth of a restaurant
with total_revenue as
(
select r_id, date_format(date,"%Y-%m") as months,
sum(amount) as Total_revenue
from orders
group by r_id,months
),
 revenue_growth as(
select * ,
lag(Total_revenue) over (PARTITION BY r_id ORDER BY Months) AS previous_month_revenue
from total_revenue
)
select *,
case 
when previous_month_revenue is NULL then null
Else (Total_revenue-previous_month_revenue/previous_month_revenue*100)
end as MOM_revenue
from revenue_growth
order by r_id,Months;