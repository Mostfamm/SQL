USE sql_intro;


-- CREATE TABLE pokemon_type(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50)
-- )


-- CREATE TABLE type(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50)
-- )

-- CREATE TABLE trainer(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50),
--     town_id INT,
--     FOREIGN KEY(town_id) REFERENCES town(id) 
-- )


-- CREATE TABLE town(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50)
-- )

-- CREATE TABLE pokemon(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50),
--     type_id INT,
--     height FLOAT DEFAULT 0, 
--     weight FLOAT DEFAULT 0, 
--     FOREIGN KEY(type_id) REFERENCES type(id)
-- );

-- CREATE TABLE pokemon_trainer(
--     pokemon_id INT,
--     trainer_id INT,
--     FOREIGN KEY(pokemon_id) REFERENCES type(id),
--     FOREIGN KEY(trainer_id) REFERENCES type(id)
-- );

