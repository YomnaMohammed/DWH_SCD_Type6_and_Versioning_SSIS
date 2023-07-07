CREATE TABLE Employees_versions(
	Emp_key int identity(1,1) primary key,
	ID int not null,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Insert_Date Date,
	Active_Flag bit,
	Version_No int 
);

CREATE TABLE Employees_Q3(
	ID int identity(1001,1) primary key,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Schedule_Date Date
);

insert into Employees_Q3(Name, City, Email, Schedule_Date) values('Ahmed','Giza','ahmed@mail.com','2023-05-18');
insert into Employees_Q3(Name, City, Email, Schedule_Date) values('Alaa','Giza','alaa@mail.com','2023-05-18');
insert into Employees_Q3(Name, City, Email, Schedule_Date) values('Samy','Cairo','samy@mail.com','2023-05-18');

select * from [dbo].[Employees_Q3]
select * from [dbo].[Employees_versions] 
