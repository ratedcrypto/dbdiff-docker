CREATE DATABASE IF NOT EXISTS db2;

USE db2;

CREATE TABLE IF NOT EXISTS recipes (
    recipe_id INT NOT NULL,
    recipe_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (recipe_id)
);

CREATE TABLE IF NOT EXISTS ingredients (
    ingredient_id INT NOT NULL,
    ingredient_name VARCHAR(30) NOT NULL,
    ingredient_price INT NOT NULL,
    PRIMARY KEY (ingredient_id)
);
