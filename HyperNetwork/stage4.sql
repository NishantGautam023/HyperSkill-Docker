-- if you use Adminer, make sure to use container-name as server
-- i.e. hyper-postgres:5432
-- then create table graphically and insert a record with 'New Item'
CREATE TABLE users
(
    id INT PRIMARY KEY,
    user_name VARCHAR(99)
);
INSERT INTO users (id, user_name) VALUES (99, 'hyper-user');