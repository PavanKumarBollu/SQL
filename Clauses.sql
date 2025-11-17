-- WHERE 
-- HAVING
-- LIMIT
-- TOP
-- .
-- .
-- ETC

-- SELECT * FROM employee WHERE EMPLOYEEID = 106;
-- select emailid from employee where employeeid = 106;
-- select emailid, password from employee where employeeid = 106;
-- select * from employee where emailid = "aarav.sharma@example.com";
-- select * from employee where emailid = "siya.yadav@example.com";


-- select * from employee;
-- SELECT * FROM employee limit 3 ;
-- SELECT * FROM employee where EmployeeId >= 110 limit 3 ;

-- select TOP 5 * from employee; -- works in oracle DB


# reading the unique values from the column 
-- select distinct state from address;
-- select distinct city from address;

-- select * from patientinsurance where InNetworkCoPay > 15; 
-- select * from patientinsurance where InNetworkCoPay between 14 and 21;  


select * from address where city like "s%";
-- select * from address where city like "p%";
--  select * from address where city like "%d";  
--  select * from disease where name like "_e%"; 
--  select * from disease where name like "%e_"; 


-- boolean operators
-- AND OR BETWEEN 
-- Agrregate functions


-- AND 
select * from patientinsurance ;
select * from patientinsurance where providername = "HealthCo" ; 
select * from patientinsurance where providername = "HealthCo"  AND outnetworkcopay = 30;
select * from patientinsurance where providername = "HealthCo"  AND outnetworkcopay = 40;



-- OR 
select * from patientinsurance ;
select * from patientinsurance where providername = "HealthCo" or providername = "CarePlus" ;


-- the following query will give us some unwanted records to avoid those use the next following query
-- select * from patientinsurance where providername = "HealthCo" or providername = "CarePlus" and outnetworkcopay = 40;


select * from patientinsurance where (providername = "HealthCo" or providername = "CarePlus") and outnetworkcopay = 40 ;
select * from patientinsurance where outnetworkcopay = 40 and (providername = "HealthCo" or providername = "CarePlus");


-- between 
select * from patientinsurance;
select * from patientinsurance where PatientId between 3 and 9;


-- AGGREGATIVE FUNCTIONS 
-- count min max avg sum 

-- Count
select count(PatientId) from patientinsurance ; 
select count(ModifiedOn) from patientinsurance ; 

select count(*) from patientinsurance where outnetworkcopay = 40 and (providername = "HealthCo" or providername = "CarePlus");
select count(*) from patientinsurance where providername = "HealthCo" or providername = "CarePlus" and outnetworkcopay = 40;

-- SUM 
select sum(InNetworkCoPay) from patientInsurance;
select sum(InNetworkCoPay) from patientInsurance where patientId = 5 or patientId = 7;

-- AVG 
select avg(InNetworkCoPay) from patientInsurance;
select avg(InNetworkCoPay) from patientInsurance where patientId = 5 or patientId = 7;

-- Min 
select min(InNetworkCoPay) from patientInsurance;
select min(InNetworkCoPay) from patientInsurance where patientId = 3 or patientId = 11;

-- max
select max(InNetworkCoPay) from patientInsurance;
select max(InNetworkCoPay) from patientInsurance where patientId = 5 or patientId = 7;


