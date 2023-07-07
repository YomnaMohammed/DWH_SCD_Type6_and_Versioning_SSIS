CREATE TABLE Employees_SCD(
	Emp_key int identity(1,1) primary key,
	ID int not null,
	Name varchar(50),
	Current_City varchar(50),
	Previous_City varchar(50),
	Current_Email varchar(50),
	Previous_Email varchar(50),
	Start_Date Datetime,
	End_Data Datetime,
	Active_Flag bit
);

CREATE TABLE Employees(
	ID int identity(1001,1) primary key,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Update_Date Datetime
);

insert into Employees(Name, City, Email, Update_Date) values('Ahmed','Giza','ahmed@mail.com',getDate()-35);
insert into Employees(Name, City, Email, Update_Date) values('Alaa','Giza','alaa@mail.com',getDate()-35);
insert into Employees(Name, City, Email, Update_Date) values('Samy','Cairo','samy@mail.com',getDate()-35);

update Employees set City = 'Cairo', Update_Date = getDate() where ID = 1001
update Employees set City = 'Alex', Email = 'alaa123@mail.com', Update_Date = getDate() where ID = 1002


select * from [dbo].[Employees]
select * from [dbo].[Employees_SCD] 

