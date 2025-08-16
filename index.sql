

SELECT *FROM employees1;

CREATE INDEX idx_employees1_employee_name
on employees1(employee_name)

SELECT *from employees1 WHERE employee_name='David Lee'

SHOW data_directory;