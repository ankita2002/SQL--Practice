/*Create & Delete Database*/
CREATE DATABASE menu ;
CREATE DATABASE numbers;
USE menu;
DROP database numbers;
DROP DATABASE menu;

/*Adding Tables & columns*/
CREATE DATABASE restaurant_types;
USE restaurant_types;
CREATE TABLE alltypes(name_col int)

/*New Topic so delete all databases as it has no reference*/
drop database menu;
drop database restaurant_types;

/*Modification of Tables*/
Create database clothes;
use clothes;
create table clothes_line (collection varchar(216)); 
alter table clothes_line add price int , add clothes_name varchar(216);
drop table clothes_line /*Delete a table*/

/*Adding other features & primary key*/
Create Database Restaurant;
use Restaurant;
create table rlist (
num int not null,    # not null -> *compulsary required
rname varchar(216) not null, 
address varchar(216) not null ,
income int not null, 
primary key(num) #Each one to have a unique value
);

/*Working with multiple tables & foreign keys*/
create table menu( 
num int not null, 
meal varchar(216) not null, 
mealtype varchar(216) not null, 
price int not null, 
primary key(num), 
rnum int not null, 
foreign key(rnum) references rlist(num)
);

/*First Visiual representation of database*/
create database travel;
use travel;
create table planes( 
num integer primary key, 
country_start char(25), 
country_arrival char(25)
);
insert into planes values (5, 'USA', 'India');
insert into planes values (15, 'Canada', 'Mexico');
insert into planes values (12, 'France', 'Japan');
insert into planes values (10, 'Russia', 'UK');
select * from planes;

/*Using the Select tool*/
select * from planes order by country_start; #alphabetical order
select * from planes order by country_arrival; #alphabetical order
select * from planes limit 2; #limited
select country_start as 'start' from planes;
select num from planes;  #one col

/*Visiualizing multiple tables*/
create table ftype(
num integer primary key, 
flight_type char(25), 
food char(25), 
plane_num integer, 
foreign key(plane_num) references planes(num)
);
insert into ftype values ('1','Direct','Yes','5');
insert into ftype values ('2','Direct','No','12');
insert into ftype values ('3','1 Stop','Yes','15');
insert into ftype values ('4','2 Stop','Yes','2');
Select * from planes;  #run both select together
select * from ftype;  #Select * from planes;  #run both select together

/*Table modification & looking for data*/
select * from ftype where num<2;
select * from planes where country_start like '%ca%';
select * from planes where country_start like '%an%';
select * from ftype;
update ftype set food = 'No' where num=3;
select * from ftype where food like '%y%' and flight_type like '%D%' ;
select * from planes where country_start like '%ca%' or country_arrival like '%J%' ;
delete from ftype where num=4;

/*Connecting the tables*/
select * from planes;
select * from planes left join ftype on planes.num = ftype.plane_num ;
select * from planes right join ftype on planes.num = ftype.plane_num ;
select * from planes join ftype on planes.num = ftype.plane_num ;















