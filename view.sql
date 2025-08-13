
SELECT *FROM employees1;

CREATE VIEW dept_avg_salary
AS
SELECT department_name,AVG(salary) FROM employees1 GROUP BY department_name



SELECT *from dept_avg_salary