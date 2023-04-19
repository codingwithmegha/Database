#create table table name;
create table  javastudent2 (id int primary key,sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
sadd varchar(50),
squalifiation varchar(10) not null,
sdept varchar(20));
#insert multiple rows
insert into javastudent2 values
#insert the values
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL');
# add new column
alter table javastudent2 ADD age int after sname;
#modify database size
alter table javastudent2 MODIFY sphone int not null;
#drop column
alter table javastudent2 DROP COLUMN sdept;
# change column name
alter table javastudent2 CHANGE COLUMN age sage int;
# rename table name
alter table javastudent2 RENAME TO student1_details;
#insert single row
insert into student1_details values(7,'sana',22,987125171,'sana77@gmal.com','Ghaziabad','BCA');

# DML---INSERT,UPDATE,DELETE
update student1_details  set sage=20 where ID=1;
update student1_details  set sage=23 where ID=2;
update student1_details  set sage=25 where ID=3;
update student1_details  set sage=22 where ID=4;
update student1_details  set sage=21 where ID=5;
update student1_details  set sage=24 where ID=6;
 alter table student1_details add fees double after squalifiation;
update student1_details  set fees=1000.50 where ID=1;
update student1_details  set fees=1000.50 where ID=2;
update student1_details  set fees=1000.50 where ID=3;
update student1_details  set fees=1000.50 where ID=4;
update student1_details  set fees=1000.50 where ID=5;
update student1_details  set fees=1000.50 where ID=6;
update student1_details  set fees=1000.50 where ID=7;
update student1_details set squalifiation='BCA' where sname='ARNAB';
update student1_details set fees=2000.50;
update student1_details set sadd='mumbai' where sname='puja';
# delete any specific row
delete from student1_details where sname='sana'; 
#delete any specific column
alter table student1_details Drop column fees;
#select
select*from student1_details;
# where condition
select*from student1_details where id=1;
# and(both the condition should true)
select* from student1_details where sadd='kolkata' and squalifiation='BE';
# or(any one condition should true)
select * from student1_details where sadd='kolkata' or squalifiation='BE';
#not
select* from student1_details where squalifiation !='BE';
# in
select* from student1_details where sadd in('mumbai','goa');
#starts with
select* from student1_details where sname like 'A%';
#ends with
select* from student1_details where sname like '%T';
# in between
select*from student1_details where sname like '%I%';
# start & ends with
select*from student1_details where sname like 'A%T';
#missing letter
select* from student1_details where sadd like 'g_a';
select* from student1_details where sadd like 'A_n_b';

#query with select
select id,sname,sphone,sadd from student1_details;
select* from student1_details where id=5;
select*from student1_details where sname='BIDISHA';

#distinct
select distinct sname from student1_details;
#alter 
alter table student1_details add com_pct int after fees;
update student1_details set com_pct = 20 where id=1;
update student1_details set com_pct = 15 where id=2;
update student1_details set com_pct = 10 where id=3;
update student1_details set com_pct = 15 where id=4;
update student1_details set com_pct = 25 where id=5;
update student1_details set com_pct = 35 where id=6;
update student1_details set com_pct = 10 where id=7;
#as
select sname,sadd,fees,fees + 300 as 'increased_fees' from student1_details;
select sname,sadd,fees,fees + com_pct + 100 as 'annual_com_fees' from student1_details;
select com_pct from student1_details;
update student1_details set fees= 3000.50 where id=2;
update student1_details set fees= 3300.50 where id=3;
update student1_details set fees= 5200.50 where id=5;
update student1_details set fees= 2500.50 where id=7;
update student1_details set fees= 4500.50 where id=1;
#greater than
select id,fees from student1_details where fees > 4000;

# between
select sname,fees from student1_details where fees between 2000 and 3000;
select * from student1_details where fees=4500.5 or fees=2500.5 or fees=3300.50;
select * from student1_details where id=1 or id=5 or id=3;

#not equal
select * from student1_details where fees != 2000.5;
select * from student1_details where sname= 'arnab';
update student1_details set id=8 where fees> 3300.5 and sadd ='chennai';
#delete rows
truncate student1_details;
# delete whole table
drop table student1_details;
