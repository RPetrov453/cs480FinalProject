DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

create table patient(
	pID int Primary key,
    phone int,
    name varchar (50),
    address varchar (100)
    
);
create table nurse(
	nID int PRIMARY KEY,
    nname varchar(50),
    phone int,
    cert int,
    address varchar (100)
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
	roomNum int primary key,
    capacity int,
    fee int
);

create table invoice(
    
);
create table instruction(
	iCode int primary key,
    fee int,
    Descript varchar(100)
);

create table health_record(
	rID int primary key,
    descript varchar(100),
    status varchar(50),
    

);

