--Q1 creating a schema and set correct search path

create schema nairobi_academy;

set search_path to nairobi_academy;

show search_path;

--Q2 create table students 

create table students (
	student_id int primary key,
	first_name varchar(50) not null,
	last_name varchar(50)  not null,
	gender varchar(1),
	date_of_birth date,
	class varchar(10),
	city varchar(50) );

--Q3 create table subjects

create table subjects (
	subject_id int primary key,
	subject_name varchar(100) not null unique, 
	department varchar(50),
	teacher_name varchar(100),
	credits int );

--Q4 create table exam_results

create table exam_results(
	result_id int primary key,
	student_id int not null,
	subject_id int not null,
	marks int not null, 
	exam_date date,
	grade varchar(2) );

--Q5 add a column phone_number
alter table students
add phone_number varchar(20);


--Q6 rename column
alter table subjects
rename column credits to credit_hours;

--Q7 delete a column 
alter table students
drop column phone_number;

--SECTION B DML

--Q8 insert records to students table 

insert into students (student_id, first_name, last_name, gender, date_of_birth , class, city)
values
('1','Amina', 'Wanjiku', 'F', '2008-03-12', 'Form 3', 'Nairobi'),
('2','Brian', 'Ochieng', 'M', '2007-07-25', 'Form 4', 'Mombasa'),
('3','Cynthia', 'Mutua', 'F', '2008-11-05', 'Form 3', 'Kisumu'),
('4','David', 'Kamau', 'M', '2007-02-18', 'Form 4', 'Nairobi'),
('5','Esther', 'Akinyi', 'F', '2009-06-30', 'Form 2', 'Nakuru'),
('6','Felix', 'Otieno', 'M', '2009-09-14', 'Form 2', 'Eldoret'),
('7','Grace', 'Mwangi', 'F', '2008-01-22', 'Form 3', 'Nairobi'),
('8','Hassan', 'Abdi', 'M', '2007-04-09', 'Form 4', 'Mombasa'),
('9','Ivy', 'Chebet', 'F', '2009-12-01', 'Form 2', 'Nakuru'),
('10','James', 'Kariuki', 'M', '2008-08-17', 'Form 3', 'Nairobi');


-- Q9 insert records to subjects

insert into subjects (subject_id, subject_name, department, teacher_name, credit_hours)
values
('1' , 'Mathematics' , 'Sciences' , 'Mr. Njoroge' , '4'),
('2' , 'English' , 'Languages' , 'Ms. Adhiambo' , '3'),
('3' , 'Biology' , 'Sciences' , 'Ms. Atieno' , '4'),
('4' , 'History' , 'Humanities' , 'Mr. Waweru' , '3'),
('5' , 'Kiswahili' , 'Languages' , 'Ms. Nduta' , '3'),
('6' , 'Physics' , 'Sciences' , 'Mr. Kamande' , '4'),
('7' , 'Geography' , 'Humanities' , 'Ms. Chebet' , '3'),
('8' , 'Chemistry' , 'Sciences' , 'Ms. Muthoni' , '4'),
('9' , 'Computer Studies' , 'Sciences' , 'Mr. Oduya' , '3'),
('10' , 'Business Studies' , 'Humanities' , 'Ms. Wangari' , '3');

--Q10 insert records to exam_results

insert into exam_results (result_id, student_id, subject_id, marks, exam_date, grade)
values 
('1' , '1' , '1' , '78' , '2024-03-15' , 'B'),
('2' , '1' , '2' , '85' , '2024-03-16' , 'A'),
('3' , '2' , '1' , '92' , '2024-03-15' , 'A'),
('4' , '2' , '3' , '55' , '2024-03-17' , 'C'),
('5' , '3' , '2' , '49' , '2024-03-16' , 'D'),
('6' , '3' , '4' , '71' , '2024-03-18' , 'B'),
('7' , '4' , '1' , '88' , '2024-03-15' , 'A'),
('8' , '4' , '6' , '63' , '2024-03-19' , 'C'),
('9' , '5' , '5' , '39' , '2024-03-20' , 'F'),
('10' , '6' , '9' , '95' , '2024-03-21' , 'A');

-- Q11 confirm all rows exist in each table


select * from exam_results;
select * from subjects;
select * from students;


update students
set city = 'Nairobi' where student_id = 5;

select * from students where student_id = 5;


update exam_results 
set marks = 59 where result_id = 5;

select * from exam_results where result_id = 5;

delete from exam_results 
where result_id = 9;



select * from students 
where class = 'Form 4';

select * from subjects
where department = 'Sciences';

select * from exam_results 
where marks >= 70;


select * from students 
where gender = 'F';

select * from students
where class = 'Form 3' and city = 'Nairobi';


select * from students
where class = 'Form 2' or class = 'Form 4';


select * from students 
where class in ('Form 2', 'Form 4');




select * from exam_results
where marks between 50 and 80;


select * from exam_results
where exam_date between '2024-03-15' and '2024-03-18';

select * from students 
where city in ('Nairobi', 'Mombasa', 'Kisumu');

select * from students 
where class not in ('Form 2', 'Form 3');

select * from students
where first_name like 'A%' or first_name like 'E%';

select * from subjects 
where subject_name like '%Studies%';



select count(*) from students 
where class = 'Form 3';

select count(*) from exam_results 
where marks >= 70;



select *, 
	case 
		when marks >= 80 then 'Distinction'
		when marks >= 60 then 'Merit'
		when marks >= 40 then 'Pass'
		else 'Fail'
	end as perfomance
from exam_results;


select (first_name, last_name, class),
	case 
		--when class = 'Form 3' or class = 'Form 4' then 'Senior'
		--when class = 'Form 4' then 'Senior'
		when class in ('Form 3', 'Form 4' ) then 'Senior'
		else 'Junior'
	end as student_level
from students;
	









































