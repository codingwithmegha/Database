#create database assignment
#create new table under the database space
create table customer(
Cust_id varchar(5),
Fname varchar(15),
Lname varchar(15),
Area char(2),
Phone bigint(10),
DOB Date,
Payment double(6,2)
);
# insert the data in the table
insert into customer values
 ('A01', 'Ivan', 'Ross', 'SA',6125467,'1986-01-15','800.50'),
 ('A02', 'Vandana', 'Ray', 'MU',5560379,'1987-12-20','1000.50'),
 ('A03', 'Pramada', 'Jauguste', 'DA',4560389,'1967-07-25','500.50'),
 ('A04', 'Basu', 'Navindi', 'BA',6125401,'1956-03-30','860.50'),
 ('A05', 'Ravi', 'Sheidhar', 'NA', null,'1989-02-15','500.50'),
 ('A06', 'Rukmini', 'Aiyer', 'gh', 5125274,'1987-08-09','1500.50');
 
 # structure of table 
 desc customer;
 
#display the data of created table
select* from customer;

#insert row which aspect system date
insert into customer values('A07','Megha','Tomar','SA',2565335,'2002-09-12','1540');

#display the data in the table
select*from customer;

# update the phone number of coustomer A02 and A04
update customer set Phone_Number='2767262' where Cust_id='A02';
update customer set Phone_Number='74624563' where Cust_id='A04';

# update the date of birth of coustomer A03 and A05
update customer SET DOB = '1993-02-28' where Cust_id='A03';
update customer SET DOB = '1998-07-21' where Cust_id='A05';

#display the update table
select*from customer;

#delete all row from table
delete from CUSTOMER  where Cust_id = 'A01' ;
delete from CUSTOMER  where Cust_id = 'A05' ;

# delete all the rows of the table
truncate table customer;

# insert 5 record 
INSERT INTO CUSTOMER 
VALUES ('A07', 'amit', 'singh', 'SA', '672566235', '1992-03-23', '500.00'),
 ('A08', 'Sham', 'yadav', 'AL', '2623625', '1995-12-08', '2000.00'),
 ('A09', 'moni', 'singh', 'FL', '7876343', '1992-09-22', '600.00'),
 ('A10', 'riya', 'sharma', 'AM', '6554534','1992-05-11', '800.00'),
 ('A11', 'rahul', 'yadav','CA', '556443333','1997-01-12','900.00');
 
 #update 
 update customer set Lname='roy' where Cust_id='A02';
 
 #delete single row
delete from customer  where Cust_id ='A01';
