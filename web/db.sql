CREATE DATABASE beneplus;
CREATE TABLE phone_number (
 ID int NOT NULL UNIQUE AUTO_INCREMENT,
 number varchar(50) NOT NULL,
 date DATETIME NOT NULL,
 PRIMARY KEY (ID)
);

INSERT INTO phone_number (number, date) VALUES ('777333222',NOW());

CREATE TABLE access (
 ID int NOT NULL UNIQUE AUTO_INCREMENT,
 name varchar(50) NOT NULL,
 heslo varchar(100) NOT NULL, 
 date DATETIME NOT NULL,
 PRIMARY KEY (ID)
);

CREATE TABLE login (
 ID int NOT NULL UNIQUE AUTO_INCREMENT,
 user varchar(50) NOT NULL, 
 date DATETIME NOT NULL,
 PRIMARY KEY (ID)
);

INSERT INTO access (name,heslo) VALUES ('david','heslo');
