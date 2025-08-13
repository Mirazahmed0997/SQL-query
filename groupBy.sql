

SELECT *FROM student;


SELECT country,count(*),avg(age) FROM student
    GROUP BY country


SELECT country,avg(age) FROM student
    GROUP BY country
        HAVING avg(age)<30

SELECT EXTRACT(YEAR FROM dob),COUNT(*) FROM student
    GROUP BY dob
      

 



 