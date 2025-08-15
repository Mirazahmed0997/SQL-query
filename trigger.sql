

-- CREATE Trigger TRIGGER
-- BEFORE DELETE
-- on USER
-- for each row
-- EXECUTE FUNCTION function_name()

CREATE TABLE my_user(
    user_name VARCHAR(50),
    email VARCHAR(50)
    -- created_AT TIMESTAMP
);



INSERT INTO my_user VALUES 
('Miraz','ahmedmiraz87@gmail.com'),
('Isty','Isty@gmail.com')



SELECT *FROM my_user;
-- DROP Table my_user;









CREATE TABLE recycle(
    deleted_user VARCHAR(50),
    deleted_email VARCHAR(50),
    deleted_AT TIMESTAMP
);

SELECT *FROM recycle;
-- DROP TABLE recycle;

-- TRIGGER FUNCTION

CREATE or REPLACE FUNCTION deleted_user_data()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
        BEGIN
            INSERT INTO recycle VALUES(OLD.user_name,OLD.email,now());
            RAISE NOTICE 'Recycle Bin Created';
            RETURN OLD;
        END
   $$



-- TRIGGER FUNCTION CALL

CREATE or REPLACE TRIGGER recyle_bin_data
BEFORE DELETE
on my_user
for EACH ROW
EXECUTE FUNCTION deleted_user_data();

-- DELETE FROM my_user WHERE user_name='Isty';



