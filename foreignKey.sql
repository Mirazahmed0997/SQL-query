
SELECT *FROM users

SELECT *FROM post

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
)

INSERT INTO users(userName) VALUES
    ('akash'),
    ('miraz'),
    ('nodi'),
    ('brishty');


 

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES users(id)
)

INSERT INTO post(title, user_id) VALUES
    ('Hello there', 2),
    ('nice', 1),
    ('cloudy', 4),
    ('weather', 4);

INSERT INTO post(id, title, user_id) VALUES
    (5,'this is a post',NULL);


ALTER Table post
    alter COLUMN user_id DROP NOT NULL;

-- inner join
SELECT * FROM post 
    JOIN users on post.user_id= users.id 

-- LEFT JOIN

SELECT * FROM post 
   LEFT JOIN users on post.user_id= users.id 

-- RIGHT JOIN
SELECT * FROM post 
   RIGHT JOIN users on post.user_id= users.id 



