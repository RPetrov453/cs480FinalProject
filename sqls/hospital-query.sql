-- Find the address of all patients whose names start with the letter M. 
select name, address 
from patient
where name like 'M%';

-- Select any patients who were not listed as stable after having orders executed on them, if they exist
select name, hstatus 
from patient
join execution
on patient.pID = execution.pID
where hstatus != 'patient is stable';

-- Select patients not being treated with advil, tylenol, or bayer
select name, medication 
from patient
join medicate
on patient.pID = medicate.pID
where medication != 'tylenol' and medication != 'advil' and medication != 'bayer';

-- Select any patients with invoices under $5000
select name, amount 
from patient
join invoice
on patient.pID = invoice.pID
where amount < 5000;

-- Select all patients whose health record is not 'stable'
select name, health_status
from patient
join health_record
on patient.pID = health_record.pID
where health_status != 'stable';

-- Select patients who are in rooms that cost over $400 per night
select name, room.roomNum, fee
from patient
join hospitalization
on patient.pID = hospitalization.pID
join room
on hospitalization.roomNum = room.roomNum
where room.fee > 400;

-- Three join queries ----------------------------------------------------------------------------------------------------------------------------------------------------------------

--  Find the disease(s) of the patient "John Jones"
select name, disease 
from patient
join health_record
on patient.pID = health_record.pID
where patient.name = "John Jones";


-- Find the name/address of the patient residing in hospital room 1
select patient.name, address, roomNum
from hospitalization
join patient
on hospitalization.pID = patient.pID
where hospitalization.roomNum = 001;

-- Find the desciptions of all instructions given by the Physician "Alexander Fleming"
select pname, descript 
from physician
join orders
on physician.physID = orders.physID
join instruction on instruction.iCode = orders.iCode
where pname = "Alexander Fleming";

-- Three Aggregation Queries ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Select the sum total $ of patients who owe more than $5000 in an invoice
select sum(amount)
from invoice
where amount > 5000;

-- Number of patients staying hospitalized for over 10 nights. 
select count(pID) as "Long-Stay Patients" 
from hospitalization
where nights > 10;

-- Select count of people with covid-19 at the hospital.
select count(name)
from patient
join health_record
on patient.pId = health_record.pId
where disease = 'covid-19';

-- Three Nested Queries ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Find all patients with pneumonia
select patient.name as "Name"
from patient 
where patient.pID in 
	(select pID
	from health_record
    where disease = 'pneumonia');

-- Find all patients that don't live in 7638 Hamilton Circle
-- Used for the sake of quarantine for diseases.
select name, address 
from patient
where name not in 
	(select name
     from patient
	 where address = '7638 Hamilton Circle');

-- Find physicians who haven’t given any orders. 
select pname
from physician
where physID NOT IN(
    select physID from orders);


-- 3 Views ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Staff Contact List View.
create view staff_list as
select pname, phone, expertise
from physician;

-- Medication View. 
create view medicate_patient as
select patient.name, medication, roomNum 
from medicate 
join patient on patient.pID = medicate.pID 
join hospitalization on medicate.pID = hospitalization.pID;

-- Execution View
create view execute_instructions as
select nurse.nname, date, iCode, patient.name, roomNum
from execution 
join nurse on execution.nID = nurse.nID
join patient on patient.pID = execution.pID 
join hospitalization on patient.pID = hospitalization.pID;


-- 3 Triggers ----------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Trigger to create a new basic invoice for a patient once they are entered into database.
DELIMITER //
create trigger new_invoice 
after insert on patient
for each row
begin
  IF New.pID not in (select pID from invoice) THEN
	SET @new_invID = (select invID from invoice order by id DESC limit 1) + 1;
    insert into invoice values ('New Hospitalization',0,new_invID, New.pID);
  END IF;
end //
DELIMITER ;

-- Trigger to hospitalize patients with covid-19 into Room 5 for atleast 10 days.
DELIMITER //
create trigger covid_patient
after insert on health_record 
for each row
begin
  IF New.disease = 'covid-19' THEN
    insert into hospitalization values (10, New.pID, 5);
  END IF;
end //
DELIMITER ;

-- Trigger to 
DELIMITER //
create trigger covid_patient
after insert on health_record 
for each row
begin
  IF New.disease = 'covid-19' THEN
    insert into hospitalization values (10, New.pID, 5);
  END IF;
end //
DELIMITER ;

-- Trigger to 


-- 2 Transactions ----------------------------------------------------------------------------------------------------------------------------------------------------------------

begin transaction remove_patient ;
set transaction read write; 
delete from patient
where patientID = 2

commit;
