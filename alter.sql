-- Active: 1754609574546@@127.0.0.1@5432@ph


CREATE TABLE person2(

id serial PRIMARY KEY,
user_name VARCHAR(20) NOT NULL,
age INT CHECK (age>=18)
)


SELECT * FROM person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

    INSERT INTO person2 VALUES(2,'test3',60,'test2@gmail.com');

    ALTER TABLE person2
    DROP COLUMN email ;


    alter Table person2
        RENAME COLUMN age to user_age;

    alter TABLE person2
        alter COLUMN user_name  TYPE VARCHAR(80)

    alter Table person2
        alter COLUMN user_age set NOT NULL;   


    alter Table person2
        alter COLUMN user_age DROP NOT NULL;    

    ALTER TABLE person2
        ADD constraint unique_person2_user_name UNIQUE(user_name);


    ALTER TABLE person2
        ADD constraint pk_person2_user_name PRIMARY KEY(user_name);


    ALTER TABLE person2
        DROP constraint unique_person2_user_name

    DROP TABLE person1;


    TRUNCATE TABLE person2;


    

    

    