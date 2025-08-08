-- Active: 1754609574546@@127.0.0.1@5432@ph
SELECT * FROM person1;

ALTER TABLE person1
    ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

    INSERT INTO person1 VALUES(2,'test2',45,'test2@gmail.com');

    ALTER TABLE person1
    DROP COLUMN email ;


    alter Table person1
        RENAME COLUMN age to user_age;

    alter TABLE person1
        alter COLUMN user_name  TYPE VARCHAR(80)

    alter Table person1
        alter COLUMN user_age set NOT NULL;   


    alter Table person1
        alter COLUMN user_age DROP NOT NULL;    