DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

-- Creating the entities 
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
    address varchar (100),
    expertise varchar(50)
);
create table room(
	roomNum int primary key,
    capacity int,
    fee int
);

create table instruction(
	iCode int primary key,
    fee int,
    Descript varchar(100)
);

create table health_record(
	rID int primary key,
    descript varchar(100),
    health_status varchar(50),
    disease varchar(50),
    date varchar(10),
    pID int,
	foreign key (pID) references patient(pID)
);

create table invoice(
    
);

-- Creating the relations tables
create table monitor(
	duration int,
	physID int,
	pID int,
    primary key (physID, pID),
    foreign key (physID) references physician(physID),
	foreign key (pID) references patient(pID)
);

create table Orders(
	date varchar(20),
	iCode int,
    physID int,
	pID int,
    primary key (iCode, pID, physID),
    foreign key (physID) references physician(physID),
	foreign key (pID) references patient(pID),
    foreign key (iCode) references instruction(iCode)
);

create table Execution(
	iCode int,
    nID int,
    pID int,
    date varchar(20),
    hstatus varchar(50),
    primary key (iCode,nID,pID,date),
    foreign key (pID) references patient(pID),
    foreign key (iCode) references instruction(iCode),
    foreign key (nID) references nurse(nID)
);

create table medicate(
	medication varchar(20),
	nID int,
    pID int,
    primary key (medication,nID,pID),
	foreign key (nID) references nurse(nID),
    foreign key (pID) references patient(pID)
);

create table hospitalization(
	nights int,
    roomNum int,
    pID int,
    primary key (pID,roomNum),
    foreign key (pID) references patient(pID),
	foreign key (roomNum) references room(roomNum)
);
