-- Find the address of all patients whose names start with the letter K. 
select  from;

select * from;

select * from;

select * from;

select * from;

select * from;

-- Three join queries ----------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Find the disease(s) of the patient "John Jones"
select name, disease 
from patient
join health_record
on patient.pID = health_record.pID
where patient.name = "John Jones";


-- Find the address of the patient residing in hospital room 1
select roomNum, address
from room
join patient
on room.pID = patient.pID
where room.roomNum = 1;

-- Find the desciptions of all instructions given by the Physician "Alexander Fleming"
select name, descript 
from physician
join instruction
on physician.physID = instruction.physID
where pname = "Alexander Fleming";

-- Three Aggregation Queries ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Select count of people staying in room number "357"
select * from;

select * from;

select * from;

-- Three Nested Queries ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Find all patients with pneumonia being treated by doctor XXX
select patient.name as "Name", disease 
from patient 
where patient.name in (select name from patient)
and disease = 'Pneumonia';

select * from;

select * from;


-- 3 Views ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Staff Contact List View.
create view staff_list as
select pname, phone, expertise
from physician

-- Medication View. 
create view medicate_patient as
select patient.name, medication, roomNum 
from medicate 
join patient on patient.pID = medicate.pID 
join hospitalization on medicate.pID = hospitalization.pID

-- Execution View
create view execute_instructions as
select nurse.nname, date, iCode, patient.name, roomNum,
from execution 
join nurse on execution.nID = nurse.nID
join patient on patient.pID = execution.pID 
join hospitalization on patient.pID = hospitalization.pID


-- 3 Triggers ----------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER //
create trigger payInvoice
after insert on payment
 
for each row
begin
  IF New.name = "Friendly" THEN
    insert into Likes select New.id, Highschooler.id from Highschooler 
    where Highschooler.grade = New.grade;
  END IF;
end //
DELIMITER;


-- 2 Transactions ----------------------------------------------------------------------------------------------------------------------------------------------------------------


