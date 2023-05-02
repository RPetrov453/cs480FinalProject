select * from;

select * from;

select * from;

select * from;

select * from;

select * from;

-- Three join queries -- 

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

-- Three Aggregation Queries --

-- Select count of people staying in room number "357"
select * from;

select * from;

select * from;

-- Three Nested Queries
select * from;

select * from;

select * from;


-- 3 Views 



-- 3 Triggers
DELIMITER //
create trigger friendly_trigger
before insert on Highschooler 
for each row
begin
  IF New.name = "Friendly" THEN
    insert into Likes select New.id, Highschooler.id from Highschooler 
    where Highschooler.grade = New.grade;
  END IF;
end //
DELIMITER ;


-- 2 Transactions


