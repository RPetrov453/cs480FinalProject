-- HOSPITAL PATIENTS --
insert into patient (pID, phone, name, address)
values (124, 1234567890, 'John Jones', '12345 West Meadow Lane');

insert into patient (pID, phone, name, address)
values (635, 2345678901, 'Sabrina Osborne', '7638 Hamilton Circle');

insert into patient (pID, phone, name, address)
values (785, 3456789012, 'Vera Sparks', '629 Pineknoll Drive');

insert into patient (pID, phone, name, address)
values (789, 4567890123, 'Michael Crawford', '447 Arrowhead Court');

insert into patient (pID, phone, name, address)
values (456, 5678901234, 'Marion Atkins', '7638 Hamilton Circle');


-- HOSPITAL NURSES --
insert into nurse (nID, nname, phone, cert, address)
values (786,'Robert Petrov', 1325839451, 3152, '1204 North Kingston Ave');

insert into nurse (nID, nname, phone, cert, address)
values (486,'Clarence Newton', 5667564681, 6214, '401 West Maple Road');

insert into nurse (nID, nname, phone, cert, address)
values (453, 'Mercedes Hampton', 9843156481, 1354, '222 Hudson Ave');

insert into nurse (nID, nname, phone, cert, address)
values (687, 'Harrison Arias', 6451346842, 4562, '68 East Yukon Street');

insert into nurse (nID, nname, phone, cert, address)
values (157, 'Kenneth Rosario', 9456215798, 6542, '66 Glenwood Road');


-- HOSPITAL PHYSICIANS -- 
insert into physician (physID, pname, phone, cert, address, expertise)
values (712, 'Cody Autry', 4561567894, 9999, '5896 East SunnySide Grove', 'Surgeon');

insert into physician (physID, pname, phone, cert, address, expertise)
values (345, 'Alexander Fleming', 6483154687, 9998, '9874 South Laneston Street','Surgeon');

insert into physician (physID, pname, phone, cert, address, expertise)
values (978, 'Lyndon Murray', 9543214596, 9997, '9 Wild Horse Ave','General Practitioner');

insert into physician (physID, pname, phone, cert, address, expertise)
values (841, 'Mackenzie Reese', 7486543215, 9996, '7427 Glen Eagles Ave','Radiologist');

insert into physician (physID, pname, phone, cert, address, expertise)
values (642, 'Kain Small', 7851354687, 9995, '73 East Augusta Road','Neurosurgeon');


-- HOSPITAL ROOMS --
insert into room (roomNum, capacity, fee)
values (001, 1, 500);

insert into room (roomNum, capacity, fee)
values (002, 2, 400);

insert into room (roomNum, capacity, fee)
values (003, 1, 500);

insert into room (roomNum, capacity, fee)
values (004, 1, 500);

insert into room (roomNum, capacity, fee)
values (005, 3, 300);


-- HOSPITAL INSTRUCTIONS --
insert into instruction (iCode, fee, descript)
values (124, 100, 'Check up on Michael Crawford.');

insert into instruction (iCode, fee, descript)
values (612, 1000, 'Perform an X-Ray on Sarina Osborne.');

insert into instruction (iCode, fee, descript)
values (251, 50, 'Bring food to marion Atkins.');

insert into instruction (iCode, fee, descript)
values (723, 100, 'Prep Vera Sparks for surgery.');

insert into instruction (iCode, fee, descript)
values (161, 100, 'Update John Jones\' health record.');


-- HOSPITAL HEALTH RECORDS --
insert into health_record (rID, descript, health_status, disease, date, pID)
values (687, 'patient has pneumonia', 'fine i guess', 'pneumonia', '04-16-2023',635);

insert into health_record (rID, descript, health_status, disease, date, pID)
values (456, 'patient has covid-19', 'comatose', 'covid-19', '04-29-2023',124);

insert into health_record (rID, descript, health_status, disease, date, pID)
values (371, 'patient has lung cancer', 'in decline', 'Lung Cancer', '04-19-2023',785);

insert into health_record (rID, descript, health_status, disease, date, pID)
values (786, 'patient has a broken leg', 'stable', 'broken leg', '05-01-2023',789);

