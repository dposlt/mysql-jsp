CREATE DATABASE beneplus;
CREATE TABLE phone_number (
 ID int NOT NULL UNIQUE AUTO_INCREMENT,
 number varchar(50) NOT NULL,
 date DATETIME NOT NULL,
 PRIMARY KEY (ID)
);

INSERT INTO phone_number (number, date) VALUES ('777333222',NOW());