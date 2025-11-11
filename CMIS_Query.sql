
CREATE DATABASE cmis; 
use cmis;


CREATE TABLE User_login (user_id varchar(10) not null primary key, password varchar(25));

-- insert into user_login(user_id,password) values("ANP-3634", "12345"),("ANP-3754","123452@Pa");
-- insert into user_login(password, user_id) values("123", "ANP-1234");
-- insert into user_login(user_id, password) values("123", "ANP-1234");

-- insert into user_login values("anp-123","1234"); 

-- delete from user_login where user_id = "123";

-- delete from cmis.user_login;

-- drop table cmis.user_login;

SELECT * FROM cmis.user_login;

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


CREATE TABLE student_fee_contribution(
fee_cont_id varchar(15) primary key,
fee_id varchar(50),
student_id varchar(11) not null,
amount_paid float not null
);



CREATE TABLE courses (
course_id varchar(15) primary key,
course_code varchar(30) not null,
course_model varchar(15) not null,
duration varchar(20) not null,
ilt_hours int not null,
self_learning_hours int not null,
toc varchar(200),
course_status varchar(30),
tech_stack varchar(200),
class_pattern varchar(50),
course_outcome varchar(200) 
);


CREATE TABLE batches (
batch_id varchar(10) primary key,
batch_code varchar(10),
batch_size int not null,
batch_trainer_map_id varchar(20) not null,
batch_start_date date not null,
batch_end_date date not null,
batch_status varchar(15) ,
course_id varchar(15) 


);


CREATE TABLE batch_trainer_map (

batch_trainer_map_id varchar(20) primary key,
batch_id varchar(10) not null,
trainer_id varchar(10) not null,
trainer_roll_in_batch varchar(150) not null
);




















-- CRUD
-- CREATE
-- READ
-- UPDATE
-- DELETE

-- CTRL + / for commenting 