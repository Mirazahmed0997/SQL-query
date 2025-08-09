create Table student (

    student_id SERIAL PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email varchar(100),
    dob DATE,
    blood_group VARCHAR(20),
    country  VARCHAR(20)
);

SELECT * FROM student;

SELECT * FROM student ORDER BY first_name ASC;
SELECT * FROM student ORDER BY age DESC;


SELECT first_name,email,age,country FROM student;


SELECT email as "Student Email" FROM student;


--  alter Table student
--         RENAME COLUMN las_name to last_name;


insert INTO student (first_name,last_name, age, grade, course, email, dob, blood_group, country) 

           VALUES ('Miraz','Ahmed',29,'A+','CSE','ahmedniraz87@gmail.com','1997-02-08','O+','Bangladesh'),
            ('Isty','Ahmed',30,'A-','CSE','isty@gmail.com','1997-08-09','A+','india'),
            ('siraz','Ahmed',22,'A+','CSE','siraz87@gmail.com','1997-06-08','B-','pakistan'),
            ('Bikash','Ahmed',29,'A+','EEE','siraz87@gmail.com','1997-06-08','B-','pakistan'),
            ('Riraz','Ahmed',35,'B+','CSE','riaz@gmail.com','1997-02-09','AB+','Bangladesh')



SELECT country from student ORDER BY country DESC;
SELECT DISTINCT country from student;

SELECT *FROM student first_name WHERE blood_group ='O+' AND country ='Bangladesh'

SELECT *FROM student first_name WHERE (country ='pakistan' OR country ='india') AND age=29

SELECT *FROM student WHERE age > 29 AND course = 'CSE';


-- fuctions (scalar)

SELECT upper(first_name), * from student;


SELECT concat(first_name,' ',last_name),* from student;


SELECT length(first_name), *from student;





-- fuctions (AGGREGATE)

SELECT avg(age) from student;


SELECT MIN(age) from student;

SELECT sum(age) from student;

SELECT count(*) from student;


SELECT COALESCE(email, 'Email not provided') as "Email" FROM student;


-- combination


SELECT max(LENGTH(first_name)) FROM student;





SELECT *FROM student 
    WHERE country != 'Bangladesh'

SELECT *FROM student
    WHERE email is NULL;













