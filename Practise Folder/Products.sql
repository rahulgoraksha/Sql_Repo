show databases;
use parctise01;

create table products(
	product_id integer auto_increment primary key,
	product_name varchar (100),
	category varchar (50),
	price decimal  (10,2),
	stock_quantity integer 
);


desc products;

-- 2
insert into products values(201, 'Smartphone', 'Electronics', 599.99, 100);

-- 3
insert into products values
    (202, 'Power Drill', 'Hardware', 79.99, 50),
    (203, 'Designer Jeans', 'Apparel', 89.99, 75),
    (204, 'Bluetooth Speaker', 'Electronics', 39.99, 200);

-- 4
insert into products (product_id ,product_name ,category ,price)
values (205, 'Basic Accessory', 'Electronics', 4.99);

-- 5
insert into products values(206, 'Advanced Widget', 'Electronics', 49.99, 150);

-- 6
insert into products ( product_id , product_name ,category)
values(207, 'Mystery Gadget', 'Electronics');

-- 7
insert into products (product_id , product_name ,category,stock_quantity,price) values 
(209, 'Special Widget', 'Electronics',200,
	case
		when stock_quantity >= 175
		then 19.399
		else 24.99
    end
);

-- 8
insert into products (product_id, product_name, category)
values(211, 'Basic Module', 'Miscellaneous');

-- 9
insert into products values
(212, 'Random Gadget', 'Miscellaneous', round(rand()*100, 2), 20);

-- 10
insert into products (product_id, product_name)
values(301, 'Basic Widget');

-- 11
insert into products (product_name,price )
values('Compact Gadget', 29.99);

-- 12
insert into products (product_name,category )
values('Casual Shoes', 'Footwear');

-- 13
insert into products (category, stock_quantity)
values('Accessories', 50);

-- 14
insert into products (product_name,price,stock_quantity)
values('Cool Sunglasses', 19.99, 100);

-- 15
insert into products (category,price)
values('Electronics', 499.99);

-- 16
insert into products (product_name,category,price)
values('Stylish Hat', 'Apparel', 9.99);

-- 17
insert into products (stock_quantity)
values(25);

-- 18
insert into products (product_name,stock_quantity)
values('Fancy Pen', 150);

-- 19
insert into products (price)
values(5.99);

select * from products;
