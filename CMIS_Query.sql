
CREATE DATABASE cmis; 
use cmis;


CREATE TABLE User_login (user_id varchar(10) not null primary key, password varchar(25));
insert into user_login(user_id,password) values("ANP-3634", "12345");

ALTER TABLE user_login ADD FOREIGN KEY (user_id) REFERENCES users(user_id);


CREATE TABLE users(
user_id varchar(10) primary key, 
fullname varchar(25) not null, 
contact_no varchar(15) not null, 
registered_mail varchar(50) not null, 
deparment_id varchar(25) not null, 
job_role varchar(25) not null, 
reporting_to varchar(10), 
employee_status varchar(20),
base_location varchar(20),
member_since date,
assigned_centers_id varchar(50)
);

# inserting the values into users table
INSERT INTO users (
user_id, 
fullname, 
contact_no, 
registered_mail, 
deparment_id, job_role, 
reporting_to, employee_status, 
base_location, member_since, 
assigned_centers_id)
values ("ANP-3634","BolluPavanKumar",6292190041,"bollu.kumar@anudip.org",
"Deep-Tech","Trainer","ANP-D1243","On-contract","Telangana",'2024-06-15',"Madhapur--accenture");




CREATE TABLE students (
student_id varchar(11) primary key,
std_name varchar(30) not null,
std_phone varchar(15) not null,
phone_status varchar(50),
email varchar(30) not null,
dob date not null,
gender char not null,
father_name varchar(30) not null,
address varchar (200) not null,
center_code varchar(50) not null,
reffered_by varchar(10) not null,
disability_status varchar (20),
disability_details varchar(100),
id_proof_type varchar(50) not null,
id_proof_number varchar(50) not null,
online_registration_no int not null,
cv_file varchar(200),
std_education_id varchar(15) not null,
created_by varchar(10) not null,
fee_cont_id varchar(15) not null,
course_id varchar(15) not null

);

INSERT INTO students
(student_id, std_name, 
std_phone, phone_status, 
email, dob, 
gender, father_name, 
address, center_code, 
reffered_by, disability_status, 
disability_details, id_proof_type, 
id_proof_number, online_registration_no, 
cv_file, std_education_id, 
created_by, fee_cont_id, 
course_id
) values ("AF04969243","ChandraSekhar",
"9652395228","Verfied",
"kattachadrasekhar613@gamil.com",'2003-08-05',
'M',"balaraju",
"kakinada--andraprasesh","ACC-Madhapur",
"ANP-1234","NA",
"NA","aadhar",
"1234 3214 7894 4569",10211658,
"","E001",
"ANP-1234","N201287004764",
"ANP-D1439"
);

ALTER TABLE students ADD FOREIGN KEY (std_education_id) REFERENCES student_edu_details(std_education_id);
ALTER TABLE students ADD FOREIGN KEY (fee_cont_id) REFERENCES student_fee_contribution(fee_cont_id);
ALTER TABLE students ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);
ALTER TABLE students ADD FOREIGN KEY (reffered_by) REFERENCES users(user_id);
ALTER TABLE students ADD FOREIGN KEY (created_by) REFERENCES users(user_id);

CREATE TABLE student_edu_details(
std_education_id varchar(15) primary key,
student_id varchar(11) not null,
highest_qualification varchar(50) not null,
marks float not null,
institution_name varchar(100) not null,
specilization varchar(50),
pass_year year
);

INSERT INTO student_edu_details
(std_education_id, student_id, 
highest_qualification, marks, 
institution_name, specilization, 
pass_year)values("E001","AF04969243",
"B-Tech",7.5,"Kakinada_institution_of_eng_and_tech","AI_DS",'2025');

ALTER TABLE student_edu_details ADD FOREIGN KEY (student_id) REFERENCES students(student_id);


CREATE TABLE student_fee_contribution(
fee_cont_id varchar(15) primary key,
student_id varchar(11) not null,
amount_paid float not null
);

INSERT INTO student_fee_contribution(
fee_cont_id,student_id,amount_paid
) values(
"N201287004764",
"AF04969243",
2000.00
);




CREATE TABLE courses (
course_id varchar(15) primary key,
course_code varchar(30) not null,
course_model varchar(15) not null,
duration int not null,
ilt_hours int not null,
self_learning_hours int not null,
toc varchar(200),
course_status varchar(30),
tech_stack varchar(200),
class_pattern varchar(50),
course_outcome varchar(200) 
);

INSERT INTO courses (
course_id,course_code,
course_model,duration,
ilt_hours,self_learning_hours,
toc,course_status,
tech_stack,class_pattern,
course_outcome
) values (
"DANLC","Data Analytics (No + Low Code)",
"Center", 320,
272,48,
"Data visualization - Excel & Power BI, Python, SQL, MySQL,Soft Skill,Tech orientation ,GenAI","Active",
"Data visualization - Excel & Power BI, Python, SQL, MySQL,Soft Skill,Tech orientation ,GenAI","2 hours domain 1 hour Softskills",
"Data Analyst MIS Executive Jr. Python Developer"
);



CREATE TABLE batches (
batch_code varchar(10) primary key,
batch_id varchar(10),
batch_size int not null,
batch_trainer_map_id varchar(20) not null,
batch_start_date date not null,
batch_end_date date not null,
batch_status varchar(15) ,
course_id varchar(15) 
);

INSERT INTO batches(
batch_code,batch_id,
batch_size,batch_trainer_map_id,
batch_start_date,batch_end_date,
batch_status,course_id
) values (
"ANP-D1439","DANLC",
40,"DANLC3634",
'2025-07-29','2026-01-27',
"Running","DANLC"
);

ALTER TABLE batches ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);

CREATE TABLE batch_trainer_map (

batch_trainer_map_id varchar(20) primary key,
batch_code varchar(10) not null,
trainer_id varchar(10) not null,
trainer_roll_in_batch varchar(150) not null
);
INSERT INTO batch_trainer_map(
batch_trainer_map_id,batch_code,
trainer_id,trainer_roll_in_batch
) values (
"DANLC3634","ANP-D1439",
"ANP-3634","Domain Trainer"
);

ALTER TABLE BATCH_TRAINER_MAP RENAME column BATCH_CODE TO  batch_code;
ALTER TABLE batch_trainer_map ADD FOREIGN KEY (batch_code) REFERENCES batches(batch_code);
ALTER TABLE batch_trainer_map ADD FOREIGN KEY (trainer_id) REFERENCES users(user_id);




-- CRUD
-- CREATE
-- READ
-- UPDATE
-- DELETE

-- CTRL + / for commenting 



-- insert into user_login(password, user_id) values("123", "ANP-1234");
-- insert into user_login(user_id, password) values("123", "ANP-1234");

-- insert into user_login values("anp-123","1234"); 

-- delete from user_login where user_id = "123";

-- delete from cmis.user_login;

-- drop table cmis.user_login;