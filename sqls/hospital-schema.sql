DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

create table patient(
	pID int,
    
    
);
create table nurse(
	
    
);
create table physician(
	physID int PRIMARY KEY,
    pname varchar(50),
    phone int,
    cert int,
    expertise varchar(50),
    address varchar (100)
);
create table room(
	
    
);

create table invoice(
    
);
create table instruction(
	iCode int primary key,
    fee int,
    Descript varchar(100)
);

