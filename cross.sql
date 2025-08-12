
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT ;
)

create TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
)


-- DROP TABLE departments;

SELECT *FROM employees;

SELECT *FROM departments;


INSERT INTO employees (emp_name,dept_id) VALUES 
        ('Miraz', 101),
        ('isty', 102),
        ('Partho', 103);

INSERT INTO departments  VALUES 
        (101,'Operations'),
        (102,'Sales'),
        (103,'Managment');


-- CROSS JOIN

SELECT *FROM employees
    CROSS JOIN departments;

-- NATURAL JOIN

SELECT *FROM employees
    NATURAL JOIN departments;



  

