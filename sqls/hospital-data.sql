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
values (124, 'patient has bronchitis', 'alive', 'Bronchitis', '03-28-2023',456);


-- HOSPITAL INVOICES --
