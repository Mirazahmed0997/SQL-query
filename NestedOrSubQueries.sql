
CREATE TABLE employees1 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);


INSERT INTO employees1 (employee_name, department_name, salary, hire_date) VALUES
('John Doe', 'HR', 60000, '2020-01-15'),
('Jane Smith', 'Marketing', 75000, '2021-05-20'),
('Bob Johnson', 'Finance', 80000, '2022-11-25'),
('Alice Williams', 'IT', 95000, '2019-08-13'),
('David Lee', 'Sales', 72000, '2021-03-30'),
('Sara Brown', 'Engineering', 105000, '2018-09-17'),
('Mike Miller', 'Customer Support', 50000, '2020-12-03'),
('Emily Davis', 'Administration', 58000, '2021-08-29'),
('Chris Wilson', 'Research', 110000, '2017-06-12'),
('Amy White', 'HR', 62000, '2021-07-25'),
('Jason Johnson', 'Marketing', 77000, '2022-02-11'),
('Robert Thomas', 'Finance', 83000, '2020-04-15'),
('Michael Harris', 'IT', 97000, '2019-10-05'),
('Matthew Clark', 'Sales', 74000, '2021-12-19'),
('Sophia Anderson', 'Engineering', 108000, '2018-11-27'),
('William Jackson', 'Customer Support', 52000, '2020-06-18'),
('Olivia Nelson', 'Administration', 59000, '2021-09-23'),
('Daniel White', 'Research', 112000, '2017-04-09');

SELECT *FROM employees1


SELECT *FROM employees1 WHERE salary>(SELECT MAX(salary) from employees1 
    where department_name='HR')


SELECT *, (SELECT sum(salary) from employees1) FROM employees1;
                         
SELECT department_name, sum(salary) FROM employees1
    GROUP BY department_name


                                                                                                                                                                                                                                                                                                         

