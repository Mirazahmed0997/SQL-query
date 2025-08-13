

SELECT *from employees1

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS 
$$
    SELECT count(*) FROM employees1
$$


CREATE Function dlt_emp_bt_id(emp_id INT)
RETURNS void
LANGUAGE SQL
AS 
$$
    DELETE FROM employees1 WHERE employee_id=emp_id;
$$

SELECT dlt_emp_bt_id(18)

SELECT emp_count()

