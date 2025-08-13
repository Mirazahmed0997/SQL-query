
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES department(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- DROP TABLE employees;


INSERT INTO department (department_name) VALUES
('HR'),
('Marketing'),
('Finance'),
('IT'),
('Sales'),
('Engineering'),
('Customer Support'),
('Administration'),
('Research'),
('Quality Assurance');



INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('John Doe', 1, 60000.00, '2022-01-10'),
('Jane Smith', 2, 75000.50, '2021-05-25'),
('Bob Johnson', 3, 80000.75, '2020-08-12'),
('Alice Williams', 4, 90000.25, '2019-08-03'),
('David Lee', 5, 65000.50, '2020-02-20'),
('Sara Brown', 6, 75000.80, '2021-09-14'),
('Mike Miller', 7, 68000.35, '2022-03-18');


SELECT *FROM department

SELECT *FROM employees

SELECT *FROM employees
    JOIN department ON employees.department_id = department.department_id;

SELECT *FROM employees
    JOIN department USING(department_id);

SELECT department_name,round(AVG(salary))  FROM employees
        JOIN department USING(department_id)
        GROUP BY department_name

SELECT department_name,count(department_id)  FROM employees
        JOIN department USING(department_id)
        GROUP BY department_name

SELECT department_name,round(AVG(salary)) as avg_salary FROM employees
        JOIN department USING(department_id)
        GROUP BY department_name
        ORDER BY avg_salary DESC
        LIMIT 1;

SELECT  extract(YEAR FROM hire_date) as Hire_Year ,count(*) FROM employees
    GROUP BY Hire_Year;