insert into health_record (rID, descript, health_status, disease, date, pID)
values (124, 'patient has covid-19', 'alive', 'covid-19', '03-28-2023',456);


-- HOSPITAL INVOICES --
insert into invoice (record, amount, invId, pId)
values ('fed 4x, stayed 2 days', 1000,315,635);

insert into invoice (record, amount, invId, pId)
values ('received x-rays, fed 10x, stayed 5 days', 6500,786,124);

insert into invoice (record, amount, invId, pId)
values ('fed 3x, stayed 6 days', 4750,641,785);

insert into invoice (record, amount, invId, pId)
values ('fed 2x, stayed 1 day, received surgery', 3450,874,789);

insert into invoice (record, amount, invId, pId)
values ('fed 14x, stayed 7 days', 9825,124,456);


-- RELATION TABLE INSERTS --

-- MONITOR --
insert into monitor(duration, physID, pID)
values (5, 712, 124);

insert into monitor(duration, physID, pID)
values (2, 345, 456);

insert into monitor(duration, physID, pID)
values (3, 978, 789);

insert into monitor(duration, physID, pID)
values (2, 841, 785);

insert into monitor(duration, physID, pID)
values (1, 841, 635);

-- ORDERS --
insert into orders(date, iCode, physID, pID)
values ('04-16-2023', 612, 841, 635);

insert into orders(date, iCode, physID, pID)
values ('04-29-2023', 161, 712, 124);

insert into orders(date, iCode, physID, pID)
values ('04-19-2023',723,841,785);

insert into orders(date, iCode, physID, pID)
values ('05-01-2023',124,978,789);

insert into orders(date, iCode, physID, pID)
values ('03-28-2023',251,345,456);

-- EXECUTION --
insert into execution(iCode, nID, pID, date, hstatus)
values (124,786,789,'05-01-2023','patient is stable');

insert into execution(iCode, nID, pID, date, hstatus)
values (612,486,635,'04-16-2023','patient is stable');

insert into execution(iCode, nID, pID, date, hstatus)
values (251,453,456,'03-28-2023','patient is stable');

insert into execution(iCode, nID, pID, date, hstatus)
values (723,687,785,'04-19-2023','patient is stable');

insert into execution(iCode, nID, pID, date, hstatus)
values (161,157,124,'04-29-2023','patient\'s condition has worsened');

-- MEDICATE --
insert into medicate (medication, nID, pID)
values ('tylenol',786,124);

insert into medicate (medication, nID, pID)
values ('advil',486,635);

insert into medicate (medication, nID, pID)
values ('excedrin',453,785);

insert into medicate (medication, nID, pID)
values ('morphine',687,789);

insert into medicate (medication, nID, pID)
values ('bayer',157,456);

-- HOSPITALIZATION
insert into hospitalization (nights, roomNum, pId)
values (3,001,124);

insert into hospitalization (nights, roomNum, pId)
values (15,002,635);

insert into hospitalization (nights, roomNum, pId)
values (11,003,785);

insert into hospitalization (nights, roomNum, pId)
values (1,004,789);

insert into hospitalization (nights, roomNum, pId)
values (32,005,456);

-- ROOMCHARGE --
insert into roomCharge (roomNum, fee)
values (001,1500);

insert into roomCharge (roomNum, fee)
values (002,7000);

insert into roomCharge (roomNum, fee)
values (003,5000);

insert into roomCharge (roomNum, fee)
values (004,500);

insert into roomCharge (roomNum, fee)
values (005,15000);

-- INSTRUCTIONCHARGE --
insert into instructionCharge (iCode, fee)
values (161, 100);

insert into instructionCharge (iCode, fee)
values (612, 300);

insert into instructionCharge (iCode, fee)
values (723,50);

insert into instructionCharge (iCode, fee)
values (124,700);

insert into instructionCharge (iCode,fee)
values (251,1500);

-- PAYMENT --
insert into payment (amount, pID, invID)
values (5000,124,786);

insert into payment (amount, pID, invID)
values (8000,635,315);

insert into payment (amount, pID, invID)
values (6000,785,641);

insert into payment (amount, pID, invID)
values (700,789,874);

insert into payment (amount, pID, invID)
values (20000,456,124);