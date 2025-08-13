
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);


INSERT INTO orders (customer_id, order_date, total_amount)
VALUES
    (1, '2021-01-05', 100.50),
    (2, '2021-01-01', 200.75),
    (3, '2021-01-08', 150.25),
    (1, '2021-01-15', 300.00),
    (3, '2021-01-25', 100.50),
    (2, '2021-01-26', 500.75),
    (1, '2021-02-01', 120.90),
    (3, '2021-02-03', 250.50),
    (1, '2021-02-05', 180.25);


SELECT *FROM orders;

SELECT customer_id,count(*),sum(total_amount) FROM orders
    GROUP BY customer_id
    HAVING count(*) > 2

SELECT extract(MONTH from order_date) as month,count(order_id),sum(total_amount) from orders 
    WHERE extract(YEAR from order_date)=2022
    GROUP BY month

