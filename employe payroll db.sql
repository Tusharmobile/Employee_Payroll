create Database Employee_payroll;            --- UC1 Creating database---
create table Employ_payroll (                ---  UC2 Creating table---
Id int NOT NULL IDENTITY(1,1),
Name varchar(100),
Salery decimal,
StartDate Date,
Primary KEY(Id)
);
select * from Employ_PayRoll;
INSERT INTO Employ_PayRoll (Name,Salery,StartDate) values ('Tushar',50000,'2021/11/07');        --- UC3 inserting value in table---
INSERT INTO Employ_PayRoll (Name,Salery,StartDate) values ('Ujjwal',60000,'2021/10/11');
INSERT INTO Employ_PayRoll (Name,Salery,StartDate) values ('Manisha',45000,'2021/01/12');
INSERT INTO Employ_PayRoll (Name,Salery,StartDate) values ('kalyani',32000,'2021/05/17');
select * from Employ_PayRoll;                --- UC4 Retriving deta---
select * from Employ_PayRoll where StartDate between CAST ('2021/01/01' AS DATE) AND CAST('2021/10/11' AS DATE);
select salery from Employ_payroll where Name= 'Tushar';       --- UC5 Retriving salery---
Alter table Employ_PayRoll add Gender varchar (30);         --- UC6 Gender add ---
update  Employ_PayRoll set Gender ='Male' where id=1;        --- Gender value added ---
update Employ_PayRoll set Gender ='FeMale' where Name = 'Manisha';  
update Employ_PayRoll set Gender ='Male' where Name = 'Ujjwal';  
update Employ_PayRoll set Gender ='FeMale' where Name = 'Kalyani'; 
 select sum (salery) from Employ_PayRoll;              --- UC7 Calculating ----
 select AVG (salery) from Employ_PayRoll;
 select Min (salery) from Employ_PayRoll;
 select Max (salery) from Employ_PayRoll
 select count (*) from Employ_PayRoll;
 Select count (*) from Employ_PayRoll where Gender = 'Male';       
 Select count (*) from Employ_PayRoll where Gender = 'Female';
select Sum(salery) as "TotalSalery",Gender from Employ_Payroll group by Gender;        ---- UC7 Calculating by gender ----
select Avg(salery) as "AverageSalery",Gender from Employ_Payroll group by Gender;
select Min(salery) as "MinimumSalery",Gender from Employ_Payroll group by Gender;
select Max(salery) as "MaximumSalery",Gender from Employ_Payroll group by Gender;
select count(salery) as "CountSalery",Gender from Employ_Payroll group by Gender;





