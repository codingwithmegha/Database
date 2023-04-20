#create database assignment
#1.create new table under the database space

create table EMP1
(ID integer(2),
Name varchar(10),
Basic double(6,2),
Designation varchar(10),
Age integer(2));  
 
 # 2.change the datatype of field basic 
  ALTER table EMP1 set Basic integer;
 
 # 3.Change the field size of Name column of the EMP1 table from 10 to 15. 
alter table EMP1 modify Name varchar(15) not null;

# 4.create another table
create table EMP_trainee
(Emp_id integer(2),
Name varchar(10),
Basic double(6,2),
Designation varchar(10),
Age integer(2));  

# 5.insert data into EMP1
insert into EMP1 values
(1, 'Rohit', 6700, 'Manager', 24),
(2, 'Sunil', 6200, 'Engineer', 27),
(3, 'Payal', 6300, 'Engineer', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25);

# 6.Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table.
insert into EMP_trainee values
(1, 'Rohit', 6700, 'trainee', 24),
(2, 'Sunil', 6200, 'trainee', 27),
(3, 'Payal', 6300, 'trainee', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26),
(6, 'Bimal', 7000, 'Trainee', 25);

# 7.Structure of the table
Select* from EMP1;
select* from EMP_trainee;

# 8. Add new columns 
alter table EMP1 ADD Skills varchar(10) after age;
alter table EMP1 ADD DOJ date; 

alter table EMP_trainee modify Designation varchar(20);
# 9. Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.
update EMP_trainee  set designation='Programmer_Trainee';

# 10.Update more than one row in one query in EMP1 table.
update EMP1 set age=25 where id=1 & 2;

# 11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5
alter table emp1 modify Id varchar(5);

# 12.Display both the tables EMP1 and EMP_trainee.
select * from emp1;
select * from emp_trainee;

# 13.Rename the column Age of EMP1 table to Age_in_Years.
alter table emp1 change column age Age_in_Years int;

# 14.Delete the details of all the trainees from the EMP1 table
delete from emp1 where designation='trainee';

# 15.Drop the Age column from the EMP_trainee table
alter table EMP_trainee drop column Age;

# 16.Drop two columns in one query from EMP_trainee table
alter table EMP_trainee drop column basic;
alter table EMP_trainee drop column designation;

#17.Rename the table EMP to EMP_Mgr_Engr.
alter table Emp1 rename to EMP_Mgr_Engr;

# 18.Drop the table EMP_Trainee
drop table emp_trainee;

# 19.Truncate EMP_Mgr_Engr table.
truncate EMP_Mgr_Engr;








