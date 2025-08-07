-- Active: 1754609574546@@127.0.0.1@5432@ph
SELECT * FROM person1;

ALTER TABLE person1
    ADD COLUMN email VARCHAR(50) NOT NULL;

    INSERT INTO person1 VALUES(1,'test',45,'test@gmail.com');