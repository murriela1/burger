CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers (
	burgerID INTEGER(10) AUTO_INCREMENT NOT NULL,
	burgerName VARCHAR(30) NOT NULL,
	devoured BOOL,
	date TIMESTAMP,
	PRIMARY KEY (burgerID)
	)

INSERT INTO burgers (burgerName) VALUES ("cheeseburger");
INSERT INTO burgers (burgerName) VALUES ("bacon cheeseburger");
INSERT INTO burgers (burgerName) VALUES	("turkey burger");
INSERT INTO burgers	(burgerName) VALUES ("pizza burger");
INSERT INTO	burgers (burgerName) VALUES ("cheeseburger deluxe");
INSERT INTO	burgers (burgerName) VALUES ("cowboy burger");
INSERT INTO burgers (burgerName) VALUES ("angus burger");
INSERT INTO	burgers (burgerName) VALUES ("veggie burger");
INSERT INTO burgers (burgerName) VALUES ("buffalo burger");
INSERT INTO burgers (burgerName) VALUES ("bbq burger");        