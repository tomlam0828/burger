DROP DATABASE IF EXISTS burger_db;
CREATE DATABASE burger_db;

USE burger_db;

CREATE TABLE burgers (
	id INTEGER(255) AUTO_INCREMENT NOT NULL,
    burger_name VARCHAR(255),
    devoured BOOLEAN,
    PRIMARY KEY(id)
);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Double Cheese Burger", false);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Bacon Cheese Burger", false);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Cheese Burger", true);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Triple Cheese Burger", true);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Vegan Burger", true);

INSERT INTO burgers (burger_name, devoured)
VALUES ("Chicken Burger", false);
