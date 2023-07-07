CREATE TABLE Universities (
    ID int identity (1,1) primary key,
    country VARCHAR(255) NOT NULL,
	alpha_two_code VARCHAR(2) NOT NULL,
    state_province VARCHAR(255),
    name VARCHAR(255) NOT NULL
);

CREATE TABLE JSON_DATA(
	API varchar(1000),
	[Description] varchar(4000),
	Auth varchar(1000),
	HTTPS bit,
	Cors varchar(1000),
	Link varchar(1000),
	Category varchar(1000)
);

select * from JSON_DATA
SELECT * FROM Universities

truncate table JSON_DATA
truncate table Universities


