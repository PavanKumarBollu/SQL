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









