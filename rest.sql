DROP DATABASE RestaurantFinder;
CREATE DATABASE RestaurantFinder;

\c RestaurantFinder;

create type adr AS(
    number1 varchar(20),
    landmark text,
    area_road text,
    city varchar(20)
);
    

drop table Restaurant;
create table Restaurant(
type_ varchar(20),
address adr,
category varchar(20),
res_name varchar(20),
opentime varchar(20),
closetime varchar(20),
primary key(res_name));

drop table Owner;
create table Owner(
name text primary key,
phone_number numeric(10,0),
res_name varchar(20),
foreign key(res_name) references Restaurant(res_name) on delete cascade);

drop table Contact;
create table Contact(
res_name varchar(20),
email text,
res_number numeric(11,0) primary key,
manager_number numeric(10,0),
foreign key(res_name) references Restaurant(res_name) on delete cascade);

drop table Starchef;
create table Starchef(
res_name varchar(20),
name varchar(20),
Speciality varchar(15),
ID numeric(7,0) primary key,
foreign key(res_name) references Restaurant(res_name) on delete cascade);

drop table Catering;
create table Catering(
res_name varchar(20),
sizeof numeric(5,1),
occasion varchar(20),
foreign key(res_name) references Restaurant(res_name) on delete cascade);

drop table Cuisines;
create table Cuisines(
type_ text ,
res_name varchar(20),
foreign key(res_name) references Restaurant(res_name) on delete cascade);

drop table CustomerFeedback;
create table CustomerFeedback(
name varchar(20),
number numeric(10,0),
res_name varchar(20),
ID numeric(7,0) primary key,
email varchar(15),
rating numeric(1,1),
foreign key(res_name) references Restaurant(res_name) on delete cascade);

drop table Delivery;
create table Delivery(
res_name varchar(20),
numberof numeric(10,0) primary key,
speed text,
distance numeric(4,2),
foreign key(res_name) references Restaurant(res_name) on delete cascade);
	
drop table Menu;
create table Menu(
res_name varchar(20),
dish varchar(20) primary key,
cost numeric(6,2),
foreign key(res_name) references Restaurant(res_name) on delete cascade);