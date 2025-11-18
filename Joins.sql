use cmis;

-- inner join 
SELECT * FROM STUDENTS;
SELECT student_id, std_name, std_phone, email FROM STUDENTS;


-- case: 1 
SELECT std.student_id, std.std_name, std.std_phone, std.email, 

stdedu.std_education_id, stdedu.highest_qualification, stdedu.institution_name, stdedu.marks 

FROM students  std  -- here std is used as a temporory name for the students table for processing this query

INNER JOIN student_edu_details stdedu -- here stdedu is used as a temporory name for the student_edu_details table for processing this query

ON  std.std_education_id = stdedu.std_education_id;

-- case: 2 

SELECT s.student_id, s.std_name ,s.address ,
e.institution_name, e.pass_year ,
c.course_code, c.toc
FROM students s 
INNER JOIN student_edu_details e
	ON 	s.std_education_id = e.std_education_id
INNER JOIN courses c
	ON s.course_id = c.course_id; 
    
    
-- case: 3

SELECT c.course_code , COUNT(*) AS student_count
from students s
INNER JOIN courses c ON s.course_id = c.course_id
GROUP BY c.course_id;



-- left join 
-- case : 1
SELECT s.student_id, s.std_name, e.highest_qualification 
FROM students s
LEFT JOIN student_edu_details e
	ON s.std_education_id = e.std_education_id;

-- case : 2 
select s.*
from students s
LEFT JOIN users u 
	on s.reffered_by = u.user_id
where u.user_id IS NULL;
    
    
    
-- FULL OUTER JOIN
SELECT u.fullname, s.std_name 
from users u
LEFT JOIN students s
ON  u.user_id = reffered_by

UNION 

SELECT u.fullname, s.std_name
FROM users u
right join students s
	ON u.user_id = s.reffered_by;






















