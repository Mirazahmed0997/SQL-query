

SHOW timezone

SELECT now()::DATE;


SELECT now()::TIME;

CREATE TABLE timeZ(ts TIMESTAMP without TIME zone,tsz TIMESTAMP with TIME zone);

INSERT INTO timeZ VALUES('2015-01-12 10:45:00','2015-01-12 10:45:00')

SELECT*FROM timeZ

SELECT CURRENT_DATE;

SELECT to_char(now(), 'yyyy/mm/dd')


SELECT to_char(now(), 'Month')

SELECT CURRENT_DATE - INTERVAL '1 month 2 day'

SELECT age(CURRENT_DATE,'1997-02-08')

SELECT *, age(CURRENT_DATE,dob)from student

SELECT EXTRACT (day FROM '2025-01-25'::DATE)


SELECT 1::BOOLEAN

