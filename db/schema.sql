CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers (
	burgerID INTEGER(10) AUTO_INCREMENT NOT NULL,
	burgerName VARCHAR(30) NOT NULL,
	devoured BOOL,
	date TIMESTAMP,
	PRIMARY KEY (burgerID)
	)
	